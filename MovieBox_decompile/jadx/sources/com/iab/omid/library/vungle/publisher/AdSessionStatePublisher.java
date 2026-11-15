package com.iab.omid.library.vungle.publisher;

import android.webkit.WebView;
import com.iab.omid.library.vungle.adsession.c;
import com.iab.omid.library.vungle.adsession.d;
import com.iab.omid.library.vungle.internal.g;
import com.iab.omid.library.vungle.internal.h;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONObject;
import xe.f;

public abstract class AdSessionStatePublisher {

    private String f32999a;

    private ze.b f33000b;

    private com.iab.omid.library.vungle.adsession.a f33001c;

    private a f33002d;

    private long f33003e;

    enum a {
        AD_STATE_IDLE,
        AD_STATE_VISIBLE,
        AD_STATE_NOTVISIBLE
    }

    public AdSessionStatePublisher(String str) {
        a();
        this.f32999a = str;
        this.f33000b = new ze.b(null);
    }

    public void a() {
        this.f33003e = f.b();
        this.f33002d = a.AD_STATE_IDLE;
    }

    public void b(float f10) {
        h.a().c(s(), this.f32999a, f10);
    }

    void c(WebView webView) {
        this.f33000b = new ze.b(webView);
    }

    public void d(com.iab.omid.library.vungle.adsession.a aVar) {
        this.f33001c = aVar;
    }

    public void e(c cVar) {
        h.a().e(s(), this.f32999a, cVar.c());
    }

    public void f(com.iab.omid.library.vungle.adsession.h hVar, d dVar) {
        g(hVar, dVar, null);
    }

    protected void g(com.iab.omid.library.vungle.adsession.h hVar, d dVar, JSONObject jSONObject) {
        String strJ = hVar.j();
        JSONObject jSONObject2 = new JSONObject();
        xe.c.i(jSONObject2, "environment", "app");
        xe.c.i(jSONObject2, "adSessionType", dVar.c());
        xe.c.i(jSONObject2, "deviceInfo", xe.b.d());
        xe.c.i(jSONObject2, "deviceCategory", xe.a.a().toString());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        xe.c.i(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject3 = new JSONObject();
        xe.c.i(jSONObject3, "partnerName", dVar.h().b());
        xe.c.i(jSONObject3, "partnerVersion", dVar.h().c());
        xe.c.i(jSONObject2, "omidNativeInfo", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        xe.c.i(jSONObject4, "libraryVersion", "1.5.3-Vungle");
        xe.c.i(jSONObject4, "appId", g.c().a().getApplicationContext().getPackageName());
        xe.c.i(jSONObject2, "app", jSONObject4);
        if (dVar.d() != null) {
            xe.c.i(jSONObject2, "contentUrl", dVar.d());
        }
        if (dVar.e() != null) {
            xe.c.i(jSONObject2, "customReferenceData", dVar.e());
        }
        JSONObject jSONObject5 = new JSONObject();
        for (com.iab.omid.library.vungle.adsession.g gVar : dVar.i()) {
            xe.c.i(jSONObject5, gVar.c(), gVar.d());
        }
        h.a().f(s(), strJ, jSONObject2, jSONObject5, jSONObject);
    }

    public void h(String str, long j10) {
        if (j10 >= this.f33003e) {
            a aVar = this.f33002d;
            a aVar2 = a.AD_STATE_NOTVISIBLE;
            if (aVar != aVar2) {
                this.f33002d = aVar2;
                h.a().l(s(), this.f32999a, str);
            }
        }
    }

    public void i(Date date) {
        if (date == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        xe.c.i(jSONObject, CampaignEx.JSON_KEY_TIMESTAMP, Long.valueOf(date.getTime()));
        h.a().i(s(), jSONObject);
    }

    public void j(JSONObject jSONObject) {
        h.a().m(s(), this.f32999a, jSONObject);
    }

    public void k(boolean z10) {
        if (p()) {
            h.a().n(s(), this.f32999a, z10 ? "foregrounded" : "backgrounded");
        }
    }

    public void l() {
        this.f33000b.clear();
    }

    public void m(String str, long j10) {
        if (j10 >= this.f33003e) {
            this.f33002d = a.AD_STATE_VISIBLE;
            h.a().l(s(), this.f32999a, str);
        }
    }

    public void n(boolean z10) {
        if (p()) {
            h.a().d(s(), this.f32999a, z10 ? "locked" : "unlocked");
        }
    }

    public com.iab.omid.library.vungle.adsession.a o() {
        return this.f33001c;
    }

    public boolean p() {
        return this.f33000b.get() != 0;
    }

    public void q() {
        h.a().b(s(), this.f32999a);
    }

    public void r() {
        h.a().k(s(), this.f32999a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WebView s() {
        return (WebView) this.f33000b.get();
    }

    public void t() {
        j(null);
    }

    public void u() {
    }
}
