package com.iab.omid.library.hisavana.publisher;

import android.os.Handler;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.iab.omid.library.hisavana.adsession.d;
import com.iab.omid.library.hisavana.adsession.g;
import com.iab.omid.library.hisavana.adsession.h;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import le.c;
import le.f;
import org.json.JSONObject;

public class b extends AdSessionStatePublisher {

    private WebView f32778f;

    private Long f32779g;

    private final Map f32780h;

    private final String f32781i;

    class a extends WebViewClient {
        a() {
        }

        @Override
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Log.w("NativeBridge", "WebView renderer gone: " + renderProcessGoneDetail.toString() + "for WebView: " + webView);
            if (b.this.s() == webView) {
                Log.w("NativeBridge", "Deallocating the Native bridge as it is unusable. No further events will be generated for this session.");
                b.this.c(null);
            }
            webView.destroy();
            return true;
        }
    }

    class RunnableC0434b implements Runnable {

        private final WebView f32783a;

        RunnableC0434b() {
            this.f32783a = b.this.f32778f;
        }

        @Override
        public void run() {
            this.f32783a.destroy();
        }
    }

    public b(String str, Map map, String str2) {
        super(str);
        this.f32779g = null;
        this.f32780h = map;
        this.f32781i = str2;
    }

    @Override
    public void f(h hVar, d dVar) {
        JSONObject jSONObject = new JSONObject();
        Map mapE = dVar.e();
        for (String str : mapE.keySet()) {
            c.i(jSONObject, str, ((g) mapE.get(str)).f());
        }
        g(hVar, dVar, jSONObject);
    }

    @Override
    public void l() {
        super.l();
        new Handler().postDelayed(new RunnableC0434b(), Math.max(4000 - (this.f32779g == null ? 4000L : TimeUnit.MILLISECONDS.convert(f.b() - this.f32779g.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.f32778f = null;
    }

    @Override
    public void u() {
        super.u();
        w();
    }

    void w() {
        WebView webView = new WebView(com.iab.omid.library.hisavana.internal.g.c().a());
        this.f32778f = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f32778f.getSettings().setAllowContentAccess(false);
        this.f32778f.getSettings().setAllowFileAccess(false);
        this.f32778f.setWebViewClient(new a());
        c(this.f32778f);
        com.iab.omid.library.hisavana.internal.h.a().o(this.f32778f, this.f32781i);
        for (String str : this.f32780h.keySet()) {
            com.iab.omid.library.hisavana.internal.h.a().p(this.f32778f, ((g) this.f32780h.get(str)).c().toExternalForm(), str);
        }
        this.f32779g = Long.valueOf(f.b());
    }
}
