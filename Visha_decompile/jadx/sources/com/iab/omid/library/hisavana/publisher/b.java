package com.iab.omid.library.hisavana.publisher;

import android.os.Handler;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.iab.omid.library.hisavana.internal.h;
import defpackage.e3d;
import defpackage.k8d;
import defpackage.lob;
import defpackage.qed;
import defpackage.u7;
import defpackage.zfd;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

public class b extends AdSessionStatePublisher {
    public WebView f;
    public Long g;
    public final Map h;
    public final String i;

    public class a extends WebViewClient {
        public a() {
        }

        @Override
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Log.w("NativeBridge", "WebView renderer gone: " + renderProcessGoneDetail.toString() + "for WebView: " + webView);
            if (b.this.s() == webView) {
                Log.w("NativeBridge", "Deallocating the Native bridge as it is unusable. No further events will be generated for this session.");
                b.this.g(null);
            }
            webView.destroy();
            return true;
        }
    }

    public class RunnableC0150b implements Runnable {
        private final WebView a;

        public RunnableC0150b() {
            this.a = b.this.f;
        }

        @Override
        public void run() {
            this.a.destroy();
        }
    }

    public b(String str, Map map, String str2) {
        super(str);
        this.g = null;
        this.h = map;
        this.i = str2;
    }

    @Override
    public void e(e3d e3dVar, u7 u7Var) {
        JSONObject jSONObject = new JSONObject();
        Map mapE = u7Var.e();
        for (String str : mapE.keySet()) {
            k8d.i(jSONObject, str, ((lob) mapE.get(str)).f());
        }
        f(e3dVar, u7Var, jSONObject);
    }

    @Override
    public void l() {
        super.l();
        new Handler().postDelayed(new RunnableC0150b(), Math.max(4000 - (this.g == null ? 4000L : TimeUnit.MILLISECONDS.convert(qed.b() - this.g.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.f = null;
    }

    @Override
    public void u() {
        super.u();
        w();
    }

    public void w() {
        WebView webView = new WebView(zfd.c().a());
        this.f = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f.getSettings().setAllowContentAccess(false);
        this.f.getSettings().setAllowFileAccess(false);
        this.f.setWebViewClient(new a());
        g(this.f);
        h.a().o(this.f, this.i);
        for (String str : this.h.keySet()) {
            h.a().p(this.f, ((lob) this.h.get(str)).c().toExternalForm(), str);
        }
        this.g = Long.valueOf(qed.b());
    }
}
