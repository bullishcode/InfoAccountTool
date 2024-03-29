//+------------------------------------------------------------------+
//|                                       AccountInfoBullishcode.mq5 |
//|                                  Copyright 2021, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2021, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"


//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart() {

    ENUM_ACCOUNT_TRADE_MODE tradeModeINT = AccountInfoInteger(ACCOUNT_TRADE_MODE);
    string tradeMode;

    if(tradeModeINT == 0) {
        tradeMode = "Cuenta DEMO";
    } else if(tradeModeINT == 1) {
        tradeMode = "Cuenta CONCURSO";
    } else if(tradeModeINT == 2)  {
        tradeMode = "Cuenta REAL";
    }

    ENUM_ACCOUNT_STOPOUT_MODE stopoutMode = AccountInfoInteger(ACCOUNT_MARGIN_SO_MODE);
    string stopoutModeString;

    if(stopoutMode == 0) {
        stopoutModeString = "%";
    } else if(stopoutMode == 1) {
        stopoutModeString = "Moneda";
    }

    ENUM_ACCOUNT_MARGIN_MODE marginMode = AccountInfoInteger(ACCOUNT_MARGIN_MODE);
    string marginModeString;

    if(marginMode == 0) {
        marginModeString = "Cuenta NETTING";
    } else if(marginMode == 1) {
        marginModeString = "Cuenta EXCHANGE";
    } else if(marginMode == 2)  {
        marginModeString = "Cuenta HEDGING";
    }

    int permisoTrading = AccountInfoInteger(ACCOUNT_TRADE_ALLOWED);
    string permisoTradingString;

    if(permisoTrading == 0) {
        permisoTradingString = "NO";
    } else if(permisoTrading == 1) {
        permisoTradingString = "SI";
    }

    int permisoEA = AccountInfoInteger(ACCOUNT_TRADE_EXPERT);
    string permisoEAstring;

    if(permisoEA == 0) {
        permisoEAstring = "NO";
    } else if(permisoEA == 1) {
        permisoEAstring = "SI";
    }

    Print("******************");
    Print("******************");
    Print("Cliente: ", AccountInfoString(ACCOUNT_NAME));
    Print("Servidor: ", AccountInfoString(ACCOUNT_SERVER));
    Print("Divisa de la cuenta: ", AccountInfoString(ACCOUNT_CURRENCY));
    Print("Decimales para la moneda de la cuenta: ", AccountInfoInteger(ACCOUNT_CURRENCY_DIGITS));
    Print("Broker: ", AccountInfoString(ACCOUNT_COMPANY));
    Print("Usuario: ", AccountInfoInteger(ACCOUNT_LOGIN));
    Print("Tipo de cuenta: ", tradeMode);
    Print("Apalancamiento: 1:", AccountInfoInteger(ACCOUNT_LEVERAGE));
    Print("Máx órdenes pendientes: ", AccountInfoInteger(ACCOUNT_LIMIT_ORDERS));
    Print("Margen mínimo permitido referido en: ", stopoutModeString);
    Print("Permiso de trading: ", permisoTradingString);
    Print("Permiso para EAs: ", permisoEAstring);
    Print("Modo de cálculo del margen: ", marginModeString);
    Print("Crédito concedido: ", AccountInfoDouble(ACCOUNT_CREDIT), "€");
    Print("Balance: ", AccountInfoDouble(ACCOUNT_BALANCE), "€");
    Print("Flotante: ", AccountInfoDouble(ACCOUNT_PROFIT), "€");
    Print("Equity: ", AccountInfoDouble(ACCOUNT_EQUITY), "€");
    Print("Margen disponible: ", AccountInfoDouble(ACCOUNT_MARGIN_FREE), "€");
    Print("Margen utilizado: ", AccountInfoDouble(ACCOUNT_MARGIN), "€");
    Print("Margen utilizado: ", AccountInfoDouble(ACCOUNT_MARGIN_LEVEL), "%");
    Print("Nivel de margen que requiere el recargo de la cuenta: ", AccountInfoDouble(ACCOUNT_MARGIN_SO_CALL), "%");
    Print("Nivel de margen para cerrar la posición menos rentable automáticamente: ", AccountInfoDouble(ACCOUNT_MARGIN_SO_SO), "%");
    Print("Fondos reservados para cubrir la garantía de todas las órdenes pendientes: ", AccountInfoDouble(ACCOUNT_MARGIN_INITIAL), "€");
    Print("Fondos reservados para cubrir el importe mínimo de todas las posiciones abiertas: ", AccountInfoDouble(ACCOUNT_MARGIN_MAINTENANCE), "€");
    Print("Tamaño actual de fondos en la cuenta: ", AccountInfoDouble(ACCOUNT_ASSETS), "€");
    Print("Tamaño actual de obligaciones en la cuenta: ", AccountInfoDouble(ACCOUNT_LIABILITIES), "€");
    Print("Importe actual de comisiones bloqueadas de la cuenta: ", AccountInfoDouble(ACCOUNT_COMMISSION_BLOCKED), "€");
    Print("******************");
    Print("******************");
    
}