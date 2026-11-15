package com.just.agentweb;

import android.webkit.ValueCallback;
import android.webkit.WebView;

public abstract class BaseJsAccessEntrace implements JsAccessEntrace {
    public static final String TAG = "BaseJsAccessEntrace";
    private WebView mWebView;

    public BaseJsAccessEntrace(WebView webView) {
        this.mWebView = webView;
    }

    private String concat(String... strArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < strArr.length; i++) {
            String str = strArr[i];
            if (AgentWebUtils.isJson(str)) {
                sb.append(str);
            } else {
                sb.append("\"");
                sb.append(str);
                sb.append("\"");
            }
            if (i != strArr.length - 1) {
                sb.append(" , ");
            }
        }
        return sb.toString();
    }

    private void evaluateJs(String str, final ValueCallback<String> valueCallback) {
        this.mWebView.evaluateJavascript(str, new ValueCallback<String>() {
            @Override
            public void onReceiveValue(String str2) {
                ValueCallback valueCallback2 = valueCallback;
                if (valueCallback2 != null) {
                    valueCallback2.onReceiveValue(str2);
                }
            }
        });
    }

    private void loadJs(String str) {
        this.mWebView.loadUrl(str);
    }

    @Override
    public void callJs(String str, ValueCallback<String> valueCallback) {
        evaluateJs(str, valueCallback);
    }

    @Override
    public void quickCallJs(String str, ValueCallback<String> valueCallback, String... strArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("javascript:" + str);
        if (strArr == null || strArr.length == 0) {
            sb.append("()");
        } else {
            sb.append("(");
            sb.append(concat(strArr));
            sb.append(")");
        }
        callJs(sb.toString(), valueCallback);
    }

    @Override
    public void callJs(String str) {
        callJs(str, null);
    }

    @Override
    public void quickCallJs(String str, String... strArr) {
        quickCallJs(str, null, strArr);
    }

    @Override
    public void quickCallJs(String str) {
        quickCallJs(str, null);
    }
}
