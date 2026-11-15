package com.mgtv.webview.jsbridge;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Iterator;
import java.util.List;

public class c extends WebViewClient {
    private BridgeWebView a;

    public c(BridgeWebView bridgeWebView) {
        this.a = bridgeWebView;
    }

    public void a(WebView webView, String str) {
    }

    public void b(WebView webView, String str) {
    }

    @Override
    public void onPageFinished(WebView webView, String str) throws Throwable {
        super.onPageFinished(webView, str);
        b.a(webView, "SspWebViewJavascriptBridge.js");
        if (this.a.c() != null) {
            Iterator<f> it = this.a.c().iterator();
            while (it.hasNext()) {
                this.a.a(it.next());
            }
            this.a.a((List<f>) null);
        }
        a(webView, str);
    }

    @Override
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        b(webView, str);
    }

    @Override
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (str.startsWith("yy://return/")) {
            try {
                str = URLDecoder.decode(str, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            this.a.e(str);
            return true;
        }
        if (!str.startsWith("yy://")) {
            if (a(str)) {
                return true;
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }
        this.a.d();
        try {
            URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
        }
        return true;
    }

    public boolean a(String str) {
        return false;
    }

    @Override
    @TargetApi(24)
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        String string = webResourceRequest.getUrl().toString();
        if (string.startsWith("yy://return/")) {
            try {
                string = URLDecoder.decode(string, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            this.a.e(string);
            return true;
        }
        if (string.startsWith("yy://")) {
            try {
                URLDecoder.decode(string, "UTF-8");
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
            this.a.d();
            return true;
        }
        if (a(string)) {
            return true;
        }
        return super.shouldOverrideUrlLoading(webView, webResourceRequest);
    }
}
