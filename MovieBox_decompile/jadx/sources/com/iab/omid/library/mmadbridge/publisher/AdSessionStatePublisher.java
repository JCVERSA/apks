package com.iab.omid.library.mmadbridge.publisher;

import android.webkit.WebView;
import com.iab.omid.library.mmadbridge.adsession.c;
import com.iab.omid.library.mmadbridge.adsession.d;
import com.iab.omid.library.mmadbridge.internal.g;
import com.iab.omid.library.mmadbridge.internal.h;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONObject;
import re.f;

public abstract class AdSessionStatePublisher {

    private String f32888a;

    private te.b f32889b;

    private com.iab.omid.library.mmadbridge.adsession.a f32890c;

    private com.iab.omid.library.mmadbridge.adsession.media.a f32891d;

    private a f32892e;

    private long f32893f;

    enum a {
        AD_STATE_IDLE,
        AD_STATE_VISIBLE,
        AD_STATE_NOTVISIBLE
    }

    public AdSessionStatePublisher(String str) {
        a();
        this.f32888a = str;
        this.f32889b = new te.b(null);
    }

    public void a() {
        this.f32893f = f.b();
        this.f32892e = a.AD_STATE_IDLE;
    }

    public void b(float f10) {
        h.a().c(w(), this.f32888a, f10);
    }

    void c(WebView webView) {
        this.f32889b = new te.b(webView);
    }

    public void d(com.iab.omid.library.mmadbridge.adsession.a aVar) {
        this.f32890c = aVar;
    }

    public void e(c cVar) {
        h.a().f(w(), this.f32888a, cVar.d());
    }

    public void f(com.iab.omid.library.mmadbridge.adsession.h hVar, d dVar) {
        g(hVar, dVar, null);
    }

    protected void g(com.iab.omid.library.mmadbridge.adsession.h hVar, d dVar, JSONObject jSONObject) {
        String strS = hVar.s();
        JSONObject jSONObject2 = new JSONObject();
        re.c.i(jSONObject2, "environment", "app");
        re.c.i(jSONObject2, "adSessionType", dVar.c());
        re.c.i(jSONObject2, "deviceInfo", re.b.d());
        re.c.i(jSONObject2, "deviceCategory", re.a.a().toString());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        re.c.i(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject3 = new JSONObject();
        re.c.i(jSONObject3, "partnerName", dVar.h().b());
        re.c.i(jSONObject3, "partnerVersion", dVar.h().c());
        re.c.i(jSONObject2, "omidNativeInfo", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        re.c.i(jSONObject4, "libraryVersion", "1.4.13-Mmadbridge");
        re.c.i(jSONObject4, "appId", g.c().a().getApplicationContext().getPackageName());
        re.c.i(jSONObject2, "app", jSONObject4);
        if (dVar.d() != null) {
            re.c.i(jSONObject2, "contentUrl", dVar.d());
        }
        if (dVar.e() != null) {
            re.c.i(jSONObject2, "customReferenceData", dVar.e());
        }
        JSONObject jSONObject5 = new JSONObject();
        for (com.iab.omid.library.mmadbridge.adsession.g gVar : dVar.i()) {
            re.c.i(jSONObject5, gVar.d(), gVar.e());
        }
        h.a().g(w(), strS, jSONObject2, jSONObject5, jSONObject);
    }

    public void h(com.iab.omid.library.mmadbridge.adsession.media.a aVar) {
        this.f32891d = aVar;
    }

    public void i(String str) {
        k(str, null);
    }

    public void j(String str, long j10) {
        if (j10 >= this.f32893f) {
            a aVar = this.f32892e;
            a aVar2 = a.AD_STATE_NOTVISIBLE;
            if (aVar != aVar2) {
                this.f32892e = aVar2;
                h.a().m(w(), this.f32888a, str);
            }
        }
    }

    public void k(String str, JSONObject jSONObject) {
        h.a().e(w(), this.f32888a, str, jSONObject);
    }

    public void l(Date date) {
        if (date == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        re.c.i(jSONObject, CampaignEx.JSON_KEY_TIMESTAMP, Long.valueOf(date.getTime()));
        h.a().j(w(), jSONObject);
    }

    public void m(JSONObject jSONObject) {
        h.a().n(w(), this.f32888a, jSONObject);
    }

    public void n(boolean z10) {
        if (t()) {
            h.a().o(w(), this.f32888a, z10 ? "foregrounded" : "backgrounded");
        }
    }

    public void o() {
        this.f32889b.clear();
    }

    public void p(String str, long j10) {
        if (j10 >= this.f32893f) {
            this.f32892e = a.AD_STATE_VISIBLE;
            h.a().m(w(), this.f32888a, str);
        }
    }

    public void q(boolean z10) {
        if (t()) {
            h.a().d(w(), this.f32888a, z10 ? "locked" : "unlocked");
        }
    }

    public com.iab.omid.library.mmadbridge.adsession.a r() {
        return this.f32890c;
    }

    public com.iab.omid.library.mmadbridge.adsession.media.a s() {
        return this.f32891d;
    }

    public boolean t() {
        return this.f32889b.get() != 0;
    }

    public void u() {
        h.a().b(w(), this.f32888a);
    }

    public void v() {
        h.a().l(w(), this.f32888a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WebView w() {
        return (WebView) this.f32889b.get();
    }

    public void x() {
        m(null);
    }

    public void y() {
    }
}
