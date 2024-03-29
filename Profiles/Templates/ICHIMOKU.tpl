<chart>
id=133261182509213908
symbol=WIN@
description=IBOVESPA MINI - Por Vencimento (WINM23) - Ajuste Proporcional
period_type=0
period_size=5
digits=0
tick_size=1.000000
position_time=0
scale_fix=0
scale_fixed_min=107452.000000
scale_fixed_max=109353.000000
scale_fix11=0
scale_bar=0
scale_bar_val=1.000000
scale=32
mode=1
fore=1
grid=1
volume=0
scroll=0
shift=1
shift_size=32.321041
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
window_left=0
window_top=0
window_right=0
window_bottom=0
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

<window>
height=177.077576
objects=179

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
color=32768,16711680,16711935,16760576,42495,10061943,255,13828244
</graph>
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
name=Patterns Engulfing the bull model15
hidden=1
descr=Engulfing
color=3329434
selectable=0
filling=0
date1=1680612300
date2=1680612600
value1=103987.000000
value2=104135.000000
</object>

<object>
type=101
name=Patterns Engulfing the bull model15text
hidden=1
descr=    Engulfing
color=3329434
selectable=0
angle=2700
date1=1680612300
value1=103987.000000
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
name=Patterns Matching Low the bull model20
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1680691500
date2=1680691800
value1=103238.000000
value2=103676.000000
</object>

<object>
type=101
name=Patterns Matching Low the bull model20text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1680691500
value1=103238.000000
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
name=Patterns Matching Low the bull model29
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1680782700
date2=1680783000
value1=102637.000000
value2=102866.000000
</object>

<object>
type=101
name=Patterns Matching Low the bull model29text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1680782700
value1=102637.000000
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
name=Patterns Matching Low the bull model64
hidden=1
descr=Matching Low
color=3329434
selectable=0
filling=0
date1=1681386900
date2=1681387200
value1=108455.000000
value2=108615.000000
</object>

<object>
type=101
name=Patterns Matching Low the bull model64text
hidden=1
descr=    Matching Low
color=3329434
selectable=0
angle=2700
date1=1681386900
value1=108455.000000
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