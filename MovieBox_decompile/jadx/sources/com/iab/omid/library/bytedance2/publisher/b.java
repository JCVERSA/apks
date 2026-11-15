package com.iab.omid.library.bytedance2.publisher;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.iab.omid.library.bytedance2.adsession.AdSessionContext;
import com.iab.omid.library.bytedance2.adsession.VerificationScriptResource;
import com.iab.omid.library.bytedance2.internal.g;
import com.iab.omid.library.bytedance2.internal.h;
import com.iab.omid.library.bytedance2.utils.c;
import com.iab.omid.library.bytedance2.utils.f;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

public class b extends AdSessionStatePublisher {

    private WebView f32648g;

    private Long f32649h;

    private final Map<String, VerificationScriptResource> f32650i;

    private final String f32651j;

    class a extends WebViewClient {
        a() {
        }

        @Override
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Log.w("NativeBridge", "WebView renderer gone: " + renderProcessGoneDetail.toString() + "for WebView: " + webView);
            if (b.this.getWebView() == webView) {
                Log.w("NativeBridge", "Deallocating the Native bridge as it is unusable. No further events will be generated for this session.");
                b.this.a((WebView) null);
            }
            webView.destroy();
            return true;
        }
    }

    class RunnableC0431b implements Runnable {

        private final WebView f32653a;

        RunnableC0431b() {
            this.f32653a = b.this.f32648g;
        }

        @Override
        public void run() {
            this.f32653a.destroy();
        }
    }

    public b(String str, Map<String, VerificationScriptResource> map, String str2) {
        super(str);
        this.f32649h = null;
        this.f32650i = map;
        this.f32651j = str2;
    }

    @Override
    public void b() {
        super.b();
        new Handler().postDelayed(new RunnableC0431b(), Math.max(4000 - (this.f32649h == null ? 4000L : TimeUnit.MILLISECONDS.convert(f.b() - this.f32649h.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.f32648g = null;
    }

    @Override
    public void i() {
        super.i();
        j();
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    void j() {
        WebView webView = new WebView(g.b().a());
        this.f32648g = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f32648g.getSettings().setAllowContentAccess(false);
        this.f32648g.getSettings().setAllowFileAccess(false);
        this.f32648g.setWebViewClient(new a());
        a(this.f32648g);
        h.a().c(this.f32648g, this.f32651j);
        for (String str : this.f32650i.keySet()) {
            h.a().c(this.f32648g, this.f32650i.get(str).getResourceUrl().toExternalForm(), str);
        }
        this.f32649h = Long.valueOf(f.b());
    }

    @Override
    public void a(com.iab.omid.library.bytedance2.adsession.a aVar, AdSessionContext adSessionContext) {
        JSONObject jSONObject = new JSONObject();
        Map<String, VerificationScriptResource> injectedResourcesMap = adSessionContext.getInjectedResourcesMap();
        for (String str : injectedResourcesMap.keySet()) {
            c.a(jSONObject, str, injectedResourcesMap.get(str).toJsonObject());
        }
        a(aVar, adSessionContext, jSONObject);
    }
}
