package com.mbridge.msdk.mbsignalcommon.base;

import android.net.http.SslError;
import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import java.io.File;

public class b extends WebViewClient {

    private a f35597a;

    private com.mbridge.msdk.mbsignalcommon.windvane.c f35598b;

    protected boolean a(String str, String str2) {
        try {
            return new File(str).getCanonicalFile().getPath().startsWith(new File(str2).getCanonicalFile().getPath());
        } catch (Exception unused) {
            return false;
        }
    }

    @Override
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        com.mbridge.msdk.mbsignalcommon.windvane.c cVar = this.f35598b;
        if (cVar != null) {
            cVar.a(webView, str);
        }
    }

    @Override
    public void onReceivedError(WebView webView, int i10, String str, String str2) {
        super.onReceivedError(webView, i10, str, str2);
        com.mbridge.msdk.mbsignalcommon.windvane.c cVar = this.f35598b;
        if (cVar != null) {
            cVar.a(webView, i10, str, str2);
        }
    }

    @Override
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        com.mbridge.msdk.mbsignalcommon.windvane.c cVar = this.f35598b;
        if (cVar != null) {
            cVar.a(webView, sslErrorHandler, sslError);
        }
    }

    @Override
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        o0.b("BaseWebViewClient", "WebView called onRenderProcessGone");
        if (webView != null) {
            try {
                ViewGroup viewGroup = (ViewGroup) webView.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(webView);
                }
                if (webView instanceof WindVaneWebView) {
                    ((WindVaneWebView) webView).release();
                } else {
                    webView.destroy();
                }
            } catch (Throwable th2) {
                o0.b("BaseWebViewClient", th2.getMessage());
                return true;
            }
        }
        com.mbridge.msdk.mbsignalcommon.windvane.c cVar = this.f35598b;
        if (cVar != null) {
            cVar.a(webView);
        }
        return true;
    }

    @Override
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        a aVar = this.f35597a;
        if (aVar != null && aVar.a(str)) {
            return true;
        }
        com.mbridge.msdk.mbsignalcommon.windvane.c cVar = this.f35598b;
        if (cVar != null) {
            cVar.b(webView, str);
        }
        return super.shouldOverrideUrlLoading(webView, str);
    }

    public void a(a aVar) {
        this.f35597a = aVar;
    }

    public a a() {
        return this.f35597a;
    }

    public void a(com.mbridge.msdk.mbsignalcommon.windvane.c cVar) {
        this.f35598b = cVar;
    }
}
