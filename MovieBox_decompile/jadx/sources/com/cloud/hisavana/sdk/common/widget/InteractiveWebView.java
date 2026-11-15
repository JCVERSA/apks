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
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.tmc.kernel.constants.TmcConstants;
import g7.j;
import java.lang.ref.WeakReference;

public class InteractiveWebView extends WebView {

    private b f21641a;

    private c f21642b;

    class a extends j {

        final AdsDTO f21643a;

        a(AdsDTO adsDTO) {
            this.f21643a = adsDTO;
        }

        @Override
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            AthenaTracker.S(this.f21643a, 5);
        }

        @Override
        public void onReceivedError(WebView webView, int i10, String str, String str2) {
            super.onReceivedError(webView, i10, str, str2);
        }

        @Override
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            AthenaTracker.S(this.f21643a, 4);
        }
    }

    private static class b {

        private WeakReference f21645a;

        public b(InteractiveWebView interactiveWebView) {
            this.f21645a = new WeakReference(interactiveWebView);
        }

        @JavascriptInterface
        public void handleClick() {
            b4.b().d("InteractiveWebView", "handleClick");
            InteractiveWebView interactiveWebView = (InteractiveWebView) this.f21645a.get();
            if (interactiveWebView != null) {
                interactiveWebView.g();
            }
        }

        @JavascriptInterface
        public void interactiveEvent(String str) {
            b4.b().d("InteractiveWebView", "interactiveEvent");
            InteractiveWebView interactiveWebView = (InteractiveWebView) this.f21645a.get();
            if (interactiveWebView != null) {
                interactiveWebView.i(str);
            }
        }

        @JavascriptInterface
        public void timeoutShutdown() {
            b4.b().d("InteractiveWebView", "timeoutShutdown");
            InteractiveWebView interactiveWebView = (InteractiveWebView) this.f21645a.get();
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

    public void g() {
        HSScopeHelper.f22503a.h(new Runnable() {
            @Override
            public final void run() {
                this.f60714a.j();
            }
        });
    }

    private void h() {
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
        setWebViewClient(new j());
        setWebChromeClient(new WebChromeClient());
        b bVar = new b(this);
        this.f21641a = bVar;
        addJavascriptInterface(bVar, "InteractiveWebView");
    }

    public void i(final String str) {
        HSScopeHelper.f22503a.h(new Runnable() {
            @Override
            public final void run() {
                this.f60711a.k(str);
            }
        });
    }

    public void j() {
        c cVar = this.f21642b;
        if (cVar != null) {
            cVar.b();
        }
    }

    public void k(String str) {
        c cVar = this.f21642b;
        if (cVar != null) {
            cVar.a(str);
        }
    }

    public void l() {
        c cVar = this.f21642b;
        if (cVar != null) {
            cVar.c();
        }
    }

    public void m() {
        HSScopeHelper.f22503a.h(new Runnable() {
            @Override
            public final void run() {
                this.f60713a.l();
            }
        });
    }

    @Override
    public void destroy() {
        try {
            getSettings().setJavaScriptEnabled(false);
            setWebChromeClient(null);
            clearHistory();
            clearCache(true);
            loadUrl(TmcConstants.LOAD_BASE_DATA_URL);
            freeMemory();
            this.f21642b = null;
            super.destroy();
        } catch (Exception e10) {
            b4.b().e("InteractiveWebView", "destroy " + Log.getStackTraceString(e10));
        }
    }

    @Override
    public boolean performClick() {
        return super.performClick();
    }

    public void setInteractiveListener(c cVar) {
        this.f21642b = cVar;
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

    public InteractiveWebView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        h();
    }
}
