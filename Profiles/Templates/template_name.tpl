<chart>
id=133055772004358015
symbol=WINV22
description=IBOVESPA MINI
period_type=1
period_size=1
digits=0
tick_size=5.000000
position_time=1658505600
scale_fix=0
scale_fixed_min=101690.000000
scale_fixed_max=117015.000000
scale_fix11=0
scale_bar=0
scale_bar_val=1.000000
scale=8
mode=1
fore=0
grid=1
volume=0
scroll=1
shift=1
shift_size=23.273657
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
window_left=104
window_top=104
window_right=1541
window_bottom=517
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
barup_color=2263842
bardown_color=3937500
bullcandle_color=2263842
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
name=LT Trade Panel Lite
path=Experts\Market\LT Trade Panel Lite.ex5
expertmode=1
<inputs>
info1====== < Main options > =====
id_janela=0
DigitosTicket=9
id_preco=0
id_dark=0
id_cor_lucro=16748574
id_cor_perda=4678655
id_tempo=2
id_historico=1
info7====== < One symbol mode > =====
id_ativo=
id_custom=0
info2====== < Chart shortcut buttons > =====
id_botoes=1
id_esquema=0
id_tamanho=16
id_teclado=2
info3====== < Show / hide > =====
exibir_result=1
exibir_res_dia=1
exibir_saldo=1
exibir_volume=1
exibir_conta=2
exibir_serv=1
exibir_tf=2
exibir_pipet=1
exibir_dicas=1
info4====== < Chart > =====
id_tempo_vela=0
exibir_oneclick=1
exibir_preco_tempo=3
exibir_simples=1
info5====== < Watermark > =====
id_marca=0
id_marca_tam=60
id_marca_cor=32768
info6===== < New candle alert > ====
id_vela_alerta=0
id_vela_msg=New candle!
info10====== < Other > =====
id_compacto=0
id_janela_tam=1
id_text_correcao=100
id_debug=0
</inputs>
</expert>

<window>
height=113.511330
objects=75

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
style=0
width=1
arrow=251
color=6908265
</graph>

<graph>
name=
draw=131
style=0
width=1
arrow=251
color=6908265
</graph>

<graph>
name=
draw=131
style=0
width=1
arrow=251
color=6908265
</graph>
period=20
deviation=2.000000
</indicator>
<object>
type=1
name=MaxDiaAnterior
hidden=1
color=8421504
style=1
selectable=0
value1=116445.000000
</object>

<object>
type=1
name=MinDiaAnterior
hidden=1
color=8421504
style=1
selectable=0
value1=115295.000000
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
type=102
name=LT_Copyright
hidden=1
descr=Litoral Trading™ 
color=10777186
selectable=0
angle=0
pos_x=4
pos_y=4
fontsz=7
fontnm=San Serif
anchorpos=4
refpoint=2
</object>

<object>
type=102
name=Label_Ativo
hidden=1
descr=WINV22
color=0
selectable=0
angle=0
pos_x=14
pos_y=29
fontsz=18
fontnm=Calibri
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=Label_Periodo
hidden=1
descr=1 Hora
color=0
selectable=0
angle=0
pos_x=236
pos_y=29
fontsz=18
fontnm=Calibri
anchorpos=6
refpoint=0
</object>

<object>
type=102
name=Label_Venda
hidden=1
descr=VENDA
color=16777215
selectable=0
angle=0
pos_x=61
pos_y=74
fontsz=11
fontnm=Arial Black
anchorpos=8
refpoint=0
</object>

<object>
type=102
name=Label_Bid
hidden=1
descr=0
color=16777215
selectable=0
angle=0
pos_x=61
pos_y=89
fontsz=9
fontnm=Calibri Bold
anchorpos=8
refpoint=0
</object>

<object>
type=102
name=Label_Compra
hidden=1
descr=COMPRA
color=16777215
selectable=0
angle=0
pos_x=188
pos_y=74
fontsz=11
fontnm=Arial Black
anchorpos=8
refpoint=0
</object>

<object>
type=102
name=Label_Ask
hidden=1
descr=0
color=16777215
selectable=0
angle=0
pos_x=188
pos_y=89
fontsz=9
fontnm=Calibri Bold
anchorpos=8
refpoint=0
</object>

<object>
type=102
name=Label_Spread
hidden=1
descr=Spread: 0
color=0
selectable=0
angle=0
pos_x=125
pos_y=127
fontsz=8
fontnm=Calibri
anchorpos=8
refpoint=0
</object>

<object>
type=102
name=Label_Tick
hidden=1
descr=Tick: 1.00
color=0
selectable=0
angle=0
pos_x=125
pos_y=139
fontsz=8
fontnm=Calibri
anchorpos=8
refpoint=0
</object>

<object>
type=102
name=Label_Swap_Venda
hidden=1
descr=Swap: N/A
color=128
selectable=0
angle=0
pos_x=48
pos_y=127
fontsz=8
fontnm=Calibri
anchorpos=8
refpoint=0
</object>

<object>
type=102
name=Label_Swap_Compra
hidden=1
descr=Swap: N/A
color=8388608
selectable=0
angle=0
pos_x=199
pos_y=127
fontsz=8
fontnm=Calibri
anchorpos=8
refpoint=0
</object>

<object>
type=102
name=Label_Margem_Venda
hidden=1
descr=Margem: 0.00
color=128
selectable=0
angle=0
pos_x=48
pos_y=139
fontsz=8
fontnm=Calibri
anchorpos=8
refpoint=0
</object>

<object>
type=102
name=Label_Margem_Compra
hidden=1
descr=Margem: 0.00
color=8388608
selectable=0
angle=0
pos_x=199
pos_y=139
fontsz=8
fontnm=Calibri
anchorpos=8
refpoint=0
</object>

<object>
type=102
name=Label_Separar3
hidden=1
descr=_________________________________
color=12632256
selectable=0
angle=0
pos_x=125
pos_y=145
fontsz=10
fontnm=Arial
anchorpos=8
refpoint=0
</object>

<object>
type=102
name=Label_Lote
hidden=1
descr=Volume
color=0
selectable=0
angle=0
pos_x=41
pos_y=163
fontsz=9
fontnm=Calibri
anchorpos=8
refpoint=0
</object>

<object>
type=102
name=Label_SL
hidden=1
descr=Stop Loss
color=0
selectable=0
angle=0
pos_x=125
pos_y=163
fontsz=9
fontnm=Calibri
anchorpos=8
refpoint=0
</object>

<object>
type=102
name=Label_TP
hidden=1
descr=Take Profit
color=0
selectable=0
angle=0
pos_x=200
pos_y=163
fontsz=9
fontnm=Calibri
anchorpos=8
refpoint=0
</object>

<object>
type=102
name=Label_Separar4
hidden=1
descr=_________________________________
color=12632256
selectable=0
angle=0
pos_x=125
pos_y=190
fontsz=10
fontnm=Arial
anchorpos=8
refpoint=0
</object>

<object>
type=102
name=Label_Lucro
hidden=1
descr=Resultado:
color=0
selectable=0
angle=0
pos_x=14
pos_y=199
fontsz=16
fontnm=Calibri
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=Label_Res_Aberto
hidden=1
descr=$ 0.00
color=16748574
selectable=0
angle=0
pos_x=236
pos_y=199
fontsz=16
fontnm=Calibri Bold
anchorpos=6
refpoint=0
</object>

<object>
type=102
name=Label_Res_Aberto_Pips
hidden=1
descr=0 pontos
color=16748574
selectable=0
angle=0
pos_x=236
pos_y=222
fontsz=9
fontnm=Calibri
anchorpos=6
refpoint=0
</object>

<object>
type=102
name=Label_Res_Aberto_Porcento
hidden=1
descr=0.00 %
color=16748574
selectable=0
angle=0
pos_x=236
pos_y=238
fontsz=9
fontnm=Calibri
anchorpos=6
refpoint=0
</object>

<object>
type=102
name=Label_Volume_Aberto
hidden=1
descr=Volume aberto: 0.00
color=0
selectable=0
angle=0
pos_x=14
pos_y=228
fontsz=10
fontnm=Calibri
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=Label_Ordens_Abertas
hidden=1
descr=Posições abertas: 0
color=0
selectable=0
angle=0
pos_x=14
pos_y=244
fontsz=10
fontnm=Calibri
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=Label_Res_Dia
hidden=1
descr=Dia: $ -24.00
color=4678655
selectable=0
angle=0
pos_x=236
pos_y=255
fontsz=12
fontnm=Calibri
anchorpos=6
refpoint=0
</object>

<object>
type=102
name=Label_Res_Dia_Porcento
hidden=1
descr=0.00 %
color=4678655
selectable=0
angle=0
pos_x=236
pos_y=275
fontsz=9
fontnm=Calibri
anchorpos=6
refpoint=0
</object>

<object>
type=102
name=Label_Ordens_Pendentes
hidden=1
descr=Ordens pendentes: 0
color=0
selectable=0
angle=0
pos_x=14
pos_y=259
fontsz=10
fontnm=Calibri
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=Label_Swap_Total
hidden=1
descr=Swap total:
color=0
selectable=0
angle=0
pos_x=14
pos_y=273
fontsz=10
fontnm=Calibri
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=Label_Swap_Total_
hidden=1
descr=N/A
color=16748574
selectable=0
angle=0
pos_x=79
pos_y=273
fontsz=10
fontnm=Calibri
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=Label_Margem_Utilizada
hidden=1
descr=Margem: $ 0.0
color=0
selectable=0
angle=0
pos_x=14
pos_y=289
fontsz=10
fontnm=Calibri
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=Label_Separar1
hidden=1
descr=_________________________________
color=12632256
selectable=0
angle=0
pos_x=125
pos_y=300
fontsz=10
fontnm=Arial
anchorpos=8
refpoint=0
</object>

<object>
type=102
name=Label_Saldo
hidden=1
descr=Saldo: -25.00 BRL
color=8388608
selectable=0
angle=0
pos_x=14
pos_y=309
fontsz=10
fontnm=Calibri
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=Label_Credito
hidden=1
descr=Crédito: 0.00
color=8388608
selectable=0
angle=0
pos_x=236
pos_y=309
fontsz=10
fontnm=Calibri
anchorpos=6
refpoint=0
</object>

<object>
type=102
name=Label_Conta
hidden=1
descr=Conta: 1000714654 (Netting Real 1x)
color=4605510
selectable=0
angle=0
pos_x=14
pos_y=324
fontsz=10
fontnm=Calibri
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=Label_Servidor
hidden=1
descr=Servidor: ClearInvestimentos-CLEAR
color=4605510
selectable=0
angle=0
pos_x=14
pos_y=339
fontsz=10
fontnm=Calibri
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=Label_Nome
hidden=1
descr=Titular: JAMES GIL BRITO DE SOUSA
color=4605510
selectable=0
angle=0
pos_x=14
pos_y=353
fontsz=10
fontnm=Calibri
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=Label_Conexao
hidden=1
descr=ON-LINE | Ping: 40.00ms
color=16748574
selectable=0
angle=0
pos_x=14
pos_y=368
fontsz=10
fontnm=Calibri
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=Label_Separar2
hidden=1
descr=_________________________________
color=12632256
selectable=0
angle=0
pos_x=125
pos_y=378
fontsz=10
fontnm=Arial
anchorpos=8
refpoint=0
</object>

<object>
type=102
name=Label_Status
hidden=1
descr=19/8/2022 | 17:59:00 | Vela: 
color=0
selectable=0
angle=0
pos_x=125
pos_y=396
fontsz=10
fontnm=Calibri
anchorpos=8
refpoint=0
</object>

<object>
type=102
name=LabelBotaoGrande
hidden=1
descr=COLOCAR A ORDEM
color=0
selectable=0
hide=1
angle=0
pos_x=125
pos_y=235
fontsz=11
fontnm=Arial Black
anchorpos=8
refpoint=0
</object>

<object>
type=102
name=Dica1
hidden=1
descr=ATALHOS TECLADO:
color=10777186
selectable=0
angle=0
pos_x=4
pos_y=20
fontsz=7
fontnm=San Serif
anchorpos=6
refpoint=3
</object>

<object>
type=102
name=Dica2
hidden=1
descr=C: compra  |  V: venda  |  F: fechar | Ctlr: pendente
color=10777186
selectable=0
angle=0
pos_x=4
pos_y=32
fontsz=7
fontnm=San Serif
anchorpos=6
refpoint=3
</object>

<object>
type=102
name=Dica3
hidden=1
descr=Cima: volume +  |  Baixo: volume -
color=10777186
selectable=0
angle=0
pos_x=4
pos_y=44
fontsz=7
fontnm=San Serif
anchorpos=6
refpoint=3
</object>

<object>
type=102
name=Dica4
hidden=1
descr=O: ocultar/exibir objetos  |  D: deletar
color=10777186
selectable=0
angle=0
pos_x=4
pos_y=56
fontsz=7
fontnm=San Serif
anchorpos=6
refpoint=3
</object>

<object>
type=102
name=Dica5
hidden=1
descr=: opostas a mercado  |  : opostas pendentes
color=10777186
selectable=0
angle=0
pos_x=4
pos_y=68
fontsz=7
fontnm=San Serif
anchorpos=6
refpoint=3
</object>

</window>

<window>
height=35.960732
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
scale_fix_max_val=608024.412000
expertmode=0
fixed_height=-1

<graph>
name=Volume
draw=11
style=0
width=5
arrow=251
color=3937500,2263842,0
</graph>

<graph>
name=Average
draw=4
style=2
width=2
arrow=251
color=36095
</graph>
<inputs>
volType=1
period=12
</inputs>
</indicator>
</window>

<window>
height=50.000000
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