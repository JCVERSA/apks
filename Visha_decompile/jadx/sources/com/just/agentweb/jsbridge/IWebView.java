package com.just.agentweb.jsbridge;

import android.content.Context;

public interface IWebView {
    Context getContext();

    void loadUrl(String str);
}
