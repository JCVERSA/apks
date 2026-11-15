package defpackage;

import android.graphics.Bitmap;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mgadplus.brower.jsbridge.BridgeWebView;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Iterator;

public abstract class q7d extends WebViewClient {
    public BridgeWebView a;

    public q7d(BridgeWebView bridgeWebView) {
        this.a = bridgeWebView;
    }

    public abstract void a(WebView webView, String str);

    public abstract boolean b();

    public abstract boolean c(String str);

    public abstract void d(WebView webView, String str);

    @Override
    public void onPageFinished(WebView webView, String str) throws Throwable {
        super.onPageFinished(webView, str);
        u5d.c(webView, "MgmiWebViewJavascriptBridge.js");
        if (this.a.getStartupMessage() != null) {
            Iterator<ued> it = this.a.getStartupMessage().iterator();
            while (it.hasNext()) {
                this.a.f(it.next());
            }
            this.a.setStartupMessage(null);
        }
        a(webView, str);
    }

    @Override
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        d(webView, str);
    }

    @Override
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        try {
            if (!b()) {
                str = URLDecoder.decode(str, "UTF-8");
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        if (str.startsWith("yy://return/")) {
            this.a.m(str);
            return true;
        }
        if (str.startsWith("yy://")) {
            this.a.n();
            return true;
        }
        if (c(str)) {
            return true;
        }
        return super.shouldOverrideUrlLoading(webView, str);
    }

    @Override
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        String string = webResourceRequest.getUrl().toString();
        try {
            if (!b()) {
                string = URLDecoder.decode(string, "UTF-8");
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        if (string.startsWith("yy://return/")) {
            this.a.m(string);
            return true;
        }
        if (string.startsWith("yy://")) {
            this.a.n();
            return true;
        }
        if (c(string)) {
            return true;
        }
        return super.shouldOverrideUrlLoading(webView, webResourceRequest);
    }
}
