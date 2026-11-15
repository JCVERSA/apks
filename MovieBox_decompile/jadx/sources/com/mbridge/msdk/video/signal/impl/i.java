package com.mbridge.msdk.video.signal.impl;

import android.content.res.Configuration;
import android.util.Base64;
import android.webkit.WebView;
import com.cloud.tmc.integration.params.TmcStartParams;
import org.json.JSONObject;

public class i extends b {

    private WebView f39001a;

    private int f39002b = 0;

    public i(WebView webView) {
        this.f39001a = webView;
    }

    @Override
    public void a(Configuration configuration) {
        super.a(configuration);
        try {
            JSONObject jSONObject = new JSONObject();
            if (configuration.orientation == 2) {
                jSONObject.put("orientation", TmcStartParams.KEY_LANDSCAPE);
            } else {
                jSONObject.put("orientation", "portrait");
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f39001a, "orientation", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public void b() {
        super.b();
        com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f39001a, "onSystemDestory", "");
    }

    @Override
    public void d() {
        super.d();
        this.f39002b = 0;
        com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f39001a, "onSystemResume", "");
    }

    @Override
    public void e() {
        super.e();
        com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f39001a, "onSystemBackPressed", "");
    }

    @Override
    public void g() {
        super.g();
        this.f39002b = 1;
        com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f39001a, "onSystemPause", "");
    }

    @Override
    public void a(int i10) {
        super.a(i10);
        this.f39002b = i10;
    }

    @Override
    public int a() {
        return this.f39002b;
    }
}
