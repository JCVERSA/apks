package com.just.agentweb;

import android.webkit.WebView;
import androidx.collection.ArrayMap;

public interface WebSecurityCheckLogic {
    void dealHoneyComb(WebView webView);

    void dealJsInterface(ArrayMap<String, Object> arrayMap, AgentWeb.SecurityType securityType);
}
