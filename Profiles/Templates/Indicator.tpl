<chart>
id=133055791301268651
symbol=WINV22
description=IBOVESPA MINI
period_type=0
period_size=15
digits=0
tick_size=5.000000
position_time=1660925700
scale_fix=0
scale_fixed_min=111435.000000
scale_fixed_max=113870.000000
scale_fix11=0
scale_bar=0
scale_bar_val=1.000000
scale=16
mode=1
fore=0
grid=1
volume=0
scroll=1
shift=1
shift_size=23.434201
fixed_pos=0.000000
ticker=1
ohlc=0
one_click=0
one_click_btn=1
bidline=0
askline=0
lastline=1
days=1
descriptions=0
tradelines=1
tradehistory=1
window_left=26
window_top=26
window_right=1463
window_bottom=439
window_type=3
floating=0
floating_left=0
floating_top=0
floating_right=0
floating_bottom=0
floating_type=1
floating_toolbar=1
floating_tbstate=
background_color=3549737
foreground_color=10777186
barup_color=3145645
bardown_color=3937500
bullcandle_color=3145645
bearcandle_color=3937500
chartline_color=8421504
volumes_color=13007359
grid_color=5197615
bidline_color=13007359
askline_color=16356285
lastline_color=3145645
stops_color=5264367
windows_total=3

<expert>
name=EA_MaxMinDiaAnterior
path=Experts\EA_MaxMinDiaAnterior.ex5
expertmode=1
<inputs>
</inputs>
</expert>

<window>
height=127.831023
objects=13

<indicator>
name=Main
path=
apply=1
show_data=1
scale_inherit=0
scale_line=0
scale_line_percent=50
scale_line_value=0.000000
scale_fix_min=0
scale_fix_min_val=0.000000
scale_fix_max=0
scale_fix_max_val=0.000000
expertmode=0
fixed_height=-1
</indicator>

<indicator>
name=Moving Average
path=
apply=1
show_data=1
scale_inherit=0
scale_line=0
scale_line_percent=50
scale_line_value=0.000000
scale_fix_min=0
scale_fix_min_val=0.000000
scale_fix_max=0
scale_fix_max_val=0.000000
expertmode=0
fixed_height=-1

<graph>
name=
draw=129
style=0
width=3
arrow=251
color=11829830
</graph>
period=80
method=1
</indicator>

<indicator>
name=Moving Average
path=
apply=1
show_data=1
scale_inherit=0
scale_line=0
scale_line_percent=50
scale_line_value=0.000000
scale_fix_min=0
scale_fix_min_val=0.000000
scale_fix_max=0
scale_fix_max_val=0.000000
expertmode=0
fixed_height=-1

<graph>
name=
draw=129
style=0
width=3
arrow=251
color=16777215
</graph>
period=8
method=2
</indicator>

<indicator>
name=Moving Average
path=
apply=1
show_data=1
scale_inherit=0
scale_line=0
scale_line_percent=50
scale_line_value=0.000000
scale_fix_min=0
scale_fix_min_val=0.000000
scale_fix_max=0
scale_fix_max_val=0.000000
expertmode=0
fixed_height=-1

<graph>
name=
draw=129
style=0
width=3
arrow=251
color=2970272
</graph>
period=200
method=1
</indicator>

<indicator>
name=Bollinger Bands
path=
apply=1
show_data=1
scale_inherit=0
scale_line=0
scale_line_percent=50
scale_line_value=0.000000
scale_fix_min=0
scale_fix_min_val=0.000000
scale_fix_max=0
scale_fix_max_val=0.000000
expertmode=0
fixed_height=-1

<graph>
name=
draw=131
style=3
width=1
arrow=251
color=6908265
</graph>

<graph>
name=
draw=131
style=3
width=1
arrow=251
color=6908265
</graph>

<graph>
name=
draw=131
style=3
width=1
arrow=251
color=6908265
</graph>
period=20
deviation=2.000000
</indicator>

<indicator>
name=Custom Indicator
path=Indicators\Market\Countdown Clock.ex5
apply=0
show_data=1
scale_inherit=0
scale_line=0
scale_line_percent=50
scale_line_value=0.000000
scale_fix_min=0
scale_fix_min_val=0.000000
scale_fix_max=0
scale_fix_max_val=0.000000
expertmode=0
fixed_height=-1

<graph>
name=
draw=0
style=0
width=1
arrow=251
color=
</graph>
<inputs>
=
g_normal_color=-1
g_10_second_color=-1
g_label_color=-1
g_background_color=-1
=
g_border_color=-1
g_border_thickness=1
=
g_font_family=Arial
g_font_size=10
g_font_italic=false
g_font_bold=true
=
g_show_time_frame_labels=false
g_show_current=true
g_show_m1=false
g_show_m2=false
g_show_m3=false
g_show_m4=false
g_show_m5=false
g_show_m6=false
g_show_m10=false
g_show_m12=false
g_show_m15=false
g_show_m20=false
g_show_m30=false
g_show_h1=false
g_show_h2=false
g_show_h3=false
g_show_h4=false
g_show_h6=false
g_show_h8=false
g_show_h12=false
g_show_d1=false
=
g_w_horizontal=3
g_w_vertical=3
=
g_c_horizontal=1
g_c_vertical=1
=
g_name=Countdown
=
g_milliseconds_interval=1000
g_each_tick=false
</inputs>
</indicator>

<indicator>
name=Custom Indicator
path=Indicators\Market\Setup Stormer.ex5
apply=0
show_data=1
scale_inherit=0
scale_line=0
scale_line_percent=50
scale_line_value=0.000000
scale_fix_min=0
scale_fix_min_val=0.000000
scale_fix_max=0
scale_fix_max_val=0.000000
expertmode=0
fixed_height=-1

<graph>
name=Open;High;Low;Close
draw=17
style=0
width=3
arrow=251
color=65407,3937500,0
</graph>

<graph>
name=MA1
draw=1
style=0
width=2
arrow=251
color=-1
</graph>

<graph>
name=MA2
draw=1
style=0
width=3
arrow=251
color=-1
</graph>

<graph>
name=MA3
draw=1
style=0
width=5
arrow=251
color=-1
</graph>
<inputs>
ChangeScheme=false
DrawFibo=false
DrawFiboInsideBar=false
t_1=
ColorBarSell=65407
ColorBarBuy=3937500
ColorInsideBar=0
t_3=
MA1Color=-1
MA1Period=17
MA1Shift=0
MA1Method=1
MA1ApplyTo=1
t_4=
MA2Color=-1
MA2Period=34
MA2Shift=0
MA2Method=1
MA2ApplyTo=1
t_5=
MA3Color=-1
MA3Period=80
MA3Shift=0
MA3Method=1
MA3ApplyTo=1
t_2=
Kperiod=5
Dperiod=3
slowing=8
ma_method=1
price_field=0
</inputs>
</indicator>
<object>
type=102
name=Countdown.Current
hidden=1
descr=00:09:33
color=10777186
selectable=0
angle=0
pos_x=64
pos_y=30
fontsz=10
fontnm=Arial Bold
anchorpos=0
refpoint=2
</object>

<object>
type=31
name=autotrade #251767270 buy 1 WINV22 at 115740, WINV22
hidden=1
color=11296515
selectable=0
date1=1660826880
value1=115740.000000
</object>

<object>
type=32
name=autotrade #251767272 sell 1 WINV22 at 115735, profit -1.00, WIN
hidden=1
color=1918177
selectable=0
date1=1660826896
value1=115735.000000
</object>

<object>
type=31
name=autotrade #251779709 buy 1 WINV22 at 115945, WINV22
hidden=1
color=11296515
selectable=0
date1=1660842030
value1=115945.000000
</object>

<object>
type=32
name=autotrade #251779714 sell 1 WINV22 at 115945, profit 0.00, WINV
hidden=1
color=1918177
selectable=0
date1=1660842036
value1=115945.000000
</object>

<object>
type=31
name=autotrade #251811423 buy 1 WINV22 at 113380, WINV22
hidden=1
color=11296515
selectable=0
date1=1660928562
value1=113380.000000
</object>

<object>
type=32
name=autotrade #251811735 sell 1 WINV22 at 113260, SL, profit -24.00
hidden=1
descr=[sl 113270]
color=1918177
selectable=0
date1=1660929111
value1=113260.000000
</object>

<object>
type=2
name=autotrade #251767270 -> #251767272, profit -1.00, WINV22
hidden=1
descr=115740 -> 115735
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1660826880
date2=1660826896
value1=115740.000000
value2=115735.000000
</object>

<object>
type=2
name=autotrade #251779709 -> #251779714, profit 0.00, WINV22
hidden=1
descr=115945 -> 115945
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1660842030
date2=1660842036
value1=115945.000000
value2=115945.000000
</object>

<object>
type=2
name=autotrade #251811423 -> #251811735, SL, profit -24.00, WINV22
hidden=1
descr=113380 -> 113260
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1660928562
date2=1660929111
value1=113380.000000
value2=113260.000000
</object>

<object>
type=1
name=MaxDiaAnterior
hidden=1
color=8421504
style=1
selectable=0
value1=112800.000000
</object>

<object>
type=1
name=MinDiaAnterior
hidden=1
color=8421504
style=1
selectable=0
value1=111715.000000
</object>

</window>

<window>
height=37.058441
objects=0

<indicator>
name=Custom Indicator
path=Indicators\Downloads\Volume_Average.ex5
apply=0
show_data=1
scale_inherit=0
scale_line=0
scale_line_percent=50
scale_line_value=0.000000
scale_fix_min=1
scale_fix_min_val=0.000000
scale_fix_max=0
scale_fix_max_val=971014.125000
expertmode=0
fixed_height=-1

<graph>
name=Volume
draw=11
style=0
width=5
arrow=251
color=3937500,3329434,0
</graph>

<graph>
name=Average
draw=4
style=2
width=2
arrow=251
color=0
</graph>
<inputs>
volType=1
period=12
</inputs>
</indicator>
</window>

<window>
height=34.582599
objects=0

<indicator>
name=Custom Indicator
path=Experts\Normalized smoothed MACD.ex5
apply=0
show_data=1
scale_inherit=0
scale_line=0
scale_line_percent=50
scale_line_value=0.000000
scale_fix_min=0
scale_fix_min_val=0.000000
scale_fix_max=0
scale_fix_max_val=0.000000
expertmode=0
fixed_height=-1

<graph>
name=Normalized MACD
draw=10
style=0
width=2
arrow=251
color=16748574,6333684
</graph>

<graph>
name=Normalized MACD signal line
draw=10
style=2
width=1
arrow=251
color=16748574,6333684
</graph>
<inputs>
inpFastPeriod=12
inpSlowPeriod=26
inpMacdSignal=9
inpPrice=1
inpSmoothPeriod=5
inpNormPeriod=20
</inputs>
</indicator>
</window>
</chart>