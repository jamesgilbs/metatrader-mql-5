//+------------------------------------------------------------------+
//|                                                          222.mq5 |
//|                                  Copyright 2022, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2022, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+

MqlRates candles[];    // dia atual
MqlRates candlesDia[]; // dias anteriores

int OnInit()
  {
      CopyRates(_Symbol,PERIOD_CURRENT,0,100,candles);
      ArraySetAsSeries(candles,true);

      CopyRates(_Symbol,PERIOD_D1,0,5,candlesDia);
      ArraySetAsSeries(candlesDia,true);

      desenhaLinhaH("MaxDiaAnterior",candlesDia[1].high,clrGray,1.5);
      desenhaLinhaH("MinDiaAnterior",candlesDia[1].low,clrGray,1.5);
      
   return(INIT_SUCCEEDED);
  }
  
void desenhaLinhaH(string nome,double valor,color cor=clrWhite,double width=1.5)
{
   ObjectDelete(0,nome); 
   ObjectCreate(0,nome,OBJ_HLINE,0,0,valor);
   //ObjectSetInteger(0,nome,OBJPROP_STYLE,STYLE_DOT);
   ObjectSetInteger(0,nome,OBJPROP_STYLE,STYLE_DASH);
   ObjectSetInteger(0,nome,OBJPROP_COLOR,cor); 
   ObjectSetInteger(0,nome,OBJPROP_WIDTH,width); 
}