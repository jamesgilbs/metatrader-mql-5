<chart>
id=133366695313209809
symbol=MGLU3
description=MAGAZ LUIZA ON      NM
period_type=0
period_size=5
digits=2
tick_size=0.010000
position_time=0
scale_fix=0
scale_fixed_min=2.820000
scale_fixed_max=3.110000
scale_fix11=0
scale_bar=0
scale_bar_val=1.000000
scale=16
mode=1
fore=1
grid=1
volume=0
scroll=1
shift=1
shift_size=32.549020
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
window_left=0
window_top=0
window_right=0
window_bottom=0
window_type=1
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

<window>
height=177.077576
objects=425

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

<indicator>
name=Custom Indicator
path=Indicators\candlestick_patterns.ex5
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
draw=1
style=0
width=1
arrow=251
color=16711680
</graph>
<inputs>
InpPeriodSMA=10
InpAlert=true
InpCountBars=1000
InpColorBull=3329434
InpColorBear=3937500
InpCommentOn=true
InpTextFontSize=10
</inputs>
</indicator>

<indicator>
name=Custom Indicator
path=Indicators\candlestick_type_color.ex5
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
draw=17
style=0
width=1
arrow=251
color=32768,16711680,16711935,16760576,42495,10061943,255,13828244
</graph>
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
style=2
width=1
color=6908265
</graph>

<graph>
name=
draw=131
style=2
width=1
color=6908265
</graph>

<graph>
name=
draw=131
style=2
width=1
color=6908265
</graph>
period=20
deviation=2.000000
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

<object>
type=20
name=Patterns Harami the bull model0
hidden=1
descr=Harami
color=3329434
selectable=0
filling=0
date1=1680522000
date2=1680522300
value1=102779.000000
value2=103085.000000
</object>

<object>
type=101
name=Patterns Harami the bull model0text
hidden=1
descr=    Harami
color=3329434
selectable=0
angle=2700
date1=1680522000
value1=102779.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Engulfing the bear model1
hidden=1
descr=Engulfing
color=3937500
selectable=0
filling=0
date1=1680524400
date2=1680524700
value1=103223.000000
value2=103432.000000
</object>

<object>
type=101
name=Patterns Engulfing the bear model1text
hidden=1
descr=    Engulfing
color=3937500
selectable=0
angle=900
date1=1680524400
value1=103432.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Outside Down the bear model2
hidden=1
descr=Three Outside Down
color=3937500
width=2
selectable=0
filling=0
date1=1680524400
date2=1680525000
value1=103213.000000
value2=103432.000000
</object>

<object>
type=101
name=Patterns Three Outside Down the bear model2text
hidden=1
descr=    Three Outside Down
color=3937500
selectable=0
angle=900
date1=1680525000
value1=103432.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=32
name=Patterns Hanging Man the bear model3
hidden=1
descr=Hanging Man
color=3937500
selectable=0
anchorpos=1
date1=1680527700
value1=103401.000000
</object>

<object>
type=101
name=Patterns Hanging Man the bear model3text
hidden=1
descr=    Hanging Man
color=3937500
selectable=0
angle=900
date1=1680527700
value1=103401.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bull model4
hidden=1
descr=Harami
color=3329434
selectable=0
filling=0
date1=1680528000
date2=1680528300
value1=103223.000000
value2=103442.000000
</object>

<object>
type=101
name=Patterns Harami the bull model4text
hidden=1
descr=    Harami
color=3329434
selectable=0
angle=2700
date1=1680528000
value1=103223.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Inside Up the bull model5
hidden=1
descr=Three Inside Up
color=3329434
width=2
selectable=0
filling=0
date1=1680528000
date2=1680528600
value1=103223.000000
value2=103442.000000
</object>

<object>
type=101
name=Patterns Three Inside Up the bull model5text
hidden=1
descr=    Three Inside Up
color=3329434
selectable=0
angle=2700
date1=1680528600
value1=103223.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Doji Star the bull model6
hidden=1
descr=Doji Star
color=3329434
selectable=0
filling=0
date1=1680528900
date2=1680529200
value1=103141.000000
value2=103376.000000
</object>

<object>
type=101
name=Patterns Doji Star the bull model6text
hidden=1
descr=    Doji Star
color=3329434
selectable=0
angle=2700
date1=1680528900
value1=103141.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Morning Doji Star the bull model7
hidden=1
descr=Morning Doji Star
color=3329434
width=2
selectable=0
filling=0
date1=1680528900
date2=1680529500
value1=103141.000000
value2=103376.000000
</object>

<object>
type=101
name=Patterns Morning Doji Star the bull model7text
hidden=1
descr=    Morning Doji Star
color=3329434
selectable=0
angle=2700
date1=1680529500
value1=103141.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bull model8
hidden=1
descr=Harami
color=3329434
selectable=0
filling=0
date1=1680602700
date2=1680603000
value1=104089.000000
value2=104288.000000
</object>

<object>
type=101
name=Patterns Harami the bull model8text
hidden=1
descr=    Harami
color=3329434
selectable=0
angle=2700
date1=1680602700
value1=104089.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Inside Up the bull model9
hidden=1
descr=Three Inside Up
color=3329434
width=2
selectable=0
filling=0
date1=1680602700
date2=1680603300
value1=104089.000000
value2=104486.000000
</object>

<object>
type=101
name=Patterns Three Inside Up the bull model9text
hidden=1
descr=    Three Inside Up
color=3329434
selectable=0
angle=2700
date1=1680603300
value1=104089.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bull model10
hidden=1
descr=Harami
color=3329434
selectable=0
filling=0
date1=1680604500
date2=1680604800
value1=103880.000000
value2=104283.000000
</object>

<object>
type=101
name=Patterns Harami the bull model10text
hidden=1
descr=    Harami
color=3329434
selectable=0
angle=2700
date1=1680604500
value1=103880.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Inside Up the bull model11
hidden=1
descr=Three Inside Up
color=3329434
width=2
selectable=0
filling=0
date1=1680604500
date2=1680605100
value1=103880.000000
value2=104283.000000
</object>

<object>
type=101
name=Patterns Three Inside Up the bull model11text
hidden=1
descr=    Three Inside Up
color=3329434
selectable=0
angle=2700
date1=1680605100
value1=103880.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Engulfing the bear model12
hidden=1
descr=Engulfing
color=3937500
selectable=0
filling=0
date1=1680606900
date2=1680607200
value1=104863.000000
value2=105286.000000
</object>

<object>
type=101
name=Patterns Engulfing the bear model12text
hidden=1
descr=    Engulfing
color=3937500
selectable=0
angle=900
date1=1680606900
value1=105286.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Engulfing the bear model13
hidden=1
descr=Engulfing
color=3937500
selectable=0
filling=0
date1=1680607500
date2=1680607800
value1=104843.000000
value2=105088.000000
</object>

<object>
type=101
name=Patterns Engulfing the bear model13text
hidden=1
descr=    Engulfing
color=3937500
selectable=0
angle=900
date1=1680607500
value1=105088.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Outside Down the bear model14
hidden=1
descr=Three Outside Down
color=3937500
width=2
selectable=0
filling=0
date1=1680607500
date2=1680608100
value1=104751.000000
value2=105088.000000
</object>

<object>
type=101
name=Patterns Three Outside Down the bear model14text
hidden=1
descr=    Three Outside Down
color=3937500
selectable=0
angle=900
date1=1680608100
value1=105088.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Outside Up the bull model16
hidden=1
descr=Three Outside Up
color=3329434
width=2
selectable=0
filling=0
date1=1680612300
date2=1680612900
value1=103987.000000
value2=104272.000000
</object>

<object>
type=101
name=Patterns Three Outside Up the bull model16text
hidden=1
descr=    Three Outside Up
color=3329434
selectable=0
angle=2700
date1=1680612900
value1=103987.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bear model17
hidden=1
descr=Harami
color=3937500
selectable=0
filling=0
date1=1680615300
date2=1680615600
value1=104170.000000
value2=104415.000000
</object>

<object>
type=101
name=Patterns Harami the bear model17text
hidden=1
descr=    Harami
color=3937500
selectable=0
angle=900
date1=1680615300
value1=104415.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bear model18
hidden=1
descr=Harami
color=3937500
selectable=0
filling=0
date1=1680627300
date2=1680627600
value1=104089.000000
value2=104283.000000
</object>

<object>
type=101
name=Patterns Harami the bear model18text
hidden=1
descr=    Harami
color=3937500
selectable=0
angle=900
date1=1680627300
value1=104283.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Inside Down the bear model19
hidden=1
descr=Three Inside Down
color=3937500
width=2
selectable=0
filling=0
date1=1680627300
date2=1680627900
value1=104058.000000
value2=104283.000000
</object>

<object>
type=101
name=Patterns Three Inside Down the bear model19text
hidden=1
descr=    Three Inside Down
color=3937500
selectable=0
angle=900
date1=1680627900
value1=104283.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bear model21
hidden=1
descr=Harami
color=3937500
selectable=0
filling=0
date1=1680699300
date2=1680699600
value1=102703.000000
value2=102892.000000
</object>

<object>
type=101
name=Patterns Harami the bear model21text
hidden=1
descr=    Harami
color=3937500
selectable=0
angle=900
date1=1680699300
value1=102892.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Inside Down the bear model22
hidden=1
descr=Three Inside Down
color=3937500
width=2
selectable=0
filling=0
date1=1680699300
date2=1680699900
value1=102703.000000
value2=102892.000000
</object>

<object>
type=101
name=Patterns Three Inside Down the bear model22text
hidden=1
descr=    Three Inside Down
color=3937500
selectable=0
angle=900
date1=1680699900
value1=102892.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bull model23
hidden=1
descr=Harami
color=3329434
selectable=0
filling=0
date1=1680714600
date2=1680714900
value1=102779.000000
value2=103049.000000
</object>

<object>
type=101
name=Patterns Harami the bull model23text
hidden=1
descr=    Harami
color=3329434
selectable=0
angle=2700
date1=1680714600
value1=102779.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Inside Up the bull model24
hidden=1
descr=Three Inside Up
color=3329434
width=2
selectable=0
filling=0
date1=1680714600
date2=1680715200
value1=102779.000000
value2=103095.000000
</object>

<object>
type=101
name=Patterns Three Inside Up the bull model24text
hidden=1
descr=    Three Inside Up
color=3329434
selectable=0
angle=2700
date1=1680715200
value1=102779.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=31
name=Patterns Invert Hammer the bull model25
hidden=1
descr=Inverted Hammer
color=3329434
selectable=0
date1=1680716400
value1=102881.000000
</object>

<object>
type=101
name=Patterns Invert Hammer the bull model25text
hidden=1
descr=    Inverted Hammer
color=3329434
selectable=0
angle=2700
date1=1680716400
value1=102881.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bull model26
hidden=1
descr=Harami
color=3329434
selectable=0
filling=0
date1=1680771900
date2=1680772200
value1=102774.000000
value2=103029.000000
</object>

<object>
type=101
name=Patterns Harami the bull model26text
hidden=1
descr=    Harami
color=3329434
selectable=0
angle=2700
date1=1680771900
value1=102774.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bear model27
hidden=1
descr=Harami
color=3937500
selectable=0
filling=0
date1=1680775800
date2=1680776100
value1=103085.000000
value2=103656.000000
</object>

<object>
type=101
name=Patterns Harami the bear model27text
hidden=1
descr=    Harami
color=3937500
selectable=0
angle=900
date1=1680775800
value1=103656.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Inside Down the bear model28
hidden=1
descr=Three Inside Down
color=3937500
width=2
selectable=0
filling=0
date1=1680775800
date2=1680776400
value1=103085.000000
value2=103656.000000
</object>

<object>
type=101
name=Patterns Three Inside Down the bear model28text
hidden=1
descr=    Three Inside Down
color=3937500
selectable=0
angle=900
date1=1680776400
value1=103656.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bear model30
hidden=1
descr=Harami
color=3937500
selectable=0
filling=0
date1=1680787200
date2=1680787500
value1=102830.000000
value2=102983.000000
</object>

<object>
type=101
name=Patterns Harami the bear model30text
hidden=1
descr=    Harami
color=3937500
selectable=0
angle=900
date1=1680787200
value1=102983.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bull model31
hidden=1
descr=Harami
color=3329434
selectable=0
filling=0
date1=1680791400
date2=1680791700
value1=102851.000000
value2=103004.000000
</object>

<object>
type=101
name=Patterns Harami the bull model31text
hidden=1
descr=    Harami
color=3329434
selectable=0
angle=2700
date1=1680791400
value1=102851.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bull model32
hidden=1
descr=Harami
color=3329434
selectable=0
filling=0
date1=1680793200
date2=1680793500
value1=102728.000000
value2=102892.000000
</object>

<object>
type=101
name=Patterns Harami the bull model32text
hidden=1
descr=    Harami
color=3329434
selectable=0
angle=2700
date1=1680793200
value1=102728.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=31
name=Patterns Invert Hammer the bull model33
hidden=1
descr=Inverted Hammer
color=3329434
selectable=0
date1=1680793800
value1=102795.000000
</object>

<object>
type=101
name=Patterns Invert Hammer the bull model33text
hidden=1
descr=    Inverted Hammer
color=3329434
selectable=0
angle=2700
date1=1680793800
value1=102795.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Inside Up the bull model34
hidden=1
descr=Three Inside Up
color=3329434
width=2
selectable=0
filling=0
date1=1680793200
date2=1680793800
value1=102728.000000
value2=102892.000000
</object>

<object>
type=101
name=Patterns Three Inside Up the bull model34text
hidden=1
descr=    Three Inside Up
color=3329434
selectable=0
angle=2700
date1=1680793800
value1=102728.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bear model35
hidden=1
descr=Harami
color=3937500
selectable=0
filling=0
date1=1680794700
date2=1680795000
value1=102871.000000
value2=103075.000000
</object>

<object>
type=101
name=Patterns Harami the bear model35text
hidden=1
descr=    Harami
color=3937500
selectable=0
angle=900
date1=1680794700
value1=103075.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model36
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1680799200
date2=1680799500
value1=102846.000000
value2=102948.000000
</object>

<object>
type=101
name=Patterns Matching Low the bull model36text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1680799200
value1=102846.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=32
name=Patterns Hanging Man the bear model37
hidden=1
descr=Hanging Man
color=3937500
selectable=0
anchorpos=1
date1=1680803400
value1=103258.000000
</object>

<object>
type=101
name=Patterns Hanging Man the bear model37text
hidden=1
descr=    Hanging Man
color=3937500
selectable=0
angle=900
date1=1680803400
value1=103258.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Engulfing the bull model38
hidden=1
descr=Engulfing
color=3329434
selectable=0
filling=0
date1=1681118700
date2=1681119000
value1=102764.000000
value2=103034.000000
</object>

<object>
type=101
name=Patterns Engulfing the bull model38text
hidden=1
descr=    Engulfing
color=3329434
selectable=0
angle=2700
date1=1681118700
value1=102764.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Outside Up the bull model39
hidden=1
descr=Three Outside Up
color=3329434
width=2
selectable=0
filling=0
date1=1681118700
date2=1681119300
value1=102764.000000
value2=103299.000000
</object>

<object>
type=101
name=Patterns Three Outside Up the bull model39text
hidden=1
descr=    Three Outside Up
color=3329434
selectable=0
angle=2700
date1=1681119300
value1=102764.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bear model40
hidden=1
descr=Harami
color=3937500
selectable=0
filling=0
date1=1681120800
date2=1681121100
value1=103330.000000
value2=103574.000000
</object>

<object>
type=101
name=Patterns Harami the bear model40text
hidden=1
descr=    Harami
color=3937500
selectable=0
angle=900
date1=1681120800
value1=103574.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bear model41
hidden=1
descr=Harami
color=3937500
selectable=0
filling=0
date1=1681122300
date2=1681122600
value1=103620.000000
value2=103921.000000
</object>

<object>
type=101
name=Patterns Harami the bear model41text
hidden=1
descr=    Harami
color=3937500
selectable=0
angle=900
date1=1681122300
value1=103921.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bear model42
hidden=1
descr=Harami
color=3937500
selectable=0
filling=0
date1=1681125900
date2=1681126200
value1=103722.000000
value2=103956.000000
</object>

<object>
type=101
name=Patterns Harami the bear model42text
hidden=1
descr=    Harami
color=3937500
selectable=0
angle=900
date1=1681125900
value1=103956.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Inside Down the bear model43
hidden=1
descr=Three Inside Down
color=3937500
width=2
selectable=0
filling=0
date1=1681125900
date2=1681126500
value1=103681.000000
value2=103956.000000
</object>

<object>
type=101
name=Patterns Three Inside Down the bear model43text
hidden=1
descr=    Three Inside Down
color=3937500
selectable=0
angle=900
date1=1681126500
value1=103956.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bear model44
hidden=1
descr=Harami
color=3937500
selectable=0
filling=0
date1=1681127400
date2=1681127700
value1=103666.000000
value2=103956.000000
</object>

<object>
type=101
name=Patterns Harami the bear model44text
hidden=1
descr=    Harami
color=3937500
selectable=0
angle=900
date1=1681127400
value1=103956.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model45
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1681134600
date2=1681134900
value1=103763.000000
value2=103844.000000
</object>

<object>
type=101
name=Patterns Matching Low the bull model45text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1681134600
value1=103763.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bear model46
hidden=1
descr=Harami
color=3937500
selectable=0
filling=0
date1=1681138800
date2=1681139100
value1=103722.000000
value2=103865.000000
</object>

<object>
type=101
name=Patterns Harami the bear model46text
hidden=1
descr=    Harami
color=3937500
selectable=0
angle=900
date1=1681138800
value1=103865.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami Cross the bull model47
hidden=1
descr=Harami Cross
color=3329434
selectable=0
filling=0
date1=1681142700
date2=1681143000
value1=103661.000000
value2=103890.000000
</object>

<object>
type=101
name=Patterns Harami Cross the bull model47text
hidden=1
descr=    Harami Cross
color=3329434
selectable=0
angle=2700
date1=1681142700
value1=103661.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Homing Pigeon the bull model48
hidden=1
descr=Homing Pigeon
color=3329434
selectable=0
filling=0
date1=1681142700
date2=1681143000
value1=103661.000000
value2=103890.000000
</object>

<object>
type=101
name=Patterns Homing Pigeon the bull model48text
hidden=1
descr=    Homing Pigeon
color=3329434
selectable=0
angle=2700
date1=1681142700
value1=103661.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bear model49
hidden=1
descr=Harami
color=3937500
selectable=0
filling=0
date1=1681214400
date2=1681214700
value1=107222.000000
value2=107492.000000
</object>

<object>
type=101
name=Patterns Harami the bear model49text
hidden=1
descr=    Harami
color=3937500
selectable=0
angle=900
date1=1681214400
value1=107492.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bear model50
hidden=1
descr=Harami
color=3937500
selectable=0
filling=0
date1=1681221600
date2=1681221900
value1=107467.000000
value2=107829.000000
</object>

<object>
type=101
name=Patterns Harami the bear model50text
hidden=1
descr=    Harami
color=3937500
selectable=0
angle=900
date1=1681221600
value1=107829.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bull model51
hidden=1
descr=Harami
color=3329434
selectable=0
filling=0
date1=1681230000
date2=1681230300
value1=108236.000000
value2=108435.000000
</object>

<object>
type=101
name=Patterns Harami the bull model51text
hidden=1
descr=    Harami
color=3329434
selectable=0
angle=2700
date1=1681230000
value1=108236.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Inside Up the bull model52
hidden=1
descr=Three Inside Up
color=3329434
width=2
selectable=0
filling=0
date1=1681230000
date2=1681230600
value1=108231.000000
value2=108435.000000
</object>

<object>
type=101
name=Patterns Three Inside Up the bull model52text
hidden=1
descr=    Three Inside Up
color=3329434
selectable=0
angle=2700
date1=1681230600
value1=108231.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bear model53
hidden=1
descr=Harami
color=3937500
selectable=0
filling=0
date1=1681232400
date2=1681232700
value1=108211.000000
value2=108537.000000
</object>

<object>
type=101
name=Patterns Harami the bear model53text
hidden=1
descr=    Harami
color=3937500
selectable=0
angle=900
date1=1681232400
value1=108537.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Engulfing the bear model54
hidden=1
descr=Engulfing
color=3937500
selectable=0
filling=0
date1=1681233900
date2=1681234200
value1=108527.000000
value2=108812.000000
</object>

<object>
type=101
name=Patterns Engulfing the bear model54text
hidden=1
descr=    Engulfing
color=3937500
selectable=0
angle=900
date1=1681233900
value1=108812.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Outside Down the bear model55
hidden=1
descr=Three Outside Down
color=3937500
width=2
selectable=0
filling=0
date1=1681233900
date2=1681234500
value1=108527.000000
value2=108812.000000
</object>

<object>
type=101
name=Patterns Three Outside Down the bear model55text
hidden=1
descr=    Three Outside Down
color=3937500
selectable=0
angle=900
date1=1681234500
value1=108812.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Engulfing the bull model56
hidden=1
descr=Engulfing
color=3329434
selectable=0
filling=0
date1=1681290000
date2=1681290300
value1=108185.000000
value2=108720.000000
</object>

<object>
type=101
name=Patterns Engulfing the bull model56text
hidden=1
descr=    Engulfing
color=3329434
selectable=0
angle=2700
date1=1681290000
value1=108185.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Engulfing the bear model57
hidden=1
descr=Engulfing
color=3937500
selectable=0
filling=0
date1=1681292700
date2=1681293000
value1=108600.000000
value2=109200.000000
</object>

<object>
type=101
name=Patterns Engulfing the bear model57text
hidden=1
descr=    Engulfing
color=3937500
selectable=0
angle=900
date1=1681292700
value1=109200.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bull model58
hidden=1
descr=Harami
color=3329434
selectable=0
filling=0
date1=1681299300
date2=1681299600
value1=108425.000000
value2=108960.000000
</object>

<object>
type=101
name=Patterns Harami the bull model58text
hidden=1
descr=    Harami
color=3329434
selectable=0
angle=2700
date1=1681299300
value1=108425.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Inside Up the bull model59
hidden=1
descr=Three Inside Up
color=3329434
width=2
selectable=0
filling=0
date1=1681299300
date2=1681299900
value1=108425.000000
value2=108960.000000
</object>

<object>
type=101
name=Patterns Three Inside Up the bull model59text
hidden=1
descr=    Three Inside Up
color=3329434
selectable=0
angle=2700
date1=1681299900
value1=108425.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bear model60
hidden=1
descr=Harami
color=3937500
selectable=0
filling=0
date1=1681303200
date2=1681303500
value1=108915.000000
value2=109180.000000
</object>

<object>
type=101
name=Patterns Harami the bear model60text
hidden=1
descr=    Harami
color=3937500
selectable=0
angle=900
date1=1681303200
value1=109180.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Inside Down the bear model61
hidden=1
descr=Three Inside Down
color=3937500
width=2
selectable=0
filling=0
date1=1681303200
date2=1681303800
value1=108915.000000
value2=109180.000000
</object>

<object>
type=101
name=Patterns Three Inside Down the bear model61text
hidden=1
descr=    Three Inside Down
color=3937500
selectable=0
angle=900
date1=1681303800
value1=109180.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Engulfing the bear model62
hidden=1
descr=Engulfing
color=3937500
selectable=0
filling=0
date1=1681305000
date2=1681305300
value1=109100.000000
value2=109235.000000
</object>

<object>
type=101
name=Patterns Engulfing the bear model62text
hidden=1
descr=    Engulfing
color=3937500
selectable=0
angle=900
date1=1681305000
value1=109235.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bear model63
hidden=1
descr=Harami
color=3937500
selectable=0
filling=0
date1=1681308900
date2=1681309200
value1=110090.000000
value2=110480.000000
</object>

<object>
type=101
name=Patterns Harami the bear model63text
hidden=1
descr=    Harami
color=3937500
selectable=0
angle=900
date1=1681308900
value1=110480.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bull model65
hidden=1
descr=Harami
color=3329434
selectable=0
filling=0
date1=1681465200
date2=1681465500
value1=108090.000000
value2=108400.000000
</object>

<object>
type=101
name=Patterns Harami the bull model65text
hidden=1
descr=    Harami
color=3329434
selectable=0
angle=2700
date1=1681465200
value1=108090.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Inside Up the bull model66
hidden=1
descr=Three Inside Up
color=3329434
width=2
selectable=0
filling=0
date1=1681465200
date2=1681465800
value1=108090.000000
value2=108400.000000
</object>

<object>
type=101
name=Patterns Three Inside Up the bull model66text
hidden=1
descr=    Three Inside Up
color=3329434
selectable=0
angle=2700
date1=1681465800
value1=108090.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bull model67
hidden=1
descr=Harami
color=3329434
selectable=0
filling=0
date1=1681467900
date2=1681468200
value1=106765.000000
value2=107245.000000
</object>

<object>
type=101
name=Patterns Harami the bull model67text
hidden=1
descr=    Harami
color=3329434
selectable=0
angle=2700
date1=1681467900
value1=106765.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Inside Up the bull model68
hidden=1
descr=Three Inside Up
color=3329434
width=2
selectable=0
filling=0
date1=1681467900
date2=1681468500
value1=106765.000000
value2=107665.000000
</object>

<object>
type=101
name=Patterns Three Inside Up the bull model68text
hidden=1
descr=    Three Inside Up
color=3329434
selectable=0
angle=2700
date1=1681468500
value1=106765.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Engulfing the bear model69
hidden=1
descr=Engulfing
color=3937500
selectable=0
filling=0
date1=1681485900
date2=1681486200
value1=108220.000000
value2=108385.000000
</object>

<object>
type=101
name=Patterns Engulfing the bear model69text
hidden=1
descr=    Engulfing
color=3937500
selectable=0
angle=900
date1=1681485900
value1=108385.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Outside Down the bear model70
hidden=1
descr=Three Outside Down
color=3937500
width=2
selectable=0
filling=0
date1=1681485900
date2=1681486500
value1=108210.000000
value2=108385.000000
</object>

<object>
type=101
name=Patterns Three Outside Down the bear model70text
hidden=1
descr=    Three Outside Down
color=3937500
selectable=0
angle=900
date1=1681486500
value1=108385.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami Cross the bull model71
hidden=1
descr=Harami Cross
color=3329434
selectable=0
filling=0
date1=1681487400
date2=1681487700
value1=108160.000000
value2=108280.000000
</object>

<object>
type=101
name=Patterns Harami Cross the bull model71text
hidden=1
descr=    Harami Cross
color=3329434
selectable=0
angle=2700
date1=1681487400
value1=108160.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Homing Pigeon the bull model72
hidden=1
descr=Homing Pigeon
color=3329434
selectable=0
filling=0
date1=1681487400
date2=1681487700
value1=108160.000000
value2=108280.000000
</object>

<object>
type=101
name=Patterns Homing Pigeon the bull model72text
hidden=1
descr=    Homing Pigeon
color=3329434
selectable=0
angle=2700
date1=1681487400
value1=108160.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=31
name=Patterns Hammer, the bull model73
hidden=1
descr=Hammer
color=3329434
selectable=0
date1=1681488300
value1=108145.000000
</object>

<object>
type=101
name=Patterns Hammer, the bull model73text
hidden=1
descr=    Hammer
color=3329434
selectable=0
angle=2700
date1=1681488300
value1=108145.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bear model74
hidden=1
descr=Harami
color=3937500
selectable=0
filling=0
date1=1681494000
date2=1681494300
value1=108700.000000
value2=108935.000000
</object>

<object>
type=101
name=Patterns Harami the bear model74text
hidden=1
descr=    Harami
color=3937500
selectable=0
angle=900
date1=1681494000
value1=108935.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bull model75
hidden=1
descr=Harami
color=3329434
selectable=0
filling=0
date1=1681722300
date2=1681722600
value1=108245.000000
value2=108585.000000
</object>

<object>
type=101
name=Patterns Harami the bull model75text
hidden=1
descr=    Harami
color=3329434
selectable=0
angle=2700
date1=1681722300
value1=108245.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=102
name=MARIBOZU
hidden=1
descr=MARIBOZU
color=32768
selectable=0
angle=0
pos_x=10
pos_y=0
fontsz=8
fontnm=Tahoma
anchorpos=4
refpoint=2
</object>

<object>
type=102
name=DOJI
hidden=1
descr=DOJI
color=16711680
selectable=0
angle=0
pos_x=10
pos_y=15
fontsz=8
fontnm=Tahoma
anchorpos=4
refpoint=2
</object>

<object>
type=102
name=SPINNING TOP
hidden=1
descr=SPINNING TOP
color=16711935
selectable=0
angle=0
pos_x=10
pos_y=30
fontsz=8
fontnm=Tahoma
anchorpos=4
refpoint=2
</object>

<object>
type=102
name=HAMMER
hidden=1
descr=HAMMER
color=16760576
selectable=0
angle=0
pos_x=10
pos_y=45
fontsz=8
fontnm=Tahoma
anchorpos=4
refpoint=2
</object>

<object>
type=102
name=TURN HAMMER
hidden=1
descr=TURN HAMMER
color=42495
selectable=0
angle=0
pos_x=10
pos_y=60
fontsz=8
fontnm=Tahoma
anchorpos=4
refpoint=2
</object>

<object>
type=102
name=LONG
hidden=1
descr=LONG
color=10061943
selectable=0
angle=0
pos_x=10
pos_y=75
fontsz=8
fontnm=Tahoma
anchorpos=4
refpoint=2
</object>

<object>
type=102
name=SHORT
hidden=1
descr=SHORT
selectable=0
angle=0
pos_x=10
pos_y=90
fontsz=8
fontnm=Tahoma
anchorpos=4
refpoint=2
</object>

<object>
type=20
name=Patterns Matching Low the bull model0
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1690994700
date2=1690995000
value1=3.330000
value2=3.350000
</object>

<object>
type=101
name=Patterns Matching Low the bull model0text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1690994700
value1=3.330000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model1
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691059500
date2=1691059800
value1=3.350000
value2=3.390000
</object>

<object>
type=101
name=Patterns Matching Low the bull model1text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691059500
value1=3.350000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model2
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691061600
date2=1691061900
value1=3.330000
value2=3.380000
</object>

<object>
type=101
name=Patterns Matching Low the bull model2text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691061600
value1=3.330000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Engulfing the bull model3
hidden=1
descr=Engulfing
color=3329434
selectable=0
filling=0
date1=1691061900
date2=1691062200
value1=3.330000
value2=3.360000
</object>

<object>
type=101
name=Patterns Engulfing the bull model3text
hidden=1
descr=    Engulfing
color=3329434
selectable=0
angle=2700
date1=1691061900
value1=3.330000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model4
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691063100
date2=1691063400
value1=3.350000
value2=3.370000
</object>

<object>
type=101
name=Patterns Matching Low the bull model4text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691063100
value1=3.350000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami Cross the bear model5
hidden=1
descr=Harami Cross
color=3937500
selectable=0
filling=0
date1=1691066400
date2=1691066700
value1=3.350000
value2=3.370000
</object>

<object>
type=101
name=Patterns Harami Cross the bear model5text
hidden=1
descr=    Harami Cross
color=3937500
selectable=0
angle=900
date1=1691066400
value1=3.370000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Inside Down the bear model6
hidden=1
descr=Three Inside Down
color=3937500
width=2
selectable=0
filling=0
date1=1691066400
date2=1691067000
value1=3.350000
value2=3.370000
</object>

<object>
type=101
name=Patterns Three Inside Down the bear model6text
hidden=1
descr=    Three Inside Down
color=3937500
selectable=0
angle=900
date1=1691067000
value1=3.370000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model7
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691067000
date2=1691067300
value1=3.350000
value2=3.370000
</object>

<object>
type=101
name=Patterns Matching Low the bull model7text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691067000
value1=3.350000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model8
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691067600
date2=1691067900
value1=3.330000
value2=3.360000
</object>

<object>
type=101
name=Patterns Matching Low the bull model8text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691067600
value1=3.330000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Tri Star the bull model9
hidden=1
descr=Tri Star
color=3329434
width=2
selectable=0
filling=0
date1=1691067900
date2=1691068500
value1=3.320000
value2=3.350000
</object>

<object>
type=101
name=Patterns Tri Star the bull model9text
hidden=1
descr=    Tri Star
color=3329434
selectable=0
angle=2700
date1=1691068500
value1=3.320000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Tri Star the bull model10
hidden=1
descr=Tri Star
color=3329434
width=2
selectable=0
filling=0
date1=1691068200
date2=1691068800
value1=3.320000
value2=3.340000
</object>

<object>
type=101
name=Patterns Tri Star the bull model10text
hidden=1
descr=    Tri Star
color=3329434
selectable=0
angle=2700
date1=1691068800
value1=3.320000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami Cross the bear model11
hidden=1
descr=Harami Cross
color=3937500
selectable=0
filling=0
date1=1691072100
date2=1691072400
value1=3.300000
value2=3.320000
</object>

<object>
type=101
name=Patterns Harami Cross the bear model11text
hidden=1
descr=    Harami Cross
color=3937500
selectable=0
angle=900
date1=1691072100
value1=3.320000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model12
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691073900
date2=1691074200
value1=3.310000
value2=3.330000
</object>

<object>
type=101
name=Patterns Matching Low the bull model12text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691073900
value1=3.310000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model13
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691074800
date2=1691075100
value1=3.290000
value2=3.310000
</object>

<object>
type=101
name=Patterns Matching Low the bull model13text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691074800
value1=3.290000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model14
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691076300
date2=1691076600
value1=3.240000
value2=3.280000
</object>

<object>
type=101
name=Patterns Matching Low the bull model14text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691076300
value1=3.240000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Engulfing the bull model15
hidden=1
descr=Engulfing
color=3329434
selectable=0
filling=0
date1=1691145000
date2=1691145300
value1=3.140000
value2=3.170000
</object>

<object>
type=101
name=Patterns Engulfing the bull model15text
hidden=1
descr=    Engulfing
color=3329434
selectable=0
angle=2700
date1=1691145000
value1=3.140000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Doji Star the bull model16
hidden=1
descr=Doji Star
color=3329434
selectable=0
filling=0
date1=1691156700
date2=1691157000
value1=3.150000
value2=3.170000
</object>

<object>
type=101
name=Patterns Doji Star the bull model16text
hidden=1
descr=    Doji Star
color=3329434
selectable=0
angle=2700
date1=1691156700
value1=3.150000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model17
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691159700
date2=1691160000
value1=3.140000
value2=3.160000
</object>

<object>
type=101
name=Patterns Matching Low the bull model17text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691159700
value1=3.140000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model18
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691161200
date2=1691161500
value1=3.120000
value2=3.150000
</object>

<object>
type=101
name=Patterns Matching Low the bull model18text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691161200
value1=3.120000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model19
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691163600
date2=1691163900
value1=3.080000
value2=3.120000
</object>

<object>
type=101
name=Patterns Matching Low the bull model19text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691163600
value1=3.080000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model20
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691164500
date2=1691164800
value1=3.060000
value2=3.100000
</object>

<object>
type=101
name=Patterns Matching Low the bull model20text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691164500
value1=3.060000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami Cross the bull model21
hidden=1
descr=Harami Cross
color=3329434
selectable=0
filling=0
date1=1691165700
date2=1691166000
value1=3.080000
value2=3.100000
</object>

<object>
type=101
name=Patterns Harami Cross the bull model21text
hidden=1
descr=    Harami Cross
color=3329434
selectable=0
angle=2700
date1=1691165700
value1=3.080000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Homing Pigeon the bull model22
hidden=1
descr=Homing Pigeon
color=3329434
selectable=0
filling=0
date1=1691165700
date2=1691166000
value1=3.080000
value2=3.100000
</object>

<object>
type=101
name=Patterns Homing Pigeon the bull model22text
hidden=1
descr=    Homing Pigeon
color=3329434
selectable=0
angle=2700
date1=1691165700
value1=3.080000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Doji Star the bull model23
hidden=1
descr=Doji Star
color=3329434
selectable=0
filling=0
date1=1691166900
date2=1691167200
value1=3.060000
value2=3.090000
</object>

<object>
type=101
name=Patterns Doji Star the bull model23text
hidden=1
descr=    Doji Star
color=3329434
selectable=0
angle=2700
date1=1691166900
value1=3.060000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=31
name=Patterns Hammer, the bull model24
hidden=1
descr=Hammer
color=3329434
selectable=0
date1=1691402700
value1=3.040000
</object>

<object>
type=101
name=Patterns Hammer, the bull model24text
hidden=1
descr=    Hammer
color=3329434
selectable=0
angle=2700
date1=1691402700
value1=3.040000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Engulfing the bull model25
hidden=1
descr=Engulfing
color=3329434
selectable=0
filling=0
date1=1691404200
date2=1691404500
value1=3.010000
value2=3.040000
</object>

<object>
type=101
name=Patterns Engulfing the bull model25text
hidden=1
descr=    Engulfing
color=3329434
selectable=0
angle=2700
date1=1691404200
value1=3.010000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model26
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691404800
date2=1691405100
value1=3.000000
value2=3.040000
</object>

<object>
type=101
name=Patterns Matching Low the bull model26text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691404800
value1=3.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami Cross the bull model27
hidden=1
descr=Harami Cross
color=3329434
selectable=0
filling=0
date1=1691407200
date2=1691407500
value1=3.010000
value2=3.030000
</object>

<object>
type=101
name=Patterns Harami Cross the bull model27text
hidden=1
descr=    Harami Cross
color=3329434
selectable=0
angle=2700
date1=1691407200
value1=3.010000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model28
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691409000
date2=1691409300
value1=3.000000
value2=3.030000
</object>

<object>
type=101
name=Patterns Matching Low the bull model28text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691409000
value1=3.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model29
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691414700
date2=1691415000
value1=3.040000
value2=3.050000
</object>

<object>
type=101
name=Patterns Matching Low the bull model29text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691414700
value1=3.040000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model30
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691417100
date2=1691417400
value1=3.040000
value2=3.060000
</object>

<object>
type=101
name=Patterns Matching Low the bull model30text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691417100
value1=3.040000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Tri Star the bull model31
hidden=1
descr=Tri Star
color=3329434
width=2
selectable=0
filling=0
date1=1691417700
date2=1691418300
value1=3.030000
value2=3.050000
</object>

<object>
type=101
name=Patterns Tri Star the bull model31text
hidden=1
descr=    Tri Star
color=3329434
selectable=0
angle=2700
date1=1691418300
value1=3.030000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model32
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691420100
date2=1691420400
value1=3.040000
value2=3.060000
</object>

<object>
type=101
name=Patterns Matching Low the bull model32text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691420100
value1=3.040000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model33
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691421300
date2=1691421600
value1=3.040000
value2=3.060000
</object>

<object>
type=101
name=Patterns Matching Low the bull model33text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691421300
value1=3.040000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model34
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691423700
date2=1691424000
value1=3.030000
value2=3.050000
</object>

<object>
type=101
name=Patterns Matching Low the bull model34text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691423700
value1=3.030000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model35
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691424300
date2=1691424600
value1=3.010000
value2=3.050000
</object>

<object>
type=101
name=Patterns Matching Low the bull model35text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691424300
value1=3.010000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Tri Star the bull model36
hidden=1
descr=Tri Star
color=3329434
width=2
selectable=0
filling=0
date1=1691426400
date2=1691427000
value1=3.000000
value2=3.020000
</object>

<object>
type=101
name=Patterns Tri Star the bull model36text
hidden=1
descr=    Tri Star
color=3329434
selectable=0
angle=2700
date1=1691427000
value1=3.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Homing Pigeon the bull model37
hidden=1
descr=Homing Pigeon
color=3329434
selectable=0
filling=0
date1=1691488800
date2=1691489400
value1=2.910000
value2=2.970000
</object>

<object>
type=101
name=Patterns Homing Pigeon the bull model37text
hidden=1
descr=    Homing Pigeon
color=3329434
selectable=0
angle=2700
date1=1691488800
value1=2.910000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami Cross the bull model38
hidden=1
descr=Harami Cross
color=3329434
selectable=0
filling=0
date1=1691491500
date2=1691491800
value1=2.940000
value2=2.970000
</object>

<object>
type=101
name=Patterns Harami Cross the bull model38text
hidden=1
descr=    Harami Cross
color=3329434
selectable=0
angle=2700
date1=1691491500
value1=2.940000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=32
name=Patterns Hanging Man the bear model39
hidden=1
descr=Hanging Man
color=3937500
selectable=0
anchorpos=1
date1=1691492400
value1=2.970000
</object>

<object>
type=101
name=Patterns Hanging Man the bear model39text
hidden=1
descr=    Hanging Man
color=3937500
selectable=0
angle=900
date1=1691492400
value1=2.970000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model40
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691495700
date2=1691496000
value1=2.970000
value2=2.990000
</object>

<object>
type=101
name=Patterns Matching Low the bull model40text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691495700
value1=2.970000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami Cross the bear model41
hidden=1
descr=Harami Cross
color=3937500
selectable=0
filling=0
date1=1691506500
date2=1691506800
value1=3.000000
value2=3.030000
</object>

<object>
type=101
name=Patterns Harami Cross the bear model41text
hidden=1
descr=    Harami Cross
color=3937500
selectable=0
angle=900
date1=1691506500
value1=3.030000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Inside Down the bear model42
hidden=1
descr=Three Inside Down
color=3937500
width=2
selectable=0
filling=0
date1=1691506500
date2=1691507100
value1=3.000000
value2=3.030000
</object>

<object>
type=101
name=Patterns Three Inside Down the bear model42text
hidden=1
descr=    Three Inside Down
color=3937500
selectable=0
angle=900
date1=1691507100
value1=3.030000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model43
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691507100
date2=1691507400
value1=3.000000
value2=3.020000
</object>

<object>
type=101
name=Patterns Matching Low the bull model43text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691507100
value1=3.000000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Tri Star the bear model44
hidden=1
descr=Tri Star
color=3937500
width=2
selectable=0
filling=0
date1=1691511000
date2=1691511600
value1=3.000000
value2=3.010000
</object>

<object>
type=101
name=Patterns Tri Star the bear model44text
hidden=1
descr=    Tri Star
color=3937500
selectable=0
angle=900
date1=1691511600
value1=3.010000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=31
name=Patterns Invert Hammer the bull model45
hidden=1
descr=Inverted Hammer
color=3329434
selectable=0
date1=1691575500
value1=2.990000
</object>

<object>
type=101
name=Patterns Invert Hammer the bull model45text
hidden=1
descr=    Inverted Hammer
color=3329434
selectable=0
angle=2700
date1=1691575500
value1=2.990000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami Cross the bull model46
hidden=1
descr=Harami Cross
color=3329434
selectable=0
filling=0
date1=1691576100
date2=1691576400
value1=2.950000
value2=3.010000
</object>

<object>
type=101
name=Patterns Harami Cross the bull model46text
hidden=1
descr=    Harami Cross
color=3329434
selectable=0
angle=2700
date1=1691576100
value1=2.950000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Homing Pigeon the bull model47
hidden=1
descr=Homing Pigeon
color=3329434
selectable=0
filling=0
date1=1691576100
date2=1691576400
value1=2.950000
value2=3.010000
</object>

<object>
type=101
name=Patterns Homing Pigeon the bull model47text
hidden=1
descr=    Homing Pigeon
color=3329434
selectable=0
angle=2700
date1=1691576100
value1=2.950000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model48
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691582100
date2=1691582400
value1=2.940000
value2=2.960000
</object>

<object>
type=101
name=Patterns Matching Low the bull model48text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691582100
value1=2.940000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model49
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691583300
date2=1691583600
value1=2.930000
value2=2.940000
</object>

<object>
type=101
name=Patterns Matching Low the bull model49text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691583300
value1=2.930000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Doji Star the bear model50
hidden=1
descr=Doji Star
color=3937500
selectable=0
filling=0
date1=1691587500
date2=1691587800
value1=2.960000
value2=2.980000
</object>

<object>
type=101
name=Patterns Doji Star the bear model50text
hidden=1
descr=    Doji Star
color=3937500
selectable=0
angle=900
date1=1691587500
value1=2.980000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami Cross the bear model51
hidden=1
descr=Harami Cross
color=3937500
selectable=0
filling=0
date1=1691590800
date2=1691591100
value1=2.990000
value2=3.010000
</object>

<object>
type=101
name=Patterns Harami Cross the bear model51text
hidden=1
descr=    Harami Cross
color=3937500
selectable=0
angle=900
date1=1691590800
value1=3.010000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model52
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691593800
date2=1691594100
value1=2.980000
value2=3.000000
</object>

<object>
type=101
name=Patterns Matching Low the bull model52text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691593800
value1=2.980000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model53
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691596200
date2=1691596500
value1=2.980000
value2=2.990000
</object>

<object>
type=101
name=Patterns Matching Low the bull model53text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691596200
value1=2.980000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model54
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691598300
date2=1691598600
value1=2.960000
value2=2.990000
</object>

<object>
type=101
name=Patterns Matching Low the bull model54text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691598300
value1=2.960000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model55
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691598600
date2=1691598900
value1=2.960000
value2=2.980000
</object>

<object>
type=101
name=Patterns Matching Low the bull model55text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691598600
value1=2.960000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model56
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691663100
date2=1691663400
value1=2.960000
value2=2.990000
</object>

<object>
type=101
name=Patterns Matching Low the bull model56text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691663100
value1=2.960000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami Cross the bear model57
hidden=1
descr=Harami Cross
color=3937500
selectable=0
filling=0
date1=1691667000
date2=1691667300
value1=2.970000
value2=2.990000
</object>

<object>
type=101
name=Patterns Harami Cross the bear model57text
hidden=1
descr=    Harami Cross
color=3937500
selectable=0
angle=900
date1=1691667000
value1=2.990000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Inside Down the bear model58
hidden=1
descr=Three Inside Down
color=3937500
width=2
selectable=0
filling=0
date1=1691667000
date2=1691667600
value1=2.960000
value2=2.990000
</object>

<object>
type=101
name=Patterns Three Inside Down the bear model58text
hidden=1
descr=    Three Inside Down
color=3937500
selectable=0
angle=900
date1=1691667600
value1=2.990000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model59
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691667600
date2=1691667900
value1=2.960000
value2=2.990000
</object>

<object>
type=101
name=Patterns Matching Low the bull model59text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691667600
value1=2.960000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model60
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691670000
date2=1691670300
value1=2.950000
value2=2.970000
</object>

<object>
type=101
name=Patterns Matching Low the bull model60text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691670000
value1=2.950000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model61
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691673300
date2=1691673600
value1=2.940000
value2=2.970000
</object>

<object>
type=101
name=Patterns Matching Low the bull model61text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691673300
value1=2.940000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model62
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691677500
date2=1691677800
value1=2.930000
value2=2.970000
</object>

<object>
type=101
name=Patterns Matching Low the bull model62text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691677500
value1=2.930000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Doji Star the bull model63
hidden=1
descr=Doji Star
color=3329434
selectable=0
filling=0
date1=1691680200
date2=1691680500
value1=2.920000
value2=2.940000
</object>

<object>
type=101
name=Patterns Doji Star the bull model63text
hidden=1
descr=    Doji Star
color=3329434
selectable=0
angle=2700
date1=1691680200
value1=2.920000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model64
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691681100
date2=1691681400
value1=2.910000
value2=2.930000
</object>

<object>
type=101
name=Patterns Matching Low the bull model64text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691681100
value1=2.910000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model65
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691683800
date2=1691684100
value1=2.880000
value2=2.890000
</object>

<object>
type=101
name=Patterns Matching Low the bull model65text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691683800
value1=2.880000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Tri Star the bear model66
hidden=1
descr=Tri Star
color=3937500
width=2
selectable=0
filling=0
date1=1691749500
date2=1691750100
value1=2.890000
value2=2.950000
</object>

<object>
type=101
name=Patterns Tri Star the bear model66text
hidden=1
descr=    Tri Star
color=3937500
selectable=0
angle=900
date1=1691750100
value1=2.950000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=32
name=Patterns Hanging Man the bear model67
hidden=1
descr=Hanging Man
color=3937500
selectable=0
anchorpos=1
date1=1691751600
value1=2.920000
</object>

<object>
type=101
name=Patterns Hanging Man the bear model67text
hidden=1
descr=    Hanging Man
color=3937500
selectable=0
angle=900
date1=1691751600
value1=2.920000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model68
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691751900
date2=1691752200
value1=2.890000
value2=2.920000
</object>

<object>
type=101
name=Patterns Matching Low the bull model68text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691751900
value1=2.890000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model69
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691754000
date2=1691754300
value1=2.870000
value2=2.890000
</object>

<object>
type=101
name=Patterns Matching Low the bull model69text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691754000
value1=2.870000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Engulfing the bear model70
hidden=1
descr=Engulfing
color=3937500
selectable=0
filling=0
date1=1691759700
date2=1691760000
value1=2.920000
value2=2.950000
</object>

<object>
type=101
name=Patterns Engulfing the bear model70text
hidden=1
descr=    Engulfing
color=3937500
selectable=0
angle=900
date1=1691759700
value1=2.950000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Outside Down the bear model71
hidden=1
descr=Three Outside Down
color=3937500
width=2
selectable=0
filling=0
date1=1691759700
date2=1691760300
value1=2.910000
value2=2.950000
</object>

<object>
type=101
name=Patterns Three Outside Down the bear model71text
hidden=1
descr=    Three Outside Down
color=3937500
selectable=0
angle=900
date1=1691760300
value1=2.950000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami Cross the bull model72
hidden=1
descr=Harami Cross
color=3329434
selectable=0
filling=0
date1=1691762100
date2=1691762400
value1=2.900000
value2=2.930000
</object>

<object>
type=101
name=Patterns Harami Cross the bull model72text
hidden=1
descr=    Harami Cross
color=3329434
selectable=0
angle=2700
date1=1691762100
value1=2.900000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Homing Pigeon the bull model73
hidden=1
descr=Homing Pigeon
color=3329434
selectable=0
filling=0
date1=1691762100
date2=1691762400
value1=2.900000
value2=2.930000
</object>

<object>
type=101
name=Patterns Homing Pigeon the bull model73text
hidden=1
descr=    Homing Pigeon
color=3329434
selectable=0
angle=2700
date1=1691762100
value1=2.900000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model74
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691766600
date2=1691766900
value1=2.850000
value2=2.880000
</object>

<object>
type=101
name=Patterns Matching Low the bull model74text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691766600
value1=2.850000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model75
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1691768700
date2=1691769000
value1=2.850000
value2=2.870000
</object>

<object>
type=101
name=Patterns Matching Low the bull model75text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1691768700
value1=2.850000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Doji Star the bull model76
hidden=1
descr=Doji Star
color=3329434
selectable=0
filling=0
date1=1692007500
date2=1692007800
value1=2.840000
value2=2.880000
</object>

<object>
type=101
name=Patterns Doji Star the bull model76text
hidden=1
descr=    Doji Star
color=3329434
selectable=0
angle=2700
date1=1692007500
value1=2.840000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model77
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1692009300
date2=1692009600
value1=2.830000
value2=2.850000
</object>

<object>
type=101
name=Patterns Matching Low the bull model77text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1692009300
value1=2.830000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Doji Star the bear model78
hidden=1
descr=Doji Star
color=3937500
selectable=0
filling=0
date1=1692009900
date2=1692010200
value1=2.830000
value2=2.870000
</object>

<object>
type=101
name=Patterns Doji Star the bear model78text
hidden=1
descr=    Doji Star
color=3937500
selectable=0
angle=900
date1=1692009900
value1=2.870000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami Cross the bull model79
hidden=1
descr=Harami Cross
color=3329434
selectable=0
filling=0
date1=1692015000
date2=1692015300
value1=2.850000
value2=2.870000
</object>

<object>
type=101
name=Patterns Harami Cross the bull model79text
hidden=1
descr=    Harami Cross
color=3329434
selectable=0
angle=2700
date1=1692015000
value1=2.850000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Homing Pigeon the bull model80
hidden=1
descr=Homing Pigeon
color=3329434
selectable=0
filling=0
date1=1692015000
date2=1692015300
value1=2.850000
value2=2.870000
</object>

<object>
type=101
name=Patterns Homing Pigeon the bull model80text
hidden=1
descr=    Homing Pigeon
color=3329434
selectable=0
angle=2700
date1=1692015000
value1=2.850000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model81
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1692020700
date2=1692021000
value1=2.860000
value2=2.880000
</object>

<object>
type=101
name=Patterns Matching Low the bull model81text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1692020700
value1=2.860000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model82
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1692024300
date2=1692024600
value1=2.890000
value2=2.910000
</object>

<object>
type=101
name=Patterns Matching Low the bull model82text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1692024300
value1=2.890000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Tri Star the bull model83
hidden=1
descr=Tri Star
color=3329434
width=2
selectable=0
filling=0
date1=1692024600
date2=1692025200
value1=2.890000
value2=2.900000
</object>

<object>
type=101
name=Patterns Tri Star the bull model83text
hidden=1
descr=    Tri Star
color=3329434
selectable=0
angle=2700
date1=1692025200
value1=2.890000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model84
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1692025500
date2=1692025800
value1=2.880000
value2=2.900000
</object>

<object>
type=101
name=Patterns Matching Low the bull model84text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1692025500
value1=2.880000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model85
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1692026400
date2=1692026700
value1=2.870000
value2=2.890000
</object>

<object>
type=101
name=Patterns Matching Low the bull model85text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1692026400
value1=2.870000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami Cross the bull model86
hidden=1
descr=Harami Cross
color=3329434
selectable=0
filling=0
date1=1692028200
date2=1692028500
value1=2.860000
value2=2.890000
</object>

<object>
type=101
name=Patterns Harami Cross the bull model86text
hidden=1
descr=    Harami Cross
color=3329434
selectable=0
angle=2700
date1=1692028200
value1=2.860000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Homing Pigeon the bull model87
hidden=1
descr=Homing Pigeon
color=3329434
selectable=0
filling=0
date1=1692028200
date2=1692028500
value1=2.860000
value2=2.890000
</object>

<object>
type=101
name=Patterns Homing Pigeon the bull model87text
hidden=1
descr=    Homing Pigeon
color=3329434
selectable=0
angle=2700
date1=1692028200
value1=2.860000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=31
name=Patterns Hammer, the bull model88
hidden=1
descr=Hammer
color=3329434
selectable=0
date1=1692030300
value1=2.810000
</object>

<object>
type=101
name=Patterns Hammer, the bull model88text
hidden=1
descr=    Hammer
color=3329434
selectable=0
angle=2700
date1=1692030300
value1=2.810000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model89
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1692030000
date2=1692030300
value1=2.810000
value2=2.850000
</object>

<object>
type=101
name=Patterns Matching Low the bull model89text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1692030000
value1=2.810000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model90
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1692099000
date2=1692099300
value1=2.530000
value2=2.600000
</object>

<object>
type=101
name=Patterns Matching Low the bull model90text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1692099000
value1=2.530000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=31
name=Patterns Hammer, the bull model91
hidden=1
descr=Hammer
color=3329434
selectable=0
date1=1692099900
value1=2.550000
</object>

<object>
type=101
name=Patterns Hammer, the bull model91text
hidden=1
descr=    Hammer
color=3329434
selectable=0
angle=2700
date1=1692099900
value1=2.550000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami Cross the bear model92
hidden=1
descr=Harami Cross
color=3937500
selectable=0
filling=0
date1=1692102600
date2=1692102900
value1=2.660000
value2=2.700000
</object>

<object>
type=101
name=Patterns Harami Cross the bear model92text
hidden=1
descr=    Harami Cross
color=3937500
selectable=0
angle=900
date1=1692102600
value1=2.700000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three Inside Down the bear model93
hidden=1
descr=Three Inside Down
color=3937500
width=2
selectable=0
filling=0
date1=1692102600
date2=1692103200
value1=2.660000
value2=2.700000
</object>

<object>
type=101
name=Patterns Three Inside Down the bear model93text
hidden=1
descr=    Three Inside Down
color=3937500
selectable=0
angle=900
date1=1692103200
value1=2.700000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model94
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1692107100
date2=1692107400
value1=2.660000
value2=2.680000
</object>

<object>
type=101
name=Patterns Matching Low the bull model94text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1692107100
value1=2.660000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Doji Star the bear model95
hidden=1
descr=Doji Star
color=3937500
selectable=0
filling=0
date1=1692107700
date2=1692108000
value1=2.670000
value2=2.700000
</object>

<object>
type=101
name=Patterns Doji Star the bear model95text
hidden=1
descr=    Doji Star
color=3937500
selectable=0
angle=900
date1=1692107700
value1=2.700000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model96
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1692115500
date2=1692115800
value1=2.750000
value2=2.790000
</object>

<object>
type=101
name=Patterns Matching Low the bull model96text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1692115500
value1=2.750000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami Cross the bear model97
hidden=1
descr=Harami Cross
color=3937500
selectable=0
filling=0
date1=1692116100
date2=1692116400
value1=2.750000
value2=2.790000
</object>

<object>
type=101
name=Patterns Harami Cross the bear model97text
hidden=1
descr=    Harami Cross
color=3937500
selectable=0
angle=900
date1=1692116100
value1=2.790000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=31
name=Patterns Invert Hammer the bull model98
hidden=1
descr=Inverted Hammer
color=3329434
selectable=0
date1=1692117600
value1=2.750000
</object>

<object>
type=101
name=Patterns Invert Hammer the bull model98text
hidden=1
descr=    Inverted Hammer
color=3329434
selectable=0
angle=2700
date1=1692117600
value1=2.750000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model99
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1692180600
date2=1692180900
value1=2.750000
value2=2.780000
</object>

<object>
type=101
name=Patterns Matching Low the bull model99text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1692180600
value1=2.750000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=31
name=Patterns Invert Hammer the bull model100
hidden=1
descr=Inverted Hammer
color=3329434
selectable=0
date1=1692182100
value1=2.750000
</object>

<object>
type=101
name=Patterns Invert Hammer the bull model100text
hidden=1
descr=    Inverted Hammer
color=3329434
selectable=0
angle=2700
date1=1692182100
value1=2.750000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bear model101
hidden=1
descr=Harami
color=3937500
selectable=0
filling=0
date1=1692184800
date2=1692185100
value1=2.760000
value2=2.790000
</object>

<object>
type=101
name=Patterns Harami the bear model101text
hidden=1
descr=    Harami
color=3937500
selectable=0
angle=900
date1=1692184800
value1=2.790000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bear model102
hidden=1
descr=Harami
color=3937500
selectable=0
filling=0
date1=1692186600
date2=1692186900
value1=2.780000
value2=2.820000
</object>

<object>
type=101
name=Patterns Harami the bear model102text
hidden=1
descr=    Harami
color=3937500
selectable=0
angle=900
date1=1692186600
value1=2.820000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Doji Star the bear model103
hidden=1
descr=Doji Star
color=3937500
selectable=0
filling=0
date1=1692188700
date2=1692189000
value1=2.820000
value2=2.850000
</object>

<object>
type=101
name=Patterns Doji Star the bear model103text
hidden=1
descr=    Doji Star
color=3937500
selectable=0
angle=900
date1=1692188700
value1=2.850000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model104
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1692189900
date2=1692190200
value1=2.820000
value2=2.840000
</object>

<object>
type=101
name=Patterns Matching Low the bull model104text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1692189900
value1=2.820000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model105
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1692190800
date2=1692191100
value1=2.800000
value2=2.830000
</object>

<object>
type=101
name=Patterns Matching Low the bull model105text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1692190800
value1=2.800000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Three White Soldiers the bull model106
hidden=1
descr=Three White Soldiers
color=3329434
width=2
selectable=0
filling=0
date1=1692192300
date2=1692192900
value1=2.800000
value2=2.820000
</object>

<object>
type=101
name=Patterns Three White Soldiers the bull model106text
hidden=1
descr=    Three White Soldiers
color=3329434
selectable=0
angle=2700
date1=1692192900
value1=2.800000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami Cross the bear model107
hidden=1
descr=Harami Cross
color=3937500
selectable=0
filling=0
date1=1692195600
date2=1692196200
value1=2.810000
value2=2.830000
</object>

<object>
type=101
name=Patterns Harami Cross the bear model107text
hidden=1
descr=    Harami Cross
color=3937500
selectable=0
angle=900
date1=1692195600
value1=2.830000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bear model108
hidden=1
descr=Harami
color=3937500
selectable=0
filling=0
date1=1692198600
date2=1692198900
value1=2.890000
value2=2.960000
</object>

<object>
type=101
name=Patterns Harami the bear model108text
hidden=1
descr=    Harami
color=3937500
selectable=0
angle=900
date1=1692198600
value1=2.960000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami Cross the bear model109
hidden=1
descr=Harami Cross
color=3937500
selectable=0
filling=0
date1=1692200700
date2=1692201000
value1=2.930000
value2=2.970000
</object>

<object>
type=101
name=Patterns Harami Cross the bear model109text
hidden=1
descr=    Harami Cross
color=3937500
selectable=0
angle=900
date1=1692200700
value1=2.970000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami Cross the bear model110
hidden=1
descr=Harami Cross
color=3937500
selectable=0
filling=0
date1=1692201900
date2=1692202200
value1=2.950000
value2=3.030000
</object>

<object>
type=101
name=Patterns Harami Cross the bear model110text
hidden=1
descr=    Harami Cross
color=3937500
selectable=0
angle=900
date1=1692201900
value1=3.030000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami Cross the bear model111
hidden=1
descr=Harami Cross
color=3937500
selectable=0
filling=0
date1=1692204300
date2=1692204600
value1=2.940000
value2=2.990000
</object>

<object>
type=101
name=Patterns Harami Cross the bear model111text
hidden=1
descr=    Harami Cross
color=3937500
selectable=0
angle=900
date1=1692204300
value1=2.990000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami the bull model112
hidden=1
descr=Harami
color=3329434
selectable=0
filling=0
date1=1692266700
date2=1692267000
value1=2.930000
value2=3.000000
</object>

<object>
type=101
name=Patterns Harami the bull model112text
hidden=1
descr=    Harami
color=3329434
selectable=0
angle=2700
date1=1692266700
value1=2.930000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model113
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1692278100
date2=1692278400
value1=2.890000
value2=2.910000
</object>

<object>
type=101
name=Patterns Matching Low the bull model113text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1692278100
value1=2.890000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model114
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1692280800
date2=1692281100
value1=2.860000
value2=2.890000
</object>

<object>
type=101
name=Patterns Matching Low the bull model114text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1692280800
value1=2.860000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model115
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1692282900
date2=1692283200
value1=2.840000
value2=2.870000
</object>

<object>
type=101
name=Patterns Matching Low the bull model115text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1692282900
value1=2.840000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=31
name=Patterns Hammer, the bull model116
hidden=1
descr=Hammer
color=3329434
selectable=0
date1=1692353100
value1=2.760000
</object>

<object>
type=101
name=Patterns Hammer, the bull model116text
hidden=1
descr=    Hammer
color=3329434
selectable=0
angle=2700
date1=1692353100
value1=2.760000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=32
name=Patterns Hanging Man the bear model117
hidden=1
descr=Hanging Man
color=3937500
selectable=0
anchorpos=1
date1=1692355500
value1=2.880000
</object>

<object>
type=101
name=Patterns Hanging Man the bear model117text
hidden=1
descr=    Hanging Man
color=3937500
selectable=0
angle=900
date1=1692355500
value1=2.880000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami Cross the bear model118
hidden=1
descr=Harami Cross
color=3937500
selectable=0
filling=0
date1=1692360300
date2=1692360600
value1=2.970000
value2=3.010000
</object>

<object>
type=101
name=Patterns Harami Cross the bear model118text
hidden=1
descr=    Harami Cross
color=3937500
selectable=0
angle=900
date1=1692360300
value1=3.010000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=32
name=Patterns Hanging Man the bear model119
hidden=1
descr=Hanging Man
color=3937500
selectable=0
anchorpos=1
date1=1692363900
value1=3.010000
</object>

<object>
type=101
name=Patterns Hanging Man the bear model119text
hidden=1
descr=    Hanging Man
color=3937500
selectable=0
angle=900
date1=1692363900
value1=3.010000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Doji Star the bull model120
hidden=1
descr=Doji Star
color=3329434
selectable=0
filling=0
date1=1692364500
date2=1692364800
value1=2.980000
value2=3.000000
</object>

<object>
type=101
name=Patterns Doji Star the bull model120text
hidden=1
descr=    Doji Star
color=3329434
selectable=0
angle=2700
date1=1692364500
value1=2.980000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model121
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1692368400
date2=1692368700
value1=2.970000
value2=3.000000
</object>

<object>
type=101
name=Patterns Matching Low the bull model121text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1692368400
value1=2.970000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Harami Cross the bull model122
hidden=1
descr=Harami Cross
color=3329434
selectable=0
filling=0
date1=1692369000
date2=1692369300
value1=2.970000
value2=2.990000
</object>

<object>
type=101
name=Patterns Harami Cross the bull model122text
hidden=1
descr=    Harami Cross
color=3329434
selectable=0
angle=2700
date1=1692369000
value1=2.970000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Homing Pigeon the bull model123
hidden=1
descr=Homing Pigeon
color=3329434
selectable=0
filling=0
date1=1692369000
date2=1692369300
value1=2.970000
value2=2.990000
</object>

<object>
type=101
name=Patterns Homing Pigeon the bull model123text
hidden=1
descr=    Homing Pigeon
color=3329434
selectable=0
angle=2700
date1=1692369000
value1=2.970000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model124
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1692370500
date2=1692370800
value1=2.960000
value2=2.980000
</object>

<object>
type=101
name=Patterns Matching Low the bull model124text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1692370500
value1=2.960000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model125
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1692371400
date2=1692371700
value1=2.940000
value2=2.970000
</object>

<object>
type=101
name=Patterns Matching Low the bull model125text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1692371400
value1=2.940000
fontsz=10
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=20
name=Patterns Matching Low the bull model126
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1692371700
date2=1692372000
value1=2.940000
value2=2.960000
</object>

<object>
type=101
name=Patterns Matching Low the bull model126text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1692371700
value1=2.940000
fontsz=10
fontnm=Tahoma
anchorpos=1
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