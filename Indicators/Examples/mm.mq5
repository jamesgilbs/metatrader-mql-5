//+---------------------------------------------------------- -------------------+ 
//| PrevDaysHighLow_TEST.mq4 | 
//+---------------------------------------------------------- -------------------+ 
#property   description  "Desenha o mínimo/máximo do dia anterior." 
#property   indicator_buffers  8  //usado para desenhar 
#property   indicator_chart_window

#property   indicator_color1   Vermelho
#property   indicator_color2   Vermelho
#property   indicator_width1   2  
#property   indicator_width2   2


#property estrito 
//+------------------------------------------------------- -----------+ 
enum EnumDrawPrevDayHL
  {
   hoje, //mostra somente hoje dia 
   anterior, //mostra com 
   folga anterior //nenhum
  };

extern EnumDrawPrevDayHL ShowPrevDayHL=dia anterior; //Mostra alta e baixa do dia anterior?

//--- buffers do indicador 
double buff_prevdayhigh[];
double buff_prevdaylow[];
//+---------------------------------------------------------- -------------------+ 
//| Função de inicialização do indicador personalizado | 
//+---------------------------------------------------------- -------------------+ 
int  OnInit ()
  {
   SetIndexBuffer ( 0 ,buff_prevdayhigh);
   SetIndexStyle ( 0 , DRAW_LINE );
   SetIndexEmptyValue ( 0 , 0,0 );
   SetIndexLabel ( 0 , "alta dos dias anteriores" );

   SetIndexBuffer ( 1 ,buff_prevdaylow);
   SetIndexStyle ( 1 , DRAW_LINE );
   SetIndexEmptyValue ( 1 , 0,0 );
   SetIndexLabel ( 1 , "baixa dos dias anteriores" );

//---- 
   return ( INIT_SUCCEEDED );
  }

//+---------------------------------------------------------- -------------------+ 
//| Função de iteração do indicador personalizado | 
//+---------------------------------------------------------- -------------------+ 
int  OnCalculate ( const  int rates_total,       // tamanho da série temporal de entrada 
                 const  int prev_calculated,   // barras tratadas na chamada anterior 
                 const  datetime & time[ ],      // Tempo 
                 const  double & open[],        // Open 
                 const  double & high[],        // High 
                 const  double & low[],        // Baixo 
                 const  double & close[],       // Fechar 
                 const  long & tick_volume[],   // Tick Volume 
                 const  long & volume[],        // Real Volume 
                 const  int &spread[]) // Spread

  {
   estático  datetime timeD1= iTime ( _Symbol , PERIOD_D1 , 0 );
   // A entrada está desligada ou o timeframe é maior que H1 ==> não faz nada 
   se (ShowPrevDayHL==off || _Period > PERIOD_H1 ) return (rates_total);
   // Inicializa arrays 
   if (prev_calculated< 1 )
     {
      ArrayInitialize (buff_prevdayhigh, 0.0 );
      ArrayInitialize (buff_prevdaylow, 0.0 );
     }
   int inícioShift,endShift;
   // Um ​​novo dia 
   if (timeD1< iTime ( _Symbol , PERIOD_D1 , 0 ))
     {
      // Excluir histórico 
      startShift= iBarShift ( _Symbol , _Period , iTime ( _Symbol , PERIOD_D1 ,ShowPrevDayHL==hoje? 1 : 2 ));
      endShift= iBarShift ( _Symbol , _Period , iTime ( _Symbol , PERIOD_D1 ,ShowPrevDayHL==hoje? 0 : 1 ));
      for ( int i=startShift;i>endShift;i--)
        {
         buff_prevdayhigh[i]= 0.0 ;
         buff_prevdaylow[i]= 0.0 ;
        }
      // Definir nova hora D1 
      timeD1= iTime ( _Symbol , PERIOD_D1 , 0 );
     }
   // Indicador de desenho 
   startShift=prev_calculated< 1 ? iBarShift ( _Symbol , _Period , iTime ( _Symbol , PERIOD_D1 ,ShowPrevDayHL==hoje? 0 : 1 )):(rates_total-prev_calculated- 1 );
   for ( int i=startShift;i>- 1 ;i--)
     {
      buff_prevdayhigh[i]= iHigh ( _Symbol , PERIOD_D1 , iBarShift ( _Symbol , PERIOD_D1 , time[i])+ 1 );
      buff_prevdaylow[i]= iLow ( _Symbol , PERIOD_D1 , iBarShift ( _Symbol , PERIOD_D1 , time[i])+ 1 );
     }
   retorno (taxas_total);
  }

//+---------------------------------------------------------- -------------------+