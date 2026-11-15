package com.iab.omid.library.mmadbridge.publisher;

import android.os.Handler;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.iab.omid.library.mmadbridge.adsession.d;
import com.iab.omid.library.mmadbridge.internal.g;
import com.iab.omid.library.mmadbridge.internal.h;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
import re.c;
import re.f;

public class b extends AdSessionStatePublisher {

    private WebView f32898g;

    private Long f32899h;

    private final Map f32900i;

    private final String f32901j;

    class a extends WebViewClient {
        a() {
        }

        @Override
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Log.w("NativeBridge", "WebView renderer gone: " + renderProcessGoneDetail.toString() + "for WebView: " + webView);
            if (b.this.w() == webView) {
                Log.w("NativeBridge", "Deallocating the Native bridge as it is unusable. No further events will be generated for this session.");
                b.this.c(null);
            }
            webView.destroy();
            return true;
        }
    }

    class RunnableC0436b implements Runnable {

        private final WebView f32903a;

        RunnableC0436b() {
            this.f32903a = b.this.f32898g;
        }

        @Override
        public void run() {
            this.f32903a.destroy();
        }
    }

    public b(String str, Map map, String str2) {
        super(str);
        this.f32899h = null;
        this.f32900i = map;
        this.f32901j = str2;
    }

    void A() {
        WebView webView = new WebView(g.c().a());
        this.f32898g = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f32898g.getSettings().setAllowContentAccess(false);
        this.f32898g.getSettings().setAllowFileAccess(false);
        this.f32898g.setWebViewClient(new a());
        c(this.f32898g);
        h.a().p(this.f32898g, this.f32901j);
        for (String str : this.f32900i.keySet()) {
            h.a().q(this.f32898g, ((com.iab.omid.library.mmadbridge.adsession.g) this.f32900i.get(str)).c().toExternalForm(), str);
        }
        this.f32899h = Long.valueOf(f.b());
    }

    @Override
    public void f(com.iab.omid.library.mmadbridge.adsession.h hVar, d dVar) {
        JSONObject jSONObject = new JSONObject();
        Map mapF = dVar.f();
        for (String str : mapF.keySet()) {
            c.i(jSONObject, str, ((com.iab.omid.library.mmadbridge.adsession.g) mapF.get(str)).f());
        }
        g(hVar, dVar, jSONObject);
    }

    @Override
    public void o() {
        super.o();
        new Handler().postDelayed(new RunnableC0436b(), Math.max(4000 - (this.f32899h == null ? 4000L : TimeUnit.MILLISECONDS.convert(f.b() - this.f32899h.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.f32898g = null;
    }

    @Override
    public void y() {
        super.y();
        A();
    }
}
