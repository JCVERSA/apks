package com.just.agentweb;

import android.webkit.ValueCallback;

public interface JsAccessEntrace extends QuickCallJs {
    void callJs(String str);

    void callJs(String str, ValueCallback<String> valueCallback);
}
