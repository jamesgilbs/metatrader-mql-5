//+------------------------------------------------------------------+
//|                                   Highest – Lowest Indicator.mq5 |
//|                                                   Saullo Pacheco |
//|                   https://www.instagram.com/saulloop_freelancer/ |
//+------------------------------------------------------------------+
#property copyright "Saullo Pacheco"
#property link      "https://www.instagram.com/saulloop_freelancer/"
#property version   "1.00"
#property indicator_chart_window
#property indicator_buffers 2
#property indicator_plots 2
//indicator buffers 1
#property indicator_label1 "Highest"
#property indicator_type1 DRAW_LINE
#property indicator_color1 clrRed
#property indicator_style1 STYLE_DASH
#property indicator_width1  1
//indicator buffer 2
#property indicator_label2 "Lowest"
#property indicator_type2 DRAW_LINE
#property indicator_color2 clrRed
#property indicator_style2 STYLE_DASH
#property indicator_width2  1
//--- input parameters
input int       Range_n = 20;//Range
//--- buffers

double HiBuffer[], LoBuffer[];
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
   SetIndexBuffer(0,HiBuffer,INDICATOR_DATA);
   SetIndexBuffer(1,LoBuffer,INDICATOR_DATA);

   PlotIndexSetInteger(0,PLOT_LINE_STYLE,1);
   PlotIndexSetInteger(1,PLOT_LINE_STYLE,1);

   IndicatorSetInteger(INDICATOR_DIGITS, _Digits);

   PlotIndexSetInteger(0,PLOT_DRAW_BEGIN,Range_n);
   PlotIndexSetInteger(0,PLOT_SHIFT,0);

   PlotIndexSetInteger(1,PLOT_DRAW_BEGIN,Range_n);
   PlotIndexSetInteger(1,PLOT_SHIFT,0);

   IndicatorSetString(INDICATOR_SHORTNAME, "Highest – Lowest Indicator"+Range_n);
   
   PlotIndexSetDouble(0, PLOT_EMPTY_VALUE, 0.0);
   PlotIndexSetDouble(1, PLOT_EMPTY_VALUE, 0.0);

//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
  {
//---
   if(rates_total < Range_n+1)
     {
      Print("Not enough data to calculate");
      return(0);
     }
//calculate
   for(int i=prev_calculated; i<rates_total; i++)
     {
      double xHig = 0.0;
      double xLo = 0.0;
      HiBuffer[i]=xHig;
      LoBuffer[i]=xLo;
      if(i>Range_n)
        {
         int iHi=iHighest(_Symbol,PERIOD_CURRENT,MODE_HIGH,Range_n,rates_total-i);        //Highest bar in n bars
         xHig=iHigh(_Symbol,PERIOD_CURRENT,iHi);                  //Value of highest in n bars
         HiBuffer[i-1]=xHig;

         int iLo=iLowest(_Symbol,PERIOD_CURRENT,MODE_LOW,Range_n,rates_total-i);          //Lowest bar in n bars
         xLo=iLow(_Symbol,PERIOD_CURRENT,iLo);                    //Value of lowest in n bars
         LoBuffer[i-1]=xLo;
        }
     }
//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+
