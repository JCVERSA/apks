package com.iab.omid.library.vungle.publisher;

import android.os.Handler;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.iab.omid.library.vungle.adsession.d;
import com.iab.omid.library.vungle.adsession.g;
import com.iab.omid.library.vungle.adsession.h;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
import xe.c;
import xe.f;

public class b extends AdSessionStatePublisher {

    private WebView f33008f;

    private Long f33009g;

    private final Map f33010h;

    private final String f33011i;

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

    class RunnableC0438b implements Runnable {

        private final WebView f33013a;

        RunnableC0438b() {
            this.f33013a = b.this.f33008f;
        }

        @Override
        public void run() {
            this.f33013a.destroy();
        }
    }

    public b(String str, Map map, String str2) {
        super(str);
        this.f33009g = null;
        this.f33010h = map;
        this.f33011i = str2;
    }

    @Override
    public void f(h hVar, d dVar) {
        JSONObject jSONObject = new JSONObject();
        Map mapF = dVar.f();
        for (String str : mapF.keySet()) {
            c.i(jSONObject, str, ((g) mapF.get(str)).e());
        }
        g(hVar, dVar, jSONObject);
    }

    @Override
    public void l() {
        super.l();
        new Handler().postDelayed(new RunnableC0438b(), Math.max(4000 - (this.f33009g == null ? 4000L : TimeUnit.MILLISECONDS.convert(f.b() - this.f33009g.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.f33008f = null;
    }

    @Override
    public void u() {
        super.u();
        w();
    }

    void w() {
        WebView webView = new WebView(com.iab.omid.library.vungle.internal.g.c().a());
        this.f33008f = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f33008f.getSettings().setAllowContentAccess(false);
        this.f33008f.getSettings().setAllowFileAccess(false);
        this.f33008f.setWebViewClient(new a());
        c(this.f33008f);
        com.iab.omid.library.vungle.internal.h.a().o(this.f33008f, this.f33011i);
        for (String str : this.f33010h.keySet()) {
            com.iab.omid.library.vungle.internal.h.a().p(this.f33008f, ((g) this.f33010h.get(str)).b().toExternalForm(), str);
        }
        this.f33009g = Long.valueOf(f.b());
    }
}
