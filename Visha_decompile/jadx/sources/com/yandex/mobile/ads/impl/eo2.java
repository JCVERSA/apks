package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.text.TextUtils;
import android.webkit.WebView;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

public final class eo2 extends g9 {
    private WebView f;
    private Long g = null;
    private final Map<String, eb2> h;
    private final String i;

    public class a implements Runnable {
        private final WebView b;

        public a(eo2 eo2Var) {
            this.b = eo2Var.f;
        }

        @Override
        public final void run() {
            this.b.destroy();
        }
    }

    public eo2(String str, Map map) {
        this.h = map;
        this.i = str;
    }

    @Override
    public final void b() {
        super.b();
        new Handler().postDelayed(new a(this), Math.max(4000 - (this.g == null ? 4000L : TimeUnit.MILLISECONDS.convert(System.nanoTime() - this.g.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.f = null;
    }

    @Override
    public final void a() {
        WebView webView = new WebView(ro2.a().b());
        this.f = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        a(this.f);
        WebView webView2 = this.f;
        String str = this.i;
        if (webView2 != null && !TextUtils.isEmpty(str)) {
            webView2.loadUrl("javascript: " + str);
        }
        for (String str2 : this.h.keySet()) {
            String externalForm = this.h.get(str2).a().toExternalForm();
            WebView webView3 = this.f;
            if (externalForm != null && !TextUtils.isEmpty(str2)) {
                String strReplace = "(function() {this.omidVerificationProperties = this.omidVerificationProperties || {};this.omidVerificationProperties.injectionId = '%INJECTION_ID%';var script=document.createElement('script');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");document.body.appendChild(script);})();".replace("%SCRIPT_SRC%", externalForm).replace("%INJECTION_ID%", str2);
                if (webView3 != null && !TextUtils.isEmpty(strReplace)) {
                    webView3.loadUrl("javascript: " + strReplace);
                }
            }
        }
        this.g = Long.valueOf(System.nanoTime());
    }

    @Override
    public final void a(vn2 vn2Var, d9 d9Var) {
        JSONObject jSONObject = new JSONObject();
        Map<String, eb2> mapD = d9Var.d();
        for (String str : mapD.keySet()) {
            io2.a(jSONObject, str, mapD.get(str));
        }
        a(vn2Var, d9Var, jSONObject);
    }
}
