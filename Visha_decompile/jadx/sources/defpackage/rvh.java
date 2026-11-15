package defpackage;

import android.os.Build;
import android.webkit.WebView;
import com.google.android.gms.internal.ads.d6;
import com.transsion.push.PushConstants;
import java.util.Date;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

public abstract class rvh {
    public final String a;
    public mwh b;
    public long c;
    public int d;

    public rvh(String str) {
        b();
        this.a = str;
        this.b = new mwh(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final WebView a() {
        return (WebView) this.b.get();
    }

    public final void b() {
        this.c = System.nanoTime();
        this.d = 1;
    }

    public void c() {
        this.b.clear();
    }

    public final void d(String str, long j) {
        if (j < this.c || this.d == 3) {
            return;
        }
        this.d = 3;
        d6.a().h(a(), this.a, str);
    }

    public final void e() {
        d6.a().c(a(), this.a);
    }

    public final void f(quh quhVar) {
        d6.a().d(a(), this.a, quhVar.b());
    }

    public final void g(Date date) {
        if (date == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        vvh.e(jSONObject, "timestamp", Long.valueOf(date.getTime()));
        d6.a().f(a(), jSONObject);
    }

    public final void h(String str, long j) {
        if (j >= this.c) {
            this.d = 2;
            d6.a().h(a(), this.a, str);
        }
    }

    public void i(suh suhVar, ruh ruhVar) {
        j(suhVar, ruhVar, null);
    }

    public final void j(suh suhVar, ruh ruhVar, JSONObject jSONObject) {
        String strH = suhVar.h();
        JSONObject jSONObject2 = new JSONObject();
        vvh.e(jSONObject2, "environment", "app");
        vvh.e(jSONObject2, "adSessionType", ruhVar.d());
        JSONObject jSONObject3 = new JSONObject();
        vvh.e(jSONObject3, "deviceType", Build.MANUFACTURER + "; " + Build.MODEL);
        vvh.e(jSONObject3, "osVersion", Integer.toString(Build.VERSION.SDK_INT));
        vvh.e(jSONObject3, "os", "Android");
        vvh.e(jSONObject2, "deviceInfo", jSONObject3);
        vvh.e(jSONObject2, "deviceCategory", uvh.a().toString());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        vvh.e(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject4 = new JSONObject();
        vvh.e(jSONObject4, "partnerName", ruhVar.e().b());
        vvh.e(jSONObject4, "partnerVersion", ruhVar.e().c());
        vvh.e(jSONObject2, "omidNativeInfo", jSONObject4);
        JSONObject jSONObject5 = new JSONObject();
        vvh.e(jSONObject5, "libraryVersion", "1.5.2-google_20241009");
        vvh.e(jSONObject5, PushConstants.PROVIDER_FIELD_APP_ID, hvh.b().a().getApplicationContext().getPackageName());
        vvh.e(jSONObject2, "app", jSONObject5);
        if (ruhVar.f() != null) {
            vvh.e(jSONObject2, "contentUrl", ruhVar.f());
        }
        if (ruhVar.g() != null) {
            vvh.e(jSONObject2, "customReferenceData", ruhVar.g());
        }
        JSONObject jSONObject6 = new JSONObject();
        Iterator it = ruhVar.h().iterator();
        if (it.hasNext()) {
            ubc.a(it.next());
            throw null;
        }
        d6.a().j(a(), strH, jSONObject2, jSONObject6, jSONObject);
    }

    public final void k(boolean z) {
        if (p()) {
            d6.a().i(a(), this.a, true != z ? "backgrounded" : "foregrounded");
        }
    }

    public final void l(float f) {
        d6.a().e(a(), this.a, f);
    }

    public final void m(boolean z) {
        if (p()) {
            d6.a().g(a(), this.a, true != z ? "unlocked" : "locked");
        }
    }

    public final void n(WebView webView) {
        this.b = new mwh(webView);
    }

    public void o() {
    }

    public final boolean p() {
        return this.b.get() != 0;
    }
}
