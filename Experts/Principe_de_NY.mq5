//+------------------------------------------------------------------+
//|                                               Principe_de_NY.mq5 |
//|                                  Copyright 2021, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//|                                         JULIAN RODRIGUES VALÉRIO |
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
/*Um sinal de compra é gerado quando o preço atinge o Bollinger Band inferior e fecha dentro, 
por outro lado um sinal de venda é gerado quando o preço atinge o Bollinger Band superior e 
fecha dentro (20 periodos). Para filtrar os sinais, o Estocástico deve ser utilizado conforme o valor definido 
para os níveis superior e inferior, sendo eles 70 e 30 respectivamente. Assim é possível 
identificar quando o preço está sobrecomprado ou sobrevendido.*/

#include <Trade\Trade.mqh>

CTrade dayTrade;
input int Loss = 250;
input int Gain = 100;
input string Inicio="09:06"; //Horario de inicio(entradas);
input string Termino="17:30"; //Horario de termino(entradas);
input string Fechamento="17:45"; //Horario de fechamento de posições abertas(entradas);
input int Contratos = 1;
input int Media20 = 20;

MqlDateTime horario_inicio, horario_termino, horario_fechamento, horario_atual, dia;

bool OperacaoDiaria = false;
int barraoperacao;
bool posicaoAberta = false;

int OnInit()
  {
   dayTrade.SetExpertMagicNumber(2342);
   TimeToStruct(StringToTime(Inicio),horario_inicio);  //+-------------------------------------+
   TimeToStruct(StringToTime(Termino),horario_termino);       //| Conversão das variaveis para mql    |
   TimeToStruct(StringToTime(Fechamento),horario_fechamento);   
   
   EventSetTimer(1);
   
   if(horario_inicio.hour>horario_termino.hour || (horario_inicio.hour==horario_termino.hour && horario_inicio.min>horario_termino.min))
     {
      printf ( "Parametos de horarios invalidos!" );
      return INIT_FAILED;
     }
     
   if(horario_termino.hour>horario_fechamento.hour || (horario_termino.hour==horario_fechamento.hour && horario_termino.min>horario_fechamento.min))
     {
      printf("Parametos de horarios invalidos!");
      return INIT_FAILED;
     }
   
   return(INIT_SUCCEEDED);
  }



void OnTick()
  {
   
   if(HorarioFechamento()){ 
      OperacaoDiaria = false;
      dayTrade.PositionClose(_Symbol);
      posicaoAberta = false;
      barraoperacao = 0;
   } 
   
   //Calcular Estocastico Lento
   double KArray[];
   double DArray[];
   ArraySetAsSeries(KArray,true);
   ArraySetAsSeries(DArray,true);
   
   int Estocastico = iStochastic(_Symbol,PERIOD_CURRENT,10,3,3,MODE_SMA,STO_LOWHIGH);
   
   CopyBuffer(Estocastico,0,0,3,KArray);
   CopyBuffer(Estocastico,1,0,3,DArray);
   
   double kvalue0 = KArray[0];
   double dvalue0 = DArray[0];
   double kvalue1 = KArray[1];
   double dvalue1 = DArray[1];
   
   //Calcular Bandas de Bollinger
   
   double MiddleBandArray[];
   double UpperBandArray[];
   double LowerBandArray[];
   
   //Definição das bandas
   int BollingerDefinition = iBands(_Symbol,PERIOD_CURRENT,20,0,2,PRICE_CLOSE);
   
   //ordenando as bandas
   ArraySetAsSeries(MiddleBandArray, true);
   ArraySetAsSeries(UpperBandArray, true);
   ArraySetAsSeries(LowerBandArray, true);
   
   //Copiando preços p/ arrays
   CopyBuffer(BollingerDefinition, 0,0,3,MiddleBandArray);
   CopyBuffer(BollingerDefinition, 1,0,3,UpperBandArray);
   CopyBuffer(BollingerDefinition, 2,0,3,LowerBandArray);
      
   //Copiando valor da banda no ultimo candle 
   double MiddleBandValue1 = MiddleBandArray[1];
   double UpperBandValue1 = UpperBandArray[1];
   double LowerBandValue1 = LowerBandArray[1];
   
   //Copiando valor da banda no penultimo candle
   double MiddleBandValue2 = MiddleBandArray[2];
   double UpperBandValue2 = UpperBandArray[2];
   double LowerBandValue2 = LowerBandArray[2];
   Comment("Middle = ", MiddleBandArray[0], "\n", 
            "Upper = ", UpperBandArray[0], "\n",
            "Low = ", LowerBandArray[0], "\n");
   
   //Contar Candles
   static int contarCandle;
   MqlRates preco[];
   ArraySetAsSeries(preco,true);
   CopyRates(_Symbol, PERIOD_CURRENT,0,3,preco);
   static datetime ultimaVerificacaoTempo;
   datetime tempoCandleCorrente;
   tempoCandleCorrente = preco[0].time;
   if(tempoCandleCorrente != ultimaVerificacaoTempo){
      ultimaVerificacaoTempo = tempoCandleCorrente;
      contarCandle++;
   }
   
   //Verificar posições abertas
   for(int i=PositionsTotal()-1;i>=0;i--){
      if(PositionGetSymbol(i) == _Symbol && PositionGetInteger(POSITION_MAGIC)==dayTrade.RequestMagic()){
         posicaoAberta = true;
         break;
      }
   }
   
   //======= ABERTURA DE ORDENS ==============
   if(dia.day_of_week < 6  && OperacaoDiaria == false && HorarioEntrada() == true &&
    barraoperacao != contarCandle && contarCandle != barraoperacao+1 && posicaoAberta == false ){
   
      //======== ORDEM DE COMPRA ============  
      if(iLow(_Symbol,PERIOD_CURRENT,1) < LowerBandArray[1] && iClose(_Symbol,PERIOD_CURRENT,1) > LowerBandArray[1]){
         if(kvalue1 < 30 && dvalue1 < 30 && CheckMoneyForTrade(_Symbol,1,ORDER_TYPE_BUY)){
            dayTrade.Buy(Contratos,_Symbol,iClose(_Symbol,PERIOD_CURRENT,1));
            barraoperacao = contarCandle;
            posicaoAberta = true;
            //OperacaoDiaria = true;
         }
      }      
      
      //======== ORDEM DE VENDA ===========    
      if(iHigh(_Symbol,PERIOD_CURRENT,1) > UpperBandArray[1] && iClose(_Symbol,PERIOD_CURRENT,1) < UpperBandArray[1]){
         if(kvalue1 > 70 && dvalue1 > 70 && CheckMoneyForTrade(_Symbol,1,ORDER_TYPE_SELL)){            
            dayTrade.Sell(Contratos,_Symbol,iClose(_Symbol,PERIOD_CURRENT,1));
            barraoperacao = contarCandle;
            posicaoAberta = true;
            //OperacaoDiaria = true; 
         }
      }   
   }
  
   for (int i = PositionsTotal(); i>=0; i--){//Cataloga todas as operações abertas
      if(PositionGetSymbol(i)==_Symbol && PositionGetInteger(POSITION_MAGIC)==dayTrade.RequestMagic()){//Filtra pelo ativo atual
         //Compra
         if (PositionGetInteger(POSITION_TYPE) == POSITION_TYPE_BUY){//Filtra operações de compra
            if(PositionGetDouble(POSITION_PRICE_CURRENT) > (PositionGetDouble(POSITION_PRICE_OPEN)+Gain) ){
                  dayTrade.PositionClose(_Symbol);
                  posicaoAberta = false;
            }
            if(PositionGetDouble(POSITION_PRICE_CURRENT) < (PositionGetDouble(POSITION_PRICE_OPEN)-Loss) ){
               dayTrade.PositionClose(_Symbol);
               posicaoAberta = false;
            }
                        
           }
         }
         //Venda
         if (PositionGetInteger(POSITION_TYPE) == POSITION_TYPE_SELL){//Filtra somente operações de venda
            if(PositionGetDouble(POSITION_PRICE_CURRENT) < (PositionGetDouble(POSITION_PRICE_OPEN)-Gain)){//Calcula se excedeu a distância para mover o SL               
               dayTrade.PositionClose(_Symbol);
               posicaoAberta = false;
            }
            if(PositionGetDouble(POSITION_PRICE_CURRENT) > (PositionGetDouble(POSITION_PRICE_OPEN)+Loss) ){
                  dayTrade.PositionClose(_Symbol);
                  posicaoAberta = false;
            } 
            
         }
      } 
      
}

double NormalizarPreco(double Preco)
  {
   //--- Get the minimal price change
   double TickSize = SymbolInfoDouble(_Symbol, SYMBOL_TRADE_TICK_SIZE);

   //--- Return the price normalized
   if(TickSize == 0.0) {return(NormalizeDouble(Preco, _Digits));}

   //--- Return the price normalized and adjusted to the TICK SIZE
   
   return(NormalizeDouble(MathRound(Preco / TickSize ) * TickSize, _Digits));
}

  
bool HorarioEntrada()
      {
       TimeToStruct(TimeCurrent(),horario_atual);

      if(horario_atual.hour >= horario_inicio.hour && horario_atual.hour <= horario_termino.hour)
   {
      // Hora atual igual a de início
      if(horario_atual.hour == horario_inicio.hour)
         // Se minuto atual maior ou igual ao de início => está no horário de entradas
         if(horario_atual.min >= horario_inicio.min)
            return true;
         // Do contrário não está no horário de entradas
         else
            return false;
      
      // Hora atual igual a de término
      if(horario_atual.hour == horario_termino.hour)
         // Se minuto atual menor ou igual ao de término => está no horário de entradas
         if(horario_atual.min <= horario_termino.min)
            return true;
         // Do contrário não está no horário de entradas
         else
            return false;
      
      // Hora atual maior que a de início e menor que a de término
      return true;
   }
   
   // Hora fora do horário de entradas
   return false;
}


bool HorarioFechamento()
     {
      TimeToStruct(TimeCurrent(),horario_atual);     
     
     // Hora dentro do horário de fechamento
   if(horario_atual.hour >= horario_fechamento.hour)
   {
      // Hora atual igual a de fechamento
      if(horario_atual.hour == horario_fechamento.hour)
         // Se minuto atual maior ou igual ao de fechamento => está no horário de fechamento
         if(horario_atual.min >= horario_fechamento.min)
            return true;
         // Do contrário não está no horário de fechamento
         else
            return false;
      
      // Hora atual maior que a de fechamento
      return true;
   }
   
   // Hora fora do horário de fechamento
   return false;
}

bool CheckMoneyForTrade(string symb,double lots,ENUM_ORDER_TYPE type)
  {
//--- obtemos o preço de abertura
   MqlTick mqltick;
   SymbolInfoTick(symb,mqltick);
   double price=mqltick.ask;
   if(type==ORDER_TYPE_SELL)
      price=mqltick.bid;
//--- valores da margem necessária e livre
   double margin,free_margin=AccountInfoDouble(ACCOUNT_MARGIN_FREE);
   //--- chamamos a função de verificação
   if(!OrderCalcMargin(type,symb,lots,price,margin))
     {
      //--- algo deu errado, informamos e retornamos false
      Print("Error in ",__FUNCTION__," code=",GetLastError());
      return(false);
     }
   //--- se não houver fundos suficientes para realizar a operação
   if(margin>free_margin)
     {
      //--- informamos sobre o erro e retornamos false
      Print("Not enough money for ",EnumToString(type)," ",lots," ",symb," Error code=",GetLastError());
      return(false);
     }
//--- a verificação foi realizada com sucesso
   return(true);
  }
