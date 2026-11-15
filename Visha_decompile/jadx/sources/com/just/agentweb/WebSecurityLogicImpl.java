package com.just.agentweb;

import android.annotation.TargetApi;
import android.webkit.WebView;
import androidx.collection.ArrayMap;

public class WebSecurityLogicImpl implements WebSecurityCheckLogic {
    private String TAG = getClass().getSimpleName();
    private int webviewType;

    public WebSecurityLogicImpl(int i) {
        this.webviewType = i;
    }

    public static WebSecurityLogicImpl getInstance(int i) {
        return new WebSecurityLogicImpl(i);
    }

    @Override
    @TargetApi(11)
    public void dealHoneyComb(WebView webView) {
    }

    @Override
    public void dealJsInterface(ArrayMap<String, Object> arrayMap, AgentWeb.SecurityType securityType) {
        AgentWeb.SecurityType securityType2 = AgentWeb.SecurityType.DEFAULT_CHECK;
    }
}
