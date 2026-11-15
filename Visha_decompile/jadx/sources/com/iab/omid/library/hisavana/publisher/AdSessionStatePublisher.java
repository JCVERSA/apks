package com.iab.omid.library.hisavana.publisher;

import android.webkit.WebView;
import com.iab.omid.library.hisavana.internal.h;
import com.transsion.push.PushConstants;
import defpackage.d7d;
import defpackage.e3d;
import defpackage.k8d;
import defpackage.lob;
import defpackage.qed;
import defpackage.t1d;
import defpackage.t7;
import defpackage.u7;
import defpackage.y6d;
import defpackage.z5;
import defpackage.zfd;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONObject;

public abstract class AdSessionStatePublisher {
    public String a;
    public d7d b;
    public z5 c;
    public a d;
    public long e;

    public enum a {
        AD_STATE_IDLE,
        AD_STATE_VISIBLE,
        AD_STATE_NOTVISIBLE
    }

    public AdSessionStatePublisher(String str) {
        a();
        this.a = str;
        this.b = new d7d(null);
    }

    public void a() {
        this.e = qed.b();
        this.d = a.AD_STATE_IDLE;
    }

    public void b(float f) {
        h.a().c(s(), this.a, f);
    }

    public void c(z5 z5Var) {
        this.c = z5Var;
    }

    public void d(t7 t7Var) {
        h.a().e(s(), this.a, t7Var.c());
    }

    public void e(e3d e3dVar, u7 u7Var) {
        f(e3dVar, u7Var, null);
    }

    public void f(e3d e3dVar, u7 u7Var, JSONObject jSONObject) {
        String strK = e3dVar.k();
        JSONObject jSONObject2 = new JSONObject();
        k8d.i(jSONObject2, "environment", "app");
        k8d.i(jSONObject2, "adSessionType", u7Var.b());
        k8d.i(jSONObject2, "deviceInfo", y6d.d());
        k8d.i(jSONObject2, "deviceCategory", t1d.a().toString());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        k8d.i(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject3 = new JSONObject();
        k8d.i(jSONObject3, "partnerName", u7Var.g().b());
        k8d.i(jSONObject3, "partnerVersion", u7Var.g().c());
        k8d.i(jSONObject2, "omidNativeInfo", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        k8d.i(jSONObject4, "libraryVersion", "1.5.4-Hisavana");
        k8d.i(jSONObject4, PushConstants.PROVIDER_FIELD_APP_ID, zfd.c().a().getApplicationContext().getPackageName());
        k8d.i(jSONObject2, "app", jSONObject4);
        if (u7Var.c() != null) {
            k8d.i(jSONObject2, "contentUrl", u7Var.c());
        }
        if (u7Var.d() != null) {
            k8d.i(jSONObject2, "customReferenceData", u7Var.d());
        }
        JSONObject jSONObject5 = new JSONObject();
        for (lob lobVar : u7Var.h()) {
            k8d.i(jSONObject5, lobVar.d(), lobVar.e());
        }
        h.a().f(s(), strK, jSONObject2, jSONObject5, jSONObject);
    }

    public void g(WebView webView) {
        this.b = new d7d(webView);
    }

    public void h(String str, long j) {
        if (j >= this.e) {
            a aVar = this.d;
            a aVar2 = a.AD_STATE_NOTVISIBLE;
            if (aVar != aVar2) {
                this.d = aVar2;
                h.a().l(s(), this.a, str);
            }
        }
    }

    public void i(Date date) {
        if (date == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        k8d.i(jSONObject, "timestamp", Long.valueOf(date.getTime()));
        h.a().i(s(), jSONObject);
    }

    public void j(JSONObject jSONObject) {
        h.a().m(s(), this.a, jSONObject);
    }

    public void k(boolean z) {
        if (p()) {
            h.a().n(s(), this.a, z ? "foregrounded" : "backgrounded");
        }
    }

    public void l() {
        this.b.clear();
    }

    public void m(String str, long j) {
        if (j >= this.e) {
            this.d = a.AD_STATE_VISIBLE;
            h.a().l(s(), this.a, str);
        }
    }

    public void n(boolean z) {
        if (p()) {
            h.a().d(s(), this.a, z ? "locked" : "unlocked");
        }
    }

    public z5 o() {
        return this.c;
    }

    public boolean p() {
        return this.b.get() != 0;
    }

    public void q() {
        h.a().b(s(), this.a);
    }

    public void r() {
        h.a().k(s(), this.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WebView s() {
        return (WebView) this.b.get();
    }

    public void t() {
        j(null);
    }

    public void u() {
    }
}
