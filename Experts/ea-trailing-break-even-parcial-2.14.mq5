//+------------------------------------------------------------------+
//|                               ea-trailing-break-even-parcial.mq5 |
//|                                                        James Gil |
//|                                                       Setup 2023 |
//+------------------------------------------------------------------+
#property copyright "Copyright 2022, James Gil"
#property link      "https://www.mql5.com"
#property version   "2.14"
#include <Trade\SymbolInfo.mqh>
#include <Trade\PositionInfo.mqh>
#include <Trade\Trade.mqh>
#include <Tools\DateTime.mqh>
//+------------------------------------------------------------------+
//|   Inputs                                                         |
//+------------------------------------------------------------------+
input ENUM_TIMEFRAMES   TimeFrame           = PERIOD_M5;   //TimeFrame (_period)
//input float           TP                  = 1000;        //Take Profit em pontos
input double            InpFiboProfitLevel  = 236.0;       //Fibo Take Profit Level
input int               Volume              = 6;           //Quantidade de Contratos (6/7/8/14/30)
input string            HoraInicial         = "09:30";     //Horário de Início para novas operações
input string            HoraFinal           = "15:30";     //Horário de Término para novas operações
input string            HoraFechamento      = "17:30";     //Horário de Fechamento para posições abertas
input double            LimiteGain          = 1000;        //Limite de Gain diário financeiro
input double            LimiteLoss          = 500;         //Limite de Loss diário financeiro
input double            BE                  = 500;         //Break Even da operação em pontos
input double            RP                  = 500;         //Realização parcial em pontos
input int               VolumeRP            = 1;           //Quantidade de contratos Realização parcial (1/2)
input int               InpTenkanSen        = 7;           //Ichimoku: period of Tenkan-sen
input int               InpMAC              = 7;           //Tendência Média Curta (7/8/9)
input int               InpKijunSen         = 22;          //Ichimoku: period of Kijun-sen
input int               InpSenkouSpanB      = 44;          //Ichimoku: period of Senkou Span B
input int               InpMacdEmaRapida    = 12;          //MACD: EMA Rápida
input int               InpMacdEmaLenta     = 26;          //MACD: EMA Lenta
input int               InpMacdSMA          = 9;           //MACD: SMA MACD = 12 EMA – 26 EMA
input int               InpiSTKperiodo      = 5;          //Estocástico: k
input int               InpiSTDperiodo      = 3;           //Estocástico: d
input int               InpiSTSlowing       = 8;           //Estocástico: slowing
input int               InpCountBarSearch   = 3;           //Barras para mínimos e máximos
input ushort            InpTrailingStop     = 200;         //Trailing Stop
input ushort            InpTrailingStep     = 100;         //Trailing Step
//+------------------------------------------------------------------+
//|   Global                                                         |
//+------------------------------------------------------------------+
CSymbolInfo m_symbol;
CPositionInfo m_position;
CTrade m_trade;

string msg_compra = "Compra Efetuada";
string msg_venda = "Venda Efetuada";

int magic_number = 120912;

int handle_iMACD;
int handle_iMACDNoarmalized;
int handle_iStochastic;
int handle_iIchimoku;
int handle_iVolumes;
int handle_iMA;
int handle_iMAC;
int handle_Bollinger;
int handle_Candlestick;

double ExtTrailingStop = 0.0;
double ExtTrailingStep = 0.0;
int err1;

MqlTradeRequest request;
MqlTradeResult result;
MqlTradeCheckResult check_result;
MqlDateTime hora_inicial, hora_final, hora_fechamento;

static int bars;
enum ENUM_SINAL {COMPRA = 1, VENDA  = -1, NULO   = 0};
ENUM_SINAL ultimo_sinal;

//+------------------------------------------------------------------+
//|   OnInit                                                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//---Inicialização do Ativo
   if(!m_symbol.Name(_Symbol))
     {
      Print("Erro ao carregar o ativo.");
      return INIT_FAILED;
     }
//---Ajuste para  3 or 5 digitos
   int digits_adjust = 1;
   if(m_symbol.Digits() == 3 || m_symbol.Digits() == 5)
      digits_adjust = 10;

   ExtTrailingStop = InpTrailingStop * digits_adjust;
   ExtTrailingStep = InpTrailingStep * digits_adjust;

//---Inicialização das variáveis de tempo
   TimeToStruct(StringToTime(HoraInicial), hora_inicial);
   TimeToStruct(StringToTime(HoraFinal), hora_final);
   TimeToStruct(StringToTime(HoraFechamento), hora_fechamento);

//---Verificação de inconsistências nos parâmetros de entrada
   if((hora_inicial.hour > hora_final.hour || (hora_inicial.hour == hora_final.hour
         && hora_inicial.min > hora_final.min)) || hora_final.hour > hora_fechamento.hour
      || (hora_final.hour == hora_fechamento.hour && hora_final.min > hora_fechamento.min))
     {
      Print("Os horários fornecidos estão inválidos.");
      return INIT_FAILED;
     }
   ultimo_sinal = NULO;

//---Manipulador do indicador iIchimoku
   handle_iIchimoku = iIchimoku(m_symbol.Name(), TimeFrame, InpTenkanSen, InpKijunSen, InpSenkouSpanB);
   if(handle_iIchimoku == INVALID_HANDLE)
     {
      PrintFormat("Failed to create handle of the iIchimoku indicator for the symbol %s/%s, error code %d",
                  m_symbol.Name(),
                  EnumToString(TimeFrame),
                  GetLastError());
      return(INIT_FAILED);
     }

//---Manipulador do indicador iMACD
   handle_iMACD = iMACD(m_symbol.Name(), TimeFrame, InpMacdEmaRapida, InpMacdEmaLenta, InpMacdSMA, MODE_EMA);
   if(handle_iMACD == INVALID_HANDLE)
     {
      PrintFormat("Failed to create handle of the iMACD indicator for the symbol %s/%s, error code %d",
                  m_symbol.Name(),
                  EnumToString(TimeFrame),
                  GetLastError());
      return(INIT_FAILED);
     };

//---Manipulador do indicador iStochastic
   handle_iStochastic = iStochastic(m_symbol.Name(), TimeFrame, InpiSTKperiodo, InpiSTDperiodo, InpiSTSlowing, MODE_SMA, STO_LOWHIGH);
   if(handle_iStochastic == INVALID_HANDLE)
     {
      PrintFormat("Failed to create handle of the iStochastic indicator for the symbol %s/%s, error code %d",
                  m_symbol.Name(),
                  EnumToString(TimeFrame),
                  GetLastError());
      return(INIT_FAILED);
     }

//---Manipulador do indicador iVolumes
   handle_iVolumes = iVolumes(m_symbol.Name(), TimeFrame, VOLUME_REAL);
   if(handle_iVolumes == INVALID_HANDLE)
     {
      PrintFormat("Failed to create handle of the iVolumes indicator for the symbol %s/%s, error code %d",
                  m_symbol.Name(),
                  EnumToString(TimeFrame),
                  GetLastError());
      return(INIT_FAILED);
     }

//---Manipulador do indicador iMA
   handle_iMA = iMA(m_symbol.Name(), TimeFrame, 20, 0, MODE_SMA, handle_iVolumes);
   if(handle_iMA == INVALID_HANDLE)
     {
      PrintFormat("Failed to create handle of the iMA indicator for the symbol %s/%s, error code %d",
                  m_symbol.Name(),
                  EnumToString(TimeFrame),
                  GetLastError());
      return(INIT_FAILED);
     }

//---Manipulador do indicador iMAC (Tendencia)
   handle_iMAC = iMA(m_symbol.Name(), TimeFrame, InpMAC, 0, MODE_EMA, PRICE_MEDIAN);
   if(handle_iMAC == INVALID_HANDLE)
     {
      PrintFormat("Failed to create handle of the iMA indicator for the symbol %s/%s, error code %d",
                  m_symbol.Name(),
                  EnumToString(TimeFrame),
                  GetLastError());
      return(INIT_FAILED);
     }

//---Definição das bandas
   handle_Bollinger = iBands(m_symbol.Name(), TimeFrame, 20, 0, 2, PRICE_CLOSE);
   if(handle_Bollinger == INVALID_HANDLE)
     {
      PrintFormat("Failed to create handle of the Bollinger indicator for the symbol %s/%s, error code %d",
                  m_symbol.Name(),
                  EnumToString(TimeFrame),
                  GetLastError());
      return(INIT_FAILED);
     }

//---Definição Padrões Candlestick(Indicador Personalizado)
//Indicators/candlestick_patterns.ex5
//Indicators/candlestick_type_color.ex5
//Indicators/Include/candlesticktype.mqh

   handle_Candlestick = iCustom(m_symbol.Name(), TimeFrame, "candlestick_patterns.ex5", 10, true, 1000, clrYellowGreen, clrCrimson, true, 10);
//InpPeriodSMA    =10;              // Period of averaging
//InpAlert        =true;            // Enable. signal
//IpCountBars     =1000;            // Amount of bars for calculation
//InpColorBull    =clrYellowGreen;  // Color of bullish models
//InpColorBear    =clrCrimson;      // Color of bearish models
//InpCommentOn    =true;            // Enable comment
//InpTextFontSize =10;              // Font size

   if(handle_Candlestick == INVALID_HANDLE)
     {
      PrintFormat("Failed to create handle of the Bollinger indicator for the symbol %s/%s, error code %d",
                  m_symbol.Name(),
                  EnumToString(TimeFrame),
                  GetLastError());
      return(INIT_FAILED);
     }
   ChartIndicatorAdd(0, 0, handle_Candlestick);

   return(INIT_SUCCEEDED);
  }

//+------------------------------------------------------------------+
//|   OnDeinit                                                       |
//+------------------------------------------------------------------+
//---Evento invocado ao reiniciar o EA
void OnDeinit(const int reason)
  {
   printf("Reiniciando EA: %d", reason);
  }
//+------------------------------------------------------------------+
//|   OnTick                                                         |
//+------------------------------------------------------------------+
//---Evento invocado cada a novo tick do ativo
void OnTick()
  {
//---Atualiza os dados de cotação do ativo
   if(!m_symbol.RefreshRates())
      return;
//---Verifica se um novo dia de operações foi iniciado
   if(IsNovoDia())
     {
      ultimo_sinal = NULO;
     }
//---Obtem a situação do início do dia
   if(ultimo_sinal == NULO)
      ultimo_sinal = CheckSinal();
//---Verifica se há um novo candle fechado
   bool novo_candle = IsNovoCandle();
   if(novo_candle)
     {
      //---Verifica se o limite de gain ou loss foi atingido e encerra o processamento
      if(CheckLimites())
         return;
      //---Verifica se houve um sinal de compra ou venda
      ENUM_SINAL sinal = CheckSinal();
      //---Verifica se deve alterar a posição aberta
      CheckPosicaoAberta(sinal);
      //---Verifica se deve fechar alguma ordem aberta
      CheckOrdemAberta(sinal);
      //---Verifica se deve fazer uma realização parcial
      CheckRealizacaoParcial();
      //---Verifica Trainling Stop
      if(ExtTrailingStop > 0)
        {
         err1 = Trailing();
        }
      //---Verifica se deve setar o stop loss para o preço de entrada
      CheckBreakEven();
      //---Verifica se deve abrir alguma posição de compra ou venda
      CheckNovaEntrada(sinal);
      //---Verifica se o horário limite de operações foi alcançado
      CheckHorarioFechamento();
     }
  }
//+------------------------------------------------------------------+
//|   CheckPosicaoAberta                                             |
//+------------------------------------------------------------------+
//---Se houver posição aberta e um sinal na posição contrária for lançado o stop loss da posição aberta é alterado
void CheckPosicaoAberta(ENUM_SINAL sinal)
  {
   if(IsPosicionado())
     {
      if((IsComprado() && sinal == VENDA) || (IsVendido() && sinal == COMPRA))
         /*AlterarStopLoss(sinal);*/
         FecharPosicao();
     }
  }
//+------------------------------------------------------------------+
//|   CheckOrdemAberta                                               |
//+------------------------------------------------------------------+
//---Se houver ordem aberta e um sinal na posição contrária for lançado a ordem é fechada imediatamente
void CheckOrdemAberta(ENUM_SINAL sinal)
  {
   if(IsOrdemLancada())
     {
      if((IsOrdemCompra() && sinal == VENDA) || (IsOrdemVenda() && sinal == COMPRA))
         Fechar();
     }
  }
//+------------------------------------------------------------------+
//|   CheckNovaEntrada                                               |
//+------------------------------------------------------------------+
//---Se estiver no horário permitido para novas entradas e não houver posição aberta
//---É lançada uma nova ordem de entrada na superação do candle de sinal
void CheckNovaEntrada(ENUM_SINAL sinal)
  {
   if(IsHorarioPermitido() && !IsPosicionado())
     {
      if(ultimo_sinal == VENDA && sinal == COMPRA)
        {
         bool op = Comprar();
         if(op)
            ultimo_sinal = COMPRA;
        }
      else
         if(ultimo_sinal == COMPRA && sinal == VENDA)
           {
            bool op = Vender();
            if(op)
               ultimo_sinal = VENDA;
           }
     }
  }
//+------------------------------------------------------------------+
//|   CheckLimites                                                   |
//+------------------------------------------------------------------+
//---Se o limite diário de gain ou loss for atingido encerra ordens ou posições em aberto
bool CheckLimites()
  {
   if(LimiteGain > 0 && GetSaldoFinanceiro() >= LimiteGain)
     {
      Fechar();
      Print("Limite de Gain diário batido.");
      return true;
     }
   if(LimiteLoss > 0 && GetSaldoFinanceiro() <= (LimiteLoss*-1))
     {
      Fechar();
      Print("Limite de Loss diário batido.");
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
//|   CheckRealizacaoParcial                                         |
//+------------------------------------------------------------------+
//---Se o saldo da operação atingir o valor definido para RP, realizamos parte da operação
void CheckRealizacaoParcial()
  {
   if(!IsPosicionado())
      return;
   double saldo = GetSaldoPosicaoEmPontos();
   int volume_atual = PositionGetDouble(POSITION_VOLUME);

   if(saldo >= RP && volume_atual == Volume)
     {
      ENUM_ORDER_TYPE tipo = ORDER_TYPE_BUY;
      double preco = m_symbol.Bid();
      if(IsComprado())
        {
         tipo = ORDER_TYPE_SELL;
         preco = m_symbol.Ask();
        }
      OrdemAMercado(tipo, preco, VolumeRP);
     }
  }
//+------------------------------------------------------------------+
//|   IsNovoDia                                                      |
//+------------------------------------------------------------------+
//---Verifica se um novo dia de operações foi iniciado
bool IsNovoDia()
  {
   static datetime OldDay = 0;
   MqlRates mrate[];
   ArraySetAsSeries(mrate,true);
   CopyRates(_Symbol, TimeFrame, 0, 2, mrate);
   datetime lastbar_time = mrate[0].time;
   MqlDateTime time;
   TimeToStruct(lastbar_time, time);
   if(OldDay < time.day_of_year)
     {
      OldDay = time.day_of_year;
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
//|   IsNovoCandle                                                   |
//+------------------------------------------------------------------+
//---Verifica se há um novo candle fechado
bool IsNovoCandle()
  {
   if(bars != Bars(_Symbol, TimeFrame))
     {
      bars = Bars(_Symbol, TimeFrame);
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
//|   IsHorarioPermitido                                             |
//+------------------------------------------------------------------+
//---Verifica se o horário atual está dentro do intervalo de tempo permitido
bool IsHorarioPermitido()
  {
   MqlDateTime hora_atual;
   TimeToStruct(TimeCurrent(), hora_atual);
   if(hora_atual.hour >= hora_inicial.hour && hora_atual.hour <= hora_final.hour)
     {
      if((hora_inicial.hour == hora_final.hour)
         && (hora_atual.min >= hora_inicial.min) && (hora_atual.min <= hora_final.min))
         return true;
      if(hora_atual.hour == hora_inicial.hour)
        {
         if(hora_atual.min >= hora_inicial.min)
            return true;
         else
            return false;
        }
      if(hora_atual.hour == hora_final.hour)
        {
         if(hora_atual.min <= hora_final.min)
            return true;
         else
            return false;
        }
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
//|   CheckHorarioFechamento                                         |
//+------------------------------------------------------------------+
//---Se o horário limite para operações abertas foi alcançado, todas as ordens e operações abertas são fechadas imediatamente
void CheckHorarioFechamento()
  {
   if(IsHorarioFechamento())
     {
      if(IsPosicionado() || !IsOrdemLancada())
        {
         Print("Horário limite atingido. Encerrando ordens e posições abertas");
         Fechar();
        }
     }
  }
//+------------------------------------------------------------------+
//|   IsHorarioFechamento                                            |
//+------------------------------------------------------------------+
//---Verifica se o horário limite para operações foi alcançado
bool IsHorarioFechamento()
  {
   MqlDateTime hora_atual;
   TimeToStruct(TimeCurrent(), hora_atual);
   if(hora_atual.hour > hora_fechamento.hour)
      return true;
   if((hora_atual.hour == hora_fechamento.hour) && (hora_atual.min >= hora_fechamento.min))
      return true;
   return false;
  }
//+------------------------------------------------------------------+
//|   Comprar                                                        |
//+------------------------------------------------------------------+
bool Comprar()
  {
   double take_profit, max, min, FiboLevel;
   min = MaximumMinimum(0);
   max = iHigh(_Symbol, TimeFrame, 1);
   FiboLevel = GetFiboUr(max, min, InpFiboProfitLevel / 100.0);
   take_profit = FiboLevel;

   double preco_entrada = m_symbol.NormalizePrice(GetPrecoEntrada(COMPRA));
   double stop_loss     = m_symbol.NormalizePrice(GetStopLoss(COMPRA));
//double take_profit   = m_symbol.NormalizePrice(preco_entrada + TP);
   ZerarRequest();
   request.action       = TRADE_ACTION_PENDING;
   request.magic        = magic_number;
   request.symbol       = _Symbol;
   request.volume       = Volume;
   request.price        = NormalizeDouble(preco_entrada,Digits());
   request.sl           = stop_loss;
   request.tp           = take_profit;
   request.type         = ORDER_TYPE_BUY_STOP;
   request.type_filling = ORDER_FILLING_RETURN;
   request.type_time    = ORDER_TIME_DAY;
   request.comment      = "Compra";
   SendNotification(msg_compra);
   return EnviarRequisicao();
//return false;
  }
//+------------------------------------------------------------------+
//|   Vender                                                         |
//+------------------------------------------------------------------+
bool Vender()
  {
   double take_profit, max, min, FiboLevel;
   max = MaximumMinimum(1);
   min = iLow(_Symbol, TimeFrame, 1);
   FiboLevel = GetFiboUr(min, max, InpFiboProfitLevel / 100.0);
   take_profit = FiboLevel;

   double preco_entrada = m_symbol.NormalizePrice(GetPrecoEntrada(VENDA));
   double stop_loss = m_symbol.NormalizePrice(GetStopLoss(VENDA));
//double take_profit = m_symbol.NormalizePrice(preco_entrada - TP);
   ZerarRequest();
   request.action       = TRADE_ACTION_PENDING;
   request.magic        = magic_number;
   request.symbol       = _Symbol;
   request.volume       = Volume;
   request.price        = NormalizeDouble(preco_entrada,Digits());
   request.sl           = stop_loss;
   request.tp           = take_profit;
   request.type         = ORDER_TYPE_SELL_STOP;
   request.type_filling = ORDER_FILLING_RETURN;
   request.type_time    = ORDER_TIME_DAY;
   request.comment      = "Venda";
   return EnviarRequisicao();
   SendNotification(msg_venda);
//return false;
  }
//+------------------------------------------------------------------+
//|   Fechar                                                         |
//+------------------------------------------------------------------+
//---Verifica se há ordens pendentes ou posições abertas e as fecha imediatamente
void Fechar()
  {
   FecharOrdens();
   FecharPosicao();
  }
//---Fecha ordens abertas
void FecharOrdens()
  {
   if(OrdersTotal() != 0)
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         ulong ticket = OrderGetTicket(i);
         if(OrderGetString(ORDER_SYMBOL)==_Symbol)
           {
            ZerarRequest();

            request.action       = TRADE_ACTION_REMOVE;
            request.order        = ticket;
            request.comment      = "Removendo ordem";

            EnviarRequisicao();
           }
        }
     }
  }
//+------------------------------------------------------------------+
//|   FecharPosicao                                                  |
//+------------------------------------------------------------------+
//---Fecha posições abertas
void FecharPosicao()
  {
   if(!PositionSelect(_Symbol))
      return;
   ZerarRequest();
   double volume_operacao = PositionGetDouble(POSITION_VOLUME);
   request.action       = TRADE_ACTION_DEAL;
   request.magic        = magic_number;
   request.symbol       = _Symbol;
   request.volume       = volume_operacao;
   request.type_filling = ORDER_FILLING_RETURN;
   request.comment      = "Fechando posição";
   long tipo = PositionGetInteger(POSITION_TYPE);
   if(tipo == POSITION_TYPE_BUY)
     {
      request.price = m_symbol.Bid();
      request.type = ORDER_TYPE_SELL;
     }
   else
     {
      request.price = m_symbol.Ask();
      request.type = ORDER_TYPE_BUY;
     }
   EnviarRequisicao();
  }
//+------------------------------------------------------------------+
//|   AlterarStopLoss                                                |
//+------------------------------------------------------------------+
//---Altera o stop loss de uma posição aberta para o novo ponto de saída
bool AlterarStopLoss(ENUM_SINAL sinal)
  {
   if(!PositionSelect(_Symbol))
      return false;
   double novo_alvo = m_symbol.NormalizePrice(GetPrecoEntrada(sinal));
   ZerarRequest();
   request.action    = TRADE_ACTION_SLTP;
   request.magic     = magic_number;
   request.symbol    = _Symbol;
   request.sl        = novo_alvo;
   request.position  = PositionGetInteger(POSITION_TICKET);
   request.comment   = "Alterando Stop Loss";
   request.type_time = ORDER_TIME_DAY;
   return EnviarRequisicao();
  }
//+------------------------------------------------------------------+
//|   CheckBreakEven                                                 |
//+------------------------------------------------------------------+
//---Se o saldo da posição aberta atingir o valor setado o stop loss da posição é alterado para o ponto de entrada
bool CheckBreakEven()
  {
   if(BE == 0)
      return false;
   if(!PositionSelect(_Symbol))
      return false;
   double open = PositionGetDouble(POSITION_PRICE_OPEN);
   double stop_loss = PositionGetDouble(POSITION_SL);
   if(IsComprado() && stop_loss >= open)
      return false;
   else
      if(IsVendido() && stop_loss <= open)
         return false;
   double saldo_posicao = GetSaldoPosicaoEmPontos();
   if(saldo_posicao < BE)
     {
      return false;
     }
   ZerarRequest();
   request.action    = TRADE_ACTION_SLTP;
   request.magic     = magic_number;
   request.symbol    = _Symbol;
   request.sl        = open;
   request.tp        = PositionGetDouble(POSITION_TP);
   request.position  = PositionGetInteger(POSITION_TICKET);
   request.comment   = "Break Even";
   request.type_time = ORDER_TIME_DAY;
   return EnviarRequisicao();
  }
//+------------------------------------------------------------------+
//|   OrdemAMercado                                                  |
//+------------------------------------------------------------------+
bool OrdemAMercado(ENUM_ORDER_TYPE tipo, double preco, int volume)
  {
   preco =  m_symbol.NormalizePrice(preco);
   ZerarRequest();
   request.action       = TRADE_ACTION_DEAL;
   request.magic        = magic_number;
   request.symbol       = _Symbol;
   request.volume       = volume;
   request.price        = preco;
   request.type         = tipo;
   request.type_filling = ORDER_FILLING_RETURN;
   request.type_time    = ORDER_TIME_DAY;
   request.comment      = "Realizaçao Parcial";
   return EnviarRequisicao();
  }
//+------------------------------------------------------------------+
//|   ZerarRequest                                                   |
//+------------------------------------------------------------------+
//---Limpa estrutura de requisição de roteamento
void ZerarRequest()
  {
   ZeroMemory(request);
   ZeroMemory(result);
   ZeroMemory(check_result);
  }
//+------------------------------------------------------------------+
//|   EnviarRequisicao                                               |
//+------------------------------------------------------------------+
//---Valida e envia requisição de roteamento
bool EnviarRequisicao()
  {
   ResetLastError();
   PrintFormat("Request - %s, VOLUME: %.0f, PRICE: %.2f, SL: %.2f, TP: %.2f", request.comment, request.volume, request.price, request.sl, request.tp);
   if(!OrderCheck(request, check_result))
     {
      PrintFormat("Erro em OrderCheck: %d - Código: %d", GetLastError(), check_result.retcode);
      return false;
     }
   if(!OrderSend(request, result))
     {
      PrintFormat("Erro em OrderSend: %d - Código: %d", GetLastError(), result.retcode);
      return false;
     }
   return true;
  }
//+------------------------------------------------------------------+
//|   CheckSinal                                                     |
//+------------------------------------------------------------------+
//---Verifica se há um novo sinal de compra ou venda
ENUM_SINAL CheckSinal()
  {
//---Volume
   double VOLUME[];
   int buffer1 = CopyBuffer(handle_iVolumes, 0, 0, 3, VOLUME);
   ArraySetAsSeries(VOLUME, true);

   double MA[];
   int buffer2 = CopyBuffer(handle_iMA, 0, 0, 3, MA);
   ArraySetAsSeries(MA, true);

//---Média Curta Tendencia
   double MAC[];
   int buffer3 = CopyBuffer(handle_iMAC, 0, 0, 3, MAC);
   ArraySetAsSeries(MA, true);

//---Stochastic
   double st_0       = iStochasticGet(MAIN_LINE, 0);
   double st_1       = iStochasticGet(MAIN_LINE, 1);
   double st_2       = iStochasticGet(MAIN_LINE, 2);
   double st_3       = iStochasticGet(MAIN_LINE, 3);
   double signal_0   = iStochasticGet(SIGNAL_LINE, 0);
   double signal_1   = iStochasticGet(SIGNAL_LINE, 1);
   double signal_2   = iStochasticGet(SIGNAL_LINE, 2);
   double signal_3   = iStochasticGet(SIGNAL_LINE, 3);

//---MACD
   double MACD_0        = iMACDGet(MAIN_LINE, 0);
   double MACD_1        = iMACDGet(MAIN_LINE, 1);
   double MACD_2        = iMACDGet(MAIN_LINE, 2);
   double SignalMACD_0  = iMACDGet(SIGNAL_LINE, 0);
   double SignalMACD_1  = iMACDGet(SIGNAL_LINE, 1);
   double SignalMACD_2  = iMACDGet(SIGNAL_LINE, 2);

//---Ichimoku
   double TENKANSEN_LINE_0    = iIchimokuGet(TENKANSEN_LINE,0);
   double TENKANSEN_LINE_1    = iIchimokuGet(TENKANSEN_LINE,1);
   double TENKANSEN_LINE_2    = iIchimokuGet(TENKANSEN_LINE,2);
   double KIJUNSEN_LINE_0     = iIchimokuGet(KIJUNSEN_LINE,0);
   double KIJUNSEN_LINE_1     = iIchimokuGet(KIJUNSEN_LINE,1);
   double KIJUNSEN_LINE_2     = iIchimokuGet(KIJUNSEN_LINE,2);
   double SENKOUSPANA_LINE_0  = iIchimokuGet(SENKOUSPANA_LINE,0);
   double SENKOUSPANA_LINE_1  = iIchimokuGet(SENKOUSPANA_LINE,1);
   double SENKOUSPANA_LINE_2  = iIchimokuGet(SENKOUSPANA_LINE,3);
   double SENKOUSPANB_LINE_0  = iIchimokuGet(SENKOUSPANB_LINE,0);
   double SENKOUSPANB_LINE_1  = iIchimokuGet(SENKOUSPANB_LINE,1);
   double SENKOUSPANB_LINE_2  = iIchimokuGet(SENKOUSPANB_LINE,2);

//--Calcular Estocastico Lento
   double KArray[];
   double DArray[];
   ArraySetAsSeries(KArray,true);
   ArraySetAsSeries(DArray,true);

   CopyBuffer(handle_iStochastic, 0, 0, 3, KArray);
   CopyBuffer(handle_iStochastic, 1, 0, 3, DArray);

   double kvalue0 = KArray[0];
   double dvalue0 = DArray[0];
   double kvalue1 = KArray[1];
   double dvalue1 = DArray[1];

//---Calcular Bandas de Bollinger
   double MiddleBandArray[];
   double UpperBandArray[];
   double LowerBandArray[];

//---ordenando as bandas
   ArraySetAsSeries(MiddleBandArray, true);
   ArraySetAsSeries(UpperBandArray, true);
   ArraySetAsSeries(LowerBandArray, true);

//Copiando preços p/ arrays
   CopyBuffer(handle_Bollinger, 0,0,3,MiddleBandArray);
   CopyBuffer(handle_Bollinger, 1,0,3,UpperBandArray);
   CopyBuffer(handle_Bollinger, 2,0,3,LowerBandArray);

//Copiando valor da banda no ultimo candle
   double MiddleBandValue1 = MiddleBandArray[1];
   double UpperBandValue1 = UpperBandArray[1];
   double LowerBandValue1 = LowerBandArray[1];

//Copiando valor da banda no penultimo candle
   double MiddleBandValue2 = MiddleBandArray[2];
   double UpperBandValue2 = UpperBandArray[2];
   double LowerBandValue2 = LowerBandArray[2];

   string text=            "STOCHASTIC    | "+DoubleToString(st_2,Digits()+1)+               " | "+DoubleToString(st_1,Digits()+1)+"\n"+
                           "STO SIGNAL    | "+DoubleToString(signal_2,Digits()+1)+           " | "+DoubleToString(signal_1,Digits()+1)+"\n"+
                           "MACD          | "+DoubleToString(MACD_2,Digits()+1)+             " | "+DoubleToString(MACD_1,Digits()+1)+"\n"+
                           "MACD SIGNAL   | "+DoubleToString(SignalMACD_2,Digits()+1)+       " | "+DoubleToString(SignalMACD_1,Digits()+1)+"\n"+
                           "TENKAN SEN    | "+DoubleToString(TENKANSEN_LINE_2,Digits()+1)+   " | "+DoubleToString(TENKANSEN_LINE_1,Digits()+1)+"\n"+
                           "KIJUN SEN     | "+DoubleToString(KIJUNSEN_LINE_2,Digits()+1)+    " | "+DoubleToString(KIJUNSEN_LINE_1,Digits()+1)+"\n"+
                           "SENKOUSPAN_A  | "+DoubleToString(SENKOUSPANA_LINE_2,Digits()+1)+ " | "+DoubleToString(SENKOUSPANA_LINE_1,Digits()+1)+"\n"+
                           "SENKOUSPAN_B  | "+DoubleToString(SENKOUSPANB_LINE_2,Digits()+1)+ " | "+DoubleToString(SENKOUSPANB_LINE_1,Digits()+1)+"\n"+
                           "BOLLINGER     | "+DoubleToString(UpperBandValue1,Digits()+1)+    " | "+DoubleToString(LowerBandValue1,Digits()+1);

   Comment(text);
   CDateTime time;
   time.DateTime(TimeCurrent());
//Print(time.DayName());
//Print(time.day);
//Print(time.day_of_week);
//Print(time.day_of_year);

//---Backtest/Estrategia
   if(time.day_of_week == 1 || time.day_of_week == 2 || time.day_of_week == 3) // || time.day_of_week == 4) || time.day_of_week == 5)
     {
      if(buffer1 == 3 && buffer2 == 3 && buffer3 == 3)
        {
         if(
            CheckMoneyForTrade(_Symbol, 1, ORDER_TYPE_BUY)
            && SENKOUSPANA_LINE_2 > SENKOUSPANB_LINE_2               //Nuvem de Ichimoku Positiva
            && MAC[1] > MAC[2]                                       //Tendência Média Curta
            && iLow(_Symbol, TimeFrame, 1) < LowerBandArray[1]       //Fechamento em alta dentro do limite inferior da banda de bollinger
            && iClose(_Symbol, TimeFrame, 1) > LowerBandArray[1]
         )
            return COMPRA;

         if(
            CheckMoneyForTrade(_Symbol, 1, ORDER_TYPE_SELL)
            && SENKOUSPANB_LINE_2 > SENKOUSPANA_LINE_2               //Nuvem de Ichimoku Negativa
            //&& MAC[1] < MAC[2]
            && iHigh(_Symbol, TimeFrame, 1) > UpperBandArray[1]      //Fechamento em baixa dentro do limite superior da banda de bollinger
            && iClose(_Symbol, TimeFrame, 1) < UpperBandArray[1]

         )
            return VENDA;

        }

      return NULO;
     }
   return(0);
  }
//+------------------------------------------------------------------+
//|   GetPrecoEntrada                                                |
//+------------------------------------------------------------------+
//---Obtem o preço de entrada para compra ou venda
//---Se o sinal for de compra, obtem a máxima do candle
//---Se o sinal for de venda, obtem a minima do candle
double GetPrecoEntrada(ENUM_SINAL sinal)
  {
   MqlRates rate[];
   ArraySetAsSeries(rate, true);
   int copied = CopyRates(_Symbol, TimeFrame, 0, 2, rate);
   if(copied==2)
     {
      if(sinal == COMPRA)
         return rate[1].high;
      if(sinal == VENDA)
         return rate[1].low;
     }
   return -1;
  }
//+------------------------------------------------------------------+
//|   GetStopLoss                                                    |
//+------------------------------------------------------------------+
//---Obtem o preço de stop loss para compra ou venda
//---Se o sinal for de compra, obtem a minima do candle
//---Se o sinal for de venda, obtem a maxima do candle
double GetStopLoss(ENUM_SINAL sinal)
  {
   MqlRates rate[];
   ArraySetAsSeries(rate, true);
   int copied = CopyRates(_Symbol, TimeFrame, 0, 2, rate);
   if(copied==2)
     {
      if(sinal == COMPRA)
         return rate[1].low;
      if(sinal == VENDA)
         return rate[1].high;
     }
   return -1;
  }
//+------------------------------------------------------------------+
//|   IsPosicionado                                                  |
//+------------------------------------------------------------------+
//---Verifica se há posição no ativo
bool IsPosicionado()
  {
   return PositionSelect(_Symbol);
  }
//+------------------------------------------------------------------+
//|   IsOrdemLancada                                                 |
//+------------------------------------------------------------------+
//---Verifica se há alguma ordem lançada no ativo
bool IsOrdemLancada()
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      OrderGetTicket(i);
      if(OrderGetString(ORDER_SYMBOL)==_Symbol)
         return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
//|   IsComprado                                                     |
//+------------------------------------------------------------------+
//---Verifica se há posição compradora aberta
bool IsComprado()
  {
   if(!PositionSelect(_Symbol))
      return false;
   return PositionGetInteger(POSITION_TYPE) == POSITION_TYPE_BUY;
  }
//+------------------------------------------------------------------+
//|   IsVendido                                                      |
//+------------------------------------------------------------------+
//---Verifica se há posição vendida aberta
bool IsVendido()
  {
   if(!PositionSelect(_Symbol))
      return false;
   return PositionGetInteger(POSITION_TYPE) == POSITION_TYPE_SELL;
  }
//+------------------------------------------------------------------+
//|   IsOrdemCompra                                                  |
//+------------------------------------------------------------------+
//---Verifica se há ordem de compra aberta
bool IsOrdemCompra()
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      OrderGetTicket(i);
      ENUM_ORDER_TYPE type = (ENUM_ORDER_TYPE)OrderGetInteger(ORDER_TYPE);
      return type == ORDER_TYPE_BUY_STOP;
     }
   return false;
  }
//+------------------------------------------------------------------+
//|   IsOrdemVenda                                                   |
//+------------------------------------------------------------------+
//---Verifica se há ordem de venda aberta
bool IsOrdemVenda()
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      OrderGetTicket(i);
      ENUM_ORDER_TYPE type = (ENUM_ORDER_TYPE)OrderGetInteger(ORDER_TYPE);
      return type == ORDER_TYPE_SELL_STOP;
     }
   return false;
  }
//+------------------------------------------------------------------+
//|   GetSaldoFinanceiro                                             |
//+------------------------------------------------------------------+
double GetSaldoFinanceiro()
  {
   datetime end = TimeCurrent();
//---Hora inicial do dia
   datetime start = end - (end % 86400);
//---Seleciona período
   HistorySelect(start, end);
//---Histórico de ordens do período
   int deals = HistoryDealsTotal();
   double deal_profit = 0;
   for(int i=0 ; i < deals; i++)
     {
      ulong deal_ticket = HistoryDealGetTicket(i);
      if(deal_ticket > 0)
        {
         string deal_symbol = HistoryDealGetString(deal_ticket, DEAL_SYMBOL);

         if(deal_symbol == _Symbol)
            deal_profit = deal_profit + HistoryDealGetDouble(deal_ticket, DEAL_PROFIT);
        }
     }
   return deal_profit;
  }
//+------------------------------------------------------------------+
//|   GetSaldoPosicaoEmPontos                                        |
//+------------------------------------------------------------------+
double GetSaldoPosicaoEmPontos()
  {
   if(!IsPosicionado())
      return 0;
   ENUM_POSITION_TYPE tipo = PositionGetInteger(POSITION_TYPE);
   ENUM_POSITION_PROPERTY_DOUBLE pc = PositionGetDouble(POSITION_PRICE_CURRENT);
   ENUM_POSITION_PROPERTY_DOUBLE po = PositionGetDouble(POSITION_PRICE_OPEN);
   if(tipo == POSITION_TYPE_SELL)
     {
      return po - pc;
     }
   else
      if(tipo == POSITION_TYPE_BUY)
        {
         return pc - po;
        }
   return 0;
  }
//+------------------------------------------------------------------+
//|   Ichumoku                                                       |
//+------------------------------------------------------------------+
double iIchimokuGet(const int buffer,const int index)
  {
   double Ichimoku[];
   ResetLastError();
   if(CopyBuffer(handle_iIchimoku, buffer, index, 1, Ichimoku) < 0)
     {
      PrintFormat("Failed to copy data from the iIchimoku indicator, error code %d",GetLastError());
      return(0.0);
     }
   return(Ichimoku[0]);
  }
//+------------------------------------------------------------------+
//|   MACD                                                           |
//+------------------------------------------------------------------+
double iMACDGet(const int buffer,const int index)
  {
   double MACD[];
   ResetLastError();
   if(CopyBuffer(handle_iMACD, buffer, index, 1, MACD) < 0)
     {
      PrintFormat("Failed to copy data from the iMACD indicator, error code %d",GetLastError());
      return(0.0);
     }
   return(MACD[0]);
  }
//+------------------------------------------------------------------+
//|   Stochastic                                                     |
//+------------------------------------------------------------------+
double iStochasticGet(const int buffer,const int index)
  {
   double STOCHASTIC[];
   ResetLastError();
   if(CopyBuffer(handle_iStochastic, buffer, index, 1, STOCHASTIC) < 0)
     {
      PrintFormat("Failed to copy data from the iMACD indicator, error code %d",GetLastError());
      return(0.0);
     }
   return(STOCHASTIC[0]);
  }
//+------------------------------------------------------------------+
//|   MaximumMinimum                                                 |
//+------------------------------------------------------------------+
double MaximumMinimum(int type)
  {
   int x = 0, stop = 0;
   double minmax = 0.0;
   if(type == 0)
     {
      while(stop == 0)
        {
         minmax = iLow(_Symbol, TimeFrame, iLowest(Symbol(), TimeFrame, MODE_LOW, InpCountBarSearch, x));
         if(minmax > iLow(_Symbol, TimeFrame, iLowest(Symbol(), TimeFrame, MODE_LOW, InpCountBarSearch, x + InpCountBarSearch)))
           {
            minmax = iLow(_Symbol, TimeFrame, iLowest(Symbol(), TimeFrame, MODE_LOW, InpCountBarSearch, x + InpCountBarSearch));
            x = x + InpCountBarSearch;
           }
         else
           {
            stop = 1;
            return(minmax);
           }
        }
     }
   if(type == 1)
     {
      while(stop == 0)
        {
         minmax = iHigh(_Symbol, TimeFrame, iHighest(Symbol(), TimeFrame, MODE_HIGH, InpCountBarSearch, x));
         if(minmax < iHigh(_Symbol, TimeFrame, iHighest(Symbol(), TimeFrame, MODE_HIGH, InpCountBarSearch, x + InpCountBarSearch)))
           {
            minmax = iHigh(_Symbol, TimeFrame, iHighest(Symbol(), TimeFrame, MODE_HIGH, InpCountBarSearch, x + InpCountBarSearch));
            x = x + InpCountBarSearch;
           }
         else
           {
            stop = 1;
            return(minmax);
           }
        }
     }
   return(0);
  }
//+------------------------------------------------------------------+
//|   GetFiboUr                                                      |
//+------------------------------------------------------------------+
double GetFiboUr(double high, double low, double ur)
  {
   double Fibo = NormalizeDouble(low + (high - low) * ur, Digits());
   return(Fibo);
  }
//+------------------------------------------------------------------+
//|   Trailing                                                       |
//+------------------------------------------------------------------+
int  Trailing()
  {
   bool err=false;
   if(ExtTrailingStop<=0)
      return(0);
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
      if(m_position.SelectByIndex(i))
        {
         if(m_position.PositionType()==POSITION_TYPE_BUY && m_position.Symbol()==Symbol())
           {
            if((m_symbol.Bid()-m_position.PriceOpen())>=ExtTrailingStop*Point() &&
               (m_symbol.Bid()-Point()*ExtTrailingStop)>m_position.StopLoss())
              {
               if(((m_symbol.Bid()-Point()*ExtTrailingStop)-m_position.StopLoss())>=ExtTrailingStep*Point())
                 {
                  Print("Traling de Compra");
                  request.comment   = "Traling de Compra";
                  err=m_trade.PositionModify(m_position.Ticket(),
                                             m_symbol.Bid()-Point()*ExtTrailingStop,m_position.TakeProfit());
                  if(!err)
                    {
                     return(-1);
                    }
                 }
              }
           }
         if(m_position.PositionType()==POSITION_TYPE_SELL && m_position.Symbol()==Symbol())
           {
            if((m_position.PriceOpen()-m_symbol.Ask())>=ExtTrailingStop*Point() &&
               m_position.StopLoss()>(m_symbol.Ask()+ExtTrailingStop*Point()))
              {
               if((m_position.StopLoss()-(m_symbol.Ask()+ExtTrailingStop*Point()))>ExtTrailingStep*Point())
                 {
                  Print("Traling de Venda");
                  request.comment   = "Traling de Venda";
                  err=m_trade.PositionModify(m_position.Ticket(),
                                             m_symbol.Ask()+ExtTrailingStop*Point(),m_position.TakeProfit());
                  if(!err)
                    {
                     return(-1);
                    }
                 }
              }
           }
        }
     }
   return(0);
  }
//+------------------------------------------------------------------+
//|   CheckMoneyForTrade                                                       |
//+------------------------------------------------------------------+
bool CheckMoneyForTrade(string symb,double lots,ENUM_ORDER_TYPE type)
  {
//--- obtemos o preço de abertura
   MqlTick mqltick;
   SymbolInfoTick(symb,mqltick);
   double price=mqltick.ask;
   if(type==ORDER_TYPE_SELL)
      price=mqltick.bid;
//--- valores da margem necessária e livre
   double margin,free_margin=AccountInfoDouble(ACCOUNT_MARGIN_FREE);
//--- chamamos a função de verificação
   if(!OrderCalcMargin(type,symb,lots,price,margin))
     {
      //--- algo deu errado, informamos e retornamos false
      Print("Error in ",__FUNCTION__," code=",GetLastError());
      return(false);
     }
//--- se não houver fundos suficientes para realizar a operação
   if(margin>free_margin)
     {
      //--- informamos sobre o erro e retornamos false
      Print("Not enough money for ",EnumToString(type)," ",lots," ",symb," Error code=",GetLastError());
      return(false);
     }
//--- a verificação foi realizada com sucesso
   return(true);
  }
//+------------------------------------------------------------------+