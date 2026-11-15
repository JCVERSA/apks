package com.iab.omid.library.hisavana.publisher;

import android.webkit.WebView;
import com.iab.omid.library.hisavana.adsession.c;
import com.iab.omid.library.hisavana.adsession.d;
import com.iab.omid.library.hisavana.internal.g;
import com.iab.omid.library.hisavana.internal.h;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Date;
import le.f;
import org.json.JSONArray;
import org.json.JSONObject;

public abstract class AdSessionStatePublisher {

    private String f32769a;

    private ne.b f32770b;

    private com.iab.omid.library.hisavana.adsession.a f32771c;

    private a f32772d;

    private long f32773e;

    enum a {
        AD_STATE_IDLE,
        AD_STATE_VISIBLE,
        AD_STATE_NOTVISIBLE
    }

    public AdSessionStatePublisher(String str) {
        a();
        this.f32769a = str;
        this.f32770b = new ne.b(null);
    }

    public void a() {
        this.f32773e = f.b();
        this.f32772d = a.AD_STATE_IDLE;
    }

    public void b(float f10) {
        h.a().c(s(), this.f32769a, f10);
    }

    void c(WebView webView) {
        this.f32770b = new ne.b(webView);
    }

    public void d(com.iab.omid.library.hisavana.adsession.a aVar) {
        this.f32771c = aVar;
    }

    public void e(c cVar) {
        h.a().e(s(), this.f32769a, cVar.c());
    }

    public void f(com.iab.omid.library.hisavana.adsession.h hVar, d dVar) {
        g(hVar, dVar, null);
    }

    protected void g(com.iab.omid.library.hisavana.adsession.h hVar, d dVar, JSONObject jSONObject) {
        String strK = hVar.k();
        JSONObject jSONObject2 = new JSONObject();
        le.c.i(jSONObject2, "environment", "app");
        le.c.i(jSONObject2, "adSessionType", dVar.b());
        le.c.i(jSONObject2, "deviceInfo", le.b.d());
        le.c.i(jSONObject2, "deviceCategory", le.a.a().toString());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        le.c.i(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject3 = new JSONObject();
        le.c.i(jSONObject3, "partnerName", dVar.g().b());
        le.c.i(jSONObject3, "partnerVersion", dVar.g().c());
        le.c.i(jSONObject2, "omidNativeInfo", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        le.c.i(jSONObject4, "libraryVersion", "1.5.4-Hisavana");
        le.c.i(jSONObject4, "appId", g.c().a().getApplicationContext().getPackageName());
        le.c.i(jSONObject2, "app", jSONObject4);
        if (dVar.c() != null) {
            le.c.i(jSONObject2, "contentUrl", dVar.c());
        }
        if (dVar.d() != null) {
            le.c.i(jSONObject2, "customReferenceData", dVar.d());
        }
        JSONObject jSONObject5 = new JSONObject();
        for (com.iab.omid.library.hisavana.adsession.g gVar : dVar.h()) {
            le.c.i(jSONObject5, gVar.d(), gVar.e());
        }
        h.a().f(s(), strK, jSONObject2, jSONObject5, jSONObject);
    }

    public void h(String str, long j10) {
        if (j10 >= this.f32773e) {
            a aVar = this.f32772d;
            a aVar2 = a.AD_STATE_NOTVISIBLE;
            if (aVar != aVar2) {
                this.f32772d = aVar2;
                h.a().l(s(), this.f32769a, str);
            }
        }
    }

    public void i(Date date) {
        if (date == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        le.c.i(jSONObject, CampaignEx.JSON_KEY_TIMESTAMP, Long.valueOf(date.getTime()));
        h.a().i(s(), jSONObject);
    }

    public void j(JSONObject jSONObject) {
        h.a().m(s(), this.f32769a, jSONObject);
    }

    public void k(boolean z10) {
        if (p()) {
            h.a().n(s(), this.f32769a, z10 ? "foregrounded" : "backgrounded");
        }
    }

    public void l() {
        this.f32770b.clear();
    }

    public void m(String str, long j10) {
        if (j10 >= this.f32773e) {
            this.f32772d = a.AD_STATE_VISIBLE;
            h.a().l(s(), this.f32769a, str);
        }
    }

    public void n(boolean z10) {
        if (p()) {
            h.a().d(s(), this.f32769a, z10 ? "locked" : "unlocked");
        }
    }

    public com.iab.omid.library.hisavana.adsession.a o() {
        return this.f32771c;
    }

    public boolean p() {
        return this.f32770b.get() != 0;
    }

    public void q() {
        h.a().b(s(), this.f32769a);
    }

    public void r() {
        h.a().k(s(), this.f32769a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WebView s() {
        return (WebView) this.f32770b.get();
    }

    public void t() {
        j(null);
    }

    public void u() {
    }
}
