//+------------------------------------------------------------------+
//|                                                Volume_Average.mq5|
//|                                    Copyright 2020,Gustavo Alonso |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020,Gustavo Alonso"
#property link      "https://www.mql5.com"
#property version   "2.00"
#property indicator_separate_window
#property indicator_buffers 3
#property indicator_plots   2
#property indicator_minimum 0

#property indicator_label1  "Volume"
#property indicator_type1   DRAW_COLOR_HISTOGRAM
#property indicator_color1  clrCrimson,clrYellowGreen,clrBlack
#property indicator_style1  STYLE_SOLID
#property indicator_width1  5

#property indicator_label2  "Average"
#property indicator_type2   DRAW_SECTION
#property indicator_color2  clrBlack
#property indicator_style2  STYLE_DOT
#property indicator_width2  2

input ENUM_APPLIED_VOLUME volType = VOLUME_TICK; //Volume Type
input int                  period = 12;         //Average

double         VolumeBuffer[];
double         VolumeColors[];
double         mm_volume[];

//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {

//--- indicator buffers mapping
   SetIndexBuffer(0,VolumeBuffer,INDICATOR_DATA);
   SetIndexBuffer(1,VolumeColors,INDICATOR_COLOR_INDEX);
   SetIndexBuffer(2,mm_volume,INDICATOR_DATA);
   PlotIndexSetDouble(2,PLOT_EMPTY_VALUE,0.0);

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

   if(prev_calculated == 0)
     {
      for(int i=0; i<rates_total; i++)
        {
         VolumeBuffer[i] =(volType==VOLUME_REAL)?(double)volume[i]:(double)tick_volume[i];

         if(i>=period)
           {
            double sum = 0;
            for(int j=period; j>=0; j--)
              {
               sum += VolumeBuffer[i-j];
              }
            mm_volume[i] = sum/period;
           }

         if(close[i] > open[i])
            VolumeColors[i] = 1;

         if(close[i] < open[i])
            VolumeColors[i] = 0;

         if(close[i] == open[i])
            VolumeColors[i] = 2;
        }
     }
   else
     {
      VolumeBuffer[rates_total - 1] =(volType==VOLUME_REAL)?(double)volume[rates_total - 1]:(double)tick_volume[rates_total - 1];
      double sum = 0;
      for(int j=period; j>=0; j--)
        {
         sum += VolumeBuffer[rates_total - 1 - j];
        }
      mm_volume[rates_total - 1] = sum/period;

      if(close[rates_total - 1] > open[rates_total - 1])
         VolumeColors[rates_total - 1] = 1;

      if(close[rates_total - 1] < open[rates_total - 1])
         VolumeColors[rates_total - 1] = 0;

      if(close[rates_total - 1] == open[rates_total - 1])
         VolumeColors[rates_total - 1] = 2;
     }

   return(rates_total);
  }
//+------------------------------------------------------------------+
