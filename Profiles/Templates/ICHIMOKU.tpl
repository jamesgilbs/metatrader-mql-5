<chart>
id=133203461595619236
symbol=WING23
description=IBOVESPA MINI
period_type=0
period_size=5
digits=0
tick_size=5.000000
position_time=1676395200
scale_fix=0
scale_fixed_min=106210.000000
scale_fixed_max=109320.000000
scale_fix11=0
scale_bar=0
scale_bar_val=1.000000
scale=16
mode=1
fore=1
grid=1
volume=0
scroll=0
shift=1
shift_size=33.169533
fixed_pos=0.000000
ticker=1
ohlc=0
one_click=1
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
window_right=662
window_bottom=565
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
foreground_color=16119285
barup_color=3329434
bardown_color=3937500
bullcandle_color=3329434
bearcandle_color=3937500
chartline_color=8421504
volumes_color=13007359
grid_color=3223857
bidline_color=13007359
askline_color=16356285
lastline_color=3329434
stops_color=5264367
windows_total=4

<expert>
name=ea-trailing-break-even-parcial-2.12
path=Experts\ea-trailing-break-even-parcial-2.12.ex5
expertmode=37
<inputs>
TimeFrame=5
InpFiboProfitLevel=150.0
Volume=1
HoraInicial=09:00
HoraFinal=16:00
HoraFechamento=17:30
LimiteGain=1000.0
LimiteLoss=500.0
BE=500.0
RP=300.0
VolumeRP=5
MediaCurta=8
MediaMedia=80
MediaLonga=200
InpTenkanSen=7
InpKijunSen=22
InpSenkouSpanB=44
InpCountBarSearch=3
InpTrailingStop=200
InpTrailingStep=100
</inputs>
</expert>

<window>
height=177.077576
objects=20

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
name=Custom Indicator
path=Scripts\_James\Ichimoku.ex5
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
name=Tenkan-sen(7)
draw=1
style=0
width=2
arrow=251
color=16748574
</graph>

<graph>
name=Kijun-sen(22)
draw=1
style=0
width=2
arrow=251
color=6333684
</graph>

<graph>
name=Senkou Span A;Senkou Span B(44)
draw=7
style=0
width=1
arrow=251
shift=22
color=4864311,0
</graph>

<graph>
name=Chikou Span
draw=1
style=0
width=2
arrow=251
shift=-22
color=0
</graph>
<inputs>
InpTenkan=7
InpKijun=22
InpSenkou=44
</inputs>
</indicator>
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
type=31
name=autotrade #251880930 buy 1 WINV22 at 114705, WINV22
hidden=1
color=11296515
selectable=0
date1=1661337150
value1=114705.000000
</object>

<object>
type=32
name=autotrade #251881254 sell 1 WINV22 at 114805, TP, profit 20.00,
hidden=1
descr=[tp 114785]
color=1918177
selectable=0
date1=1661337324
value1=114805.000000
</object>

<object>
type=31
name=autotrade #251881379 buy 1 WINV22 at 114855, WINV22
hidden=1
color=11296515
selectable=0
date1=1661337347
value1=114855.000000
</object>

<object>
type=32
name=autotrade #251881725 sell 1 WINV22 at 114890, TP, profit 7.00, 
hidden=1
descr=[tp 114885]
color=1918177
selectable=0
date1=1661337510
value1=114890.000000
</object>

<object>
type=31
name=autotrade #251882754 buy 2 WINV22 at 115205, WINV22
hidden=1
color=11296515
selectable=0
date1=1661337964
value1=115205.000000
</object>

<object>
type=32
name=autotrade #251883506 sell 2 WINV22 at 115305, TP, profit 40.00,
hidden=1
descr=[tp 115320]
color=1918177
selectable=0
date1=1661338431
value1=115305.000000
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
type=2
name=autotrade #251880930 -> #251881254, TP, profit 20.00, WINV22
hidden=1
descr=114705 -> 114805
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1661337150
date2=1661337324
value1=114705.000000
value2=114805.000000
</object>

<object>
type=2
name=autotrade #251881379 -> #251881725, TP, profit 7.00, WINV22
hidden=1
descr=114855 -> 114890
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1661337347
date2=1661337510
value1=114855.000000
value2=114890.000000
</object>

<object>
type=2
name=autotrade #251882754 -> #251883506, TP, profit 40.00, WINV22
hidden=1
descr=115205 -> 115305
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1661337964
date2=1661338431
value1=115205.000000
value2=115305.000000
</object>

<object>
type=1
name=MaxDiaAnterior
hidden=1
color=8421504
style=1
selectable=0
value1=109745.000000
</object>

<object>
type=1
name=MinDiaAnterior
hidden=1
color=8421504
style=1
selectable=0
value1=107550.000000
</object>

</window>

<window>
height=44.745214
objects=0

<indicator>
name=Stochastic Oscillator
path=
apply=0
show_data=1
scale_inherit=0
scale_line=0
scale_line_percent=50
scale_line_value=0.000000
scale_fix_min=1
scale_fix_min_val=0.000000
scale_fix_max=1
scale_fix_max_val=100.000000
expertmode=0
fixed_height=-1

<graph>
name=
draw=1
style=0
width=2
arrow=251
color=16748574
</graph>

<graph>
name=
draw=1
style=2
width=1
arrow=251
color=6333684
</graph>

<level>
level=20.000000
style=2
color=12632256
width=1
descr=
</level>

<level>
level=80.000000
style=2
color=12632256
width=1
descr=
</level>
kperiod=5
dperiod=3
slowing=8
price_apply=0
method=1
</indicator>
</window>

<window>
height=27.847675
objects=0

<indicator>
name=Custom Indicator
path=Scripts\_James\Normalized smoothed MACD.ex5
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

<window>
height=22.579653
objects=0

<indicator>
name=Custom Indicator
path=Scripts\_James\Volume_Average.ex5
apply=0
show_data=1
scale_inherit=0
scale_line=0
scale_line_percent=50
scale_line_value=0.000000
scale_fix_min=1
scale_fix_min_val=0.000000
scale_fix_max=0
scale_fix_max_val=0.000000
expertmode=0
fixed_height=-1

<graph>
name=Volume
draw=11
style=0
width=5
arrow=251
color=3937500,3145645,0
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
volType=0
period=12
</inputs>
</indicator>
</window>
</chart>