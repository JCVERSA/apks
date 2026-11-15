package com.just.agentweb.jsbridge;

public interface WebViewJavascriptBridge {
    void sendToWeb(String str);

    void sendToWeb(String str, OnBridgeCallback onBridgeCallback);

    void sendToWeb(String str, Object... objArr);
}
