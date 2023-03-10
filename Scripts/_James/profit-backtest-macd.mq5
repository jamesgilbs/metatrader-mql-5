{ 
  This code checks and performs a bounce test on the stock exchange.
  This function below is a test buy and sell signal.
  With stop gain and stop less, based on the previous candle.

  Indicator used: MACD, MediaVol, ChainSetup 
  WINM21 25,42 min:
  Operacoes: 85,71% 6/7 
  Fator Lucro: 15,13
  Drawdown: 7,08% 
}

Const
  RespiroTicks        = 0;
  AlvoFibo            = 0.68; //Verfificar amarracao de 1.0 ou 0.98
  DayTrade            = Verdadeiro;
  HoraEntradaInicio   = 0900;
  HoraEntradaFim      = 1730;
  HoraFechamento      = 1730; {Horário da Penúltima Barra}

var
  R                        : Real;
  EntradaC, StopC, AlvoC   : Real;
  EntradaV, StopV, AlvoV   : Real;
  MediaVol                 : Real;
  MediaChain               : Real;
  MACDl, MACDs             : Real;
  MediaRapida              : Real;
  MediaLenta               : Real;
  vStochasticL             : Real;
  SinalC                   : Booleano;
  SinalV                   : Booleano;
 
Inicio
  {Cálculos}
  R := RespiroTicks * MinPriceIncrement;
  
  {Indicadores}
  MediaVol := Media(12, Volume); // Media no Volume
  MediaChain :=  Media(12, ChainSetup);
  MACDl := MACD(26, 12, 9)|0|;
  MACDs := MediaExp(9, MACDl);
  MediaRapida := Media(8, Fechamento);
  MediaLenta := Media(80, Fechamento);
  vStochasticL := FastStochastic(8);
   
  {Busca Entrada}
  Se (BuyPosition = 0) e (SellPosition = 0) e 
     ((Daytrade e (Time >= HoraEntradaInicio) e (Time < HoraEntradaFim)) ou
     (DayTrade = Falso)) 
  entao

    inicio
      {Compra}
      Se  
          (Volume > (MediaVol * 1.2)) 
       {e ((vStochasticL[0] >= 20))}
        e (Fechamento > MediaRapida) e (Fechamento > MediaLenta)
        e ((MACDl > 0) e (MACDs > 0)) 
        e (MACDl > MACDs) e ((MACDl[1] < MACDs[1]))
        e (ChainSetup < MediaChain)

      entao
        
        inicio
          SinalC := Verdadeiro;  
          Alert(1);
          PaintBar(clVerde);
             
          EntradaC := Maxima + R;
          StopC := Minima - R;
          AlvoC := Maxima + (Range * AlvoFibo);

          BuyStop(EntradaC,EntradaC);
          SellToCoverLimit(AlvoC);
          SellToCoverStop(StopC,StopC);        
        fim;

      {Venda}
      Se  
          
          (Volume > (MediaVol * 1.2))
         
       {e ((vStochasticL[0] <= -20))}
        e (Fechamento < MediaRapida) e (Fechamento < MediaLenta)
        e ((MACDl < 0) e (MACDs < 0)) 
        e (MACDl < MACDs) e ((MACDl[1] > MACDs[1]))
        e (ChainSetup < MediaChain)

      entao

       inicio                 
          SinalV := Verdadeiro; 
          Alert(2);  
          PaintBar(clVermelho);

          EntradaV := Minima - R;
          StopV := Maxima;
          AlvoV := Minima - (Range * AlvoFibo);

          SellShortStop(EntradaV, EntradaV);
          BuyToCoverLimit(AlvoV);
          BuyToCoverStop(StopV,StopV);
        fim;
    fim;

  {Se estiver comprado - buscar saída}
  Se (BuyPosition > 0) entao
    inicio
      SellToCoverLimit(AlvoC);
      SellToCoverStop(StopC,StopC);
      Se (Minima <= StopC) entao SellToCoverAtMarket;      
    fim;

  {Se estiver vendido - buscar saída}
  Se (SellPosition > 0) entao
    inicio
      BuyToCoverLimit(AlvoV);
      BuyToCoverStop(StopV,StopV);
      Se (Maxima >= StopV) entao BuyToCoverAtMarket;      
    fim;

  {Fechar Posiçoes no Final do Dia}
  Se (DayTrade) e (Time >= HoraFechamento) entao ClosePosition;
  Plot(Close);
  
Fim;



