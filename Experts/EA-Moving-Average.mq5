//+------------------------------------------------------------------+
//|                                             EA-Moving-Average.mq5|
//|                                                         James Gil|
//|                                                                  |
//+------------------------------------------------------------------+
#property copyright "James Gil"
#property link      ""
#property version   "1.20"
//+------------------------------------------------------------------+
//| Includes                                                         |
//+------------------------------------------------------------------+
#include <Trade/Trade.mqh> //Library CTrade

//+------------------------------------------------------------------+
//| Inputs                                                           |
//+------------------------------------------------------------------+
input int lote = 100;
input int periodoCurta = 10;
input int periodoLonga = 50;

//+------------------------------------------------------------------+
//| Globals                                                          |
//+------------------------------------------------------------------+
//--- Handlers of the moving average indicators
int curtaHandle = INVALID_HANDLE;
int longaHandle = INVALID_HANDLE;

//--- Data vectors of the moving average indicators
double mediaCurta[];
double mediaLonga[];

//--- Trade Variable
CTrade trade;

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- Invert vector's index
   ArraySetAsSeries(mediaCurta,true);
   ArraySetAsSeries(mediaLonga,true);

//--- Assign to the moving average manupulators
   curtaHandle = iMA(_Symbol,_Period,periodoCurta,0,MODE_SMA,PRICE_CLOSE);
   longaHandle = iMA(_Symbol,_Period,periodoLonga,0,MODE_SMA,PRICE_CLOSE);
   
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
void OnTick()
  {
   //--- If new bar
   if(isNewBar()) 
     {
      //+------------------------------------------------------------------+
      //| Data Collection                                                  |
      //+------------------------------------------------------------------+
      int copied1 = CopyBuffer(curtaHandle,0,0,3,mediaCurta);
      int copied2 = CopyBuffer(longaHandle,0,0,3,mediaLonga);
      //---
      bool sinalCompra = false;
      bool sinalVenda = false;
      //--- se os dados tiverem sido copiados corretamente
      if(copied1==3 && copied2==3)
        {
         //--- sinal de compra
         if( mediaCurta[1]>mediaLonga[1] && mediaCurta[2]<mediaLonga[2] )
           {
            sinalCompra = true;
           }
         //--- sinal de venda
         if( mediaCurta[1]<mediaLonga[1] && mediaCurta[2]>mediaLonga[2] )
           {
            sinalVenda = true;
           }
        }
      
      //+------------------------------------------------------------------+
      //| Check if posittioned                                             |
      //+------------------------------------------------------------------+
      bool comprado = false;
      bool vendido = false;
      //--- If posittioned
      if(PositionSelect(_Symbol))
        {
         //--- If bought
         if( PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_BUY )
           {
            comprado = true;
           }
         //--- If sold
         if( PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_SELL )
           {
            vendido = true;
           }
        }
      
      //+------------------------------------------------------------------+
      //| Routing                                                          |
      //+------------------------------------------------------------------+
      //--- If no posittioned
      if( !comprado && !vendido )
        {
         //--- Buy signal
         if( sinalCompra )
           {
            trade.Buy(lote,_Symbol,0,0,0,"Compra a mercado");
           }
         //--- Sell signal
         if( sinalVenda )
           {
            trade.Sell(lote,_Symbol,0,0,0,"Venda a mercado");
           }
        }
      else
        {
         //--- If bought
         if( comprado )
           {
            if( sinalVenda )
              {
               trade.Sell(lote*2,_Symbol,0,0,0,"Virada de mão (compra->venda)");
              }
           }
         //--- If sold
         else if( vendido )
           {
            if( sinalCompra )
              {
               trade.Buy(lote*2,_Symbol,0,0,0,"Virada de mão (venda->compra)");
              }
           }
        }
      
      
     }
  }
  
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool isNewBar()
  {
//--- Memorize the time of opening of the last bar in the static variable
   static datetime last_time=0;
//--- Current time
   datetime lastbar_time=(datetime)SeriesInfoInteger(Symbol(),Period(),SERIES_LASTBAR_DATE);

//--- If it is the first call of the function
   if(last_time==0)
     {
      //--- Set the time and exit
      last_time=lastbar_time;
      return(false);
     }

//--- If the time differs
   if(last_time!=lastbar_time)
     {
      //--- Memorize the time and return true
      last_time=lastbar_time;
      return(true);
     }
//--- If we passed to this line, then the bar is not new; return false
   return(false);
  }