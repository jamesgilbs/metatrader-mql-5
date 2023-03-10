//+------------------------------------------------------------------+
//|                                         Copyright © 2008, ledxep |
//|                                       http://www.metaquotes.net/ |
//+------------------------------------------------------------------+
#property copyright "Copyright © 2008, ledzep"
#property link      "http://www.metaquotes.net/"
 
#property indicator_chart_window
#property indicator_buffers 1
#property indicator_color1 Blue
//---- input parameters
 
 
double               DayHigh,DayLow,DayHigh1,DayLow1;
int                  ObjectIdx;
int                  DayIdx;
int                  k;
string               ObjName;
datetime             StartTime;
 
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int init()
   { 
  
   return(0);
   }
  
  
//+------------------------------------------------------------------+
//| Deinitialization function                                        |
//+------------------------------------------------------------------+
int deinit()
   {
   ObjectsDeleteAll();  
   return(0);
   }
 
 
//+------------------------------------------------------------------+
//| Start function                                                   |
//+------------------------------------------------------------------+
int start()
  {
  
   static bool first=true;   
   
   
   int      i,counted_bars=IndicatorCounted();
   double   BarHour,BarMinute;
   int      WeekDay;
   
 
   if(Bars<3) return(0);
   i=Bars-3;
   
   if(counted_bars==0 || first)
      {
      first=false;     
      while(i>=0)
         {
        
         TrendLine(StartTime,DayHigh1,Time[i],DayHigh1,Red);
         TrendLine(StartTime,DayLow1,Time[i],DayLow1,Red);
        
         if(High[i+1] > DayHigh) DayHigh = High[i+1];
         if(Low[i+1] < DayLow)   DayLow  = Low[i+1];
        
      
         if(TimeDay(Time[i]) != TimeDay(Time[i+1]))        
            {            
            DayHigh1=DayHigh;
            DayLow1=DayLow;
            DayHigh=Open[i];
            DayLow=Open[i];
            StartTime=Time[i];
            }
            
         i--;
         
         }//while close
     
      }
  return(0);
  }//start close
//+------------------------------------------------------------------+
 
void TrendLine(datetime x1, double y1, datetime x2, double y2, color col)
   {
   ObjectIdx++;
   ObjName="Line" + DoubleToStr(ObjectIdx,0);   
   ObjectCreate(ObjName, OBJ_TREND, 0, x1, y1, x2, y2);
   ObjectSet(ObjName,OBJPROP_COLOR,col);
   ObjectSet(ObjName,OBJPROP_RAY,0);    
   }