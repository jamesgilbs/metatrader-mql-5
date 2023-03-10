//+------------------------------------------------------------------+
//|                                         EA_MaxMinDiaAnterior.mq5 |
//|                                                 Rafaelfvcs 2022. |
//|                        https://crieseurobocommql5.wordpress.com/ |
//+------------------------------------------------------------------+
#property copyright "Rafaelfvcs 2022."
#property link      "https://crieseurobocommql5.wordpress.com/"
#property version   "1.00"


// VÍDEO DESTE CÓDIGO - https://youtu.be/E5mZX3NApX0    <------------|

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
   
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
MqlRates candles[];    // para dia atual
MqlRates candlesDia[]; // para dias anteriores

void OnTick()
  {
//---
      CopyRates(_Symbol,PERIOD_CURRENT,0,100,candles);
      ArraySetAsSeries(candles,true);
      //---
      CopyRates(_Symbol,PERIOD_D1,0,5,candlesDia);
      ArraySetAsSeries(candlesDia,true);
      //---
      
      desenhaLinhaH("MaxDiaAnterior",candlesDia[1].high,clrGray,1.5);
      desenhaLinhaH("MinDiaAnterior",candlesDia[1].low,clrGray,1.5);
      //---
      //desenhaLinhaH("MaxDia2Anterior",candlesDia[2].high,clrYellow);
      //desenhaLinhaH("MinDia2Anterior",candlesDia[2].low);

  }
//+------------------------------------------------------------------+


void desenhaLinhaH(string nome,double valor,color cor=clrWhite,double width=1.5)
  {

   ObjectDelete(0,nome); 
   ObjectCreate(0,nome,OBJ_HLINE,0,0,valor);
   //ObjectSetInteger(0,nome,OBJPROP_STYLE,STYLE_DOT);
   ObjectSetInteger(0,nome,OBJPROP_STYLE,STYLE_DASH);
   ObjectSetInteger(0,nome,OBJPROP_COLOR,cor); 
   ObjectSetInteger(0,nome,OBJPROP_WIDTH,width); 
   
  }