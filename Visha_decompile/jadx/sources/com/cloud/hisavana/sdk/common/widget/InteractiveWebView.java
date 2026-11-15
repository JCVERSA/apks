package com.cloud.hisavana.sdk.common.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import defpackage.ikd;
import defpackage.jm4;
import java.lang.ref.WeakReference;

public class InteractiveWebView extends WebView {
    public b b;
    public c c;

    public class a extends jm4 {
        public final AdsDTO a;

        public a(AdsDTO adsDTO) {
            this.a = adsDTO;
        }

        @Override
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            AthenaTracker.X(this.a, 5);
        }

        @Override
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
        }

        @Override
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            AthenaTracker.X(this.a, 4);
        }
    }

    public static class b {
        public WeakReference a;

        public b(InteractiveWebView interactiveWebView) {
            this.a = new WeakReference(interactiveWebView);
        }

        @JavascriptInterface
        public void handleClick() {
            ikd.b().d("InteractiveWebView", "handleClick");
            InteractiveWebView interactiveWebView = (InteractiveWebView) this.a.get();
            if (interactiveWebView != null) {
                interactiveWebView.g();
            }
        }

        @JavascriptInterface
        public void interactiveEvent(String str) {
            ikd.b().d("InteractiveWebView", "interactiveEvent");
            InteractiveWebView interactiveWebView = (InteractiveWebView) this.a.get();
            if (interactiveWebView != null) {
                interactiveWebView.i(str);
            }
        }

        @JavascriptInterface
        public void timeoutShutdown() {
            ikd.b().d("InteractiveWebView", "timeoutShutdown");
            InteractiveWebView interactiveWebView = (InteractiveWebView) this.a.get();
            if (interactiveWebView != null) {
                interactiveWebView.m();
            }
        }
    }

    public interface c {
        void a(String str);

        void b();

        void c();
    }

    public InteractiveWebView(@NonNull Context context) {
        super(context);
        h();
    }

    @Override
    public void destroy() {
        try {
            getSettings().setJavaScriptEnabled(false);
            setWebChromeClient(null);
            clearHistory();
            clearCache(true);
            loadUrl("about:blank");
            freeMemory();
            this.c = null;
            super.destroy();
        } catch (Exception e) {
            ikd.b().e("InteractiveWebView", "destroy " + Log.getStackTraceString(e));
        }
    }

    public final void g() {
        HSScopeHelper.a.p(new Runnable() {
            @Override
            public final void run() {
                this.b.j();
            }
        });
    }

    public final void h() {
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setSupportZoom(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setDisplayZoomControls(true);
        settings.setCacheMode(-1);
        settings.setDomStorageEnabled(true);
        settings.setAllowFileAccess(true);
        settings.setAllowContentAccess(true);
        setWebViewClient(new jm4());
        setWebChromeClient(new WebChromeClient());
        b bVar = new b(this);
        this.b = bVar;
        addJavascriptInterface(bVar, "InteractiveWebView");
    }

    public final void i(final String str) {
        HSScopeHelper.a.p(new Runnable() {
            @Override
            public final void run() {
                this.b.k(str);
            }
        });
    }

    public final void j() {
        c cVar = this.c;
        if (cVar != null) {
            cVar.b();
        }
    }

    public final void k(String str) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(str);
        }
    }

    public final void l() {
        c cVar = this.c;
        if (cVar != null) {
            cVar.c();
        }
    }

    public final void m() {
        HSScopeHelper.a.p(new Runnable() {
            @Override
            public final void run() {
                this.b.l();
            }
        });
    }

    @Override
    public boolean performClick() {
        return super.performClick();
    }

    public void setInteractiveListener(c cVar) {
        this.c = cVar;
    }

    public void setWebClientCallback(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return;
        }
        setWebViewClient(new a(adsDTO));
    }

    public InteractiveWebView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        h();
    }

    public InteractiveWebView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        h();
    }
}
