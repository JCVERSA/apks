package io.appmetrica.analytics.impl;

import defpackage.y45;
import org.json.JSONObject;

public final class Vn {
    public final Yn a;
    public final Yn b;
    public final Wn c;
    public JSONObject d;

    public Vn(Yn yn, Yn yn2, Wn wn) {
        this.a = yn;
        this.b = yn2;
        this.c = wn;
    }

    public final synchronized JSONObject a() {
        JSONObject jSONObject;
        try {
            if (this.d == null) {
                JSONObject jSONObjectA = this.c.a(a(this.a), a(this.b));
                this.d = jSONObjectA;
                a(jSONObjectA);
            }
            jSONObject = this.d;
            if (jSONObject == null) {
                y45.B("fileContents");
                jSONObject = null;
            }
        } catch (Throwable th) {
            throw th;
        }
        return jSONObject;
    }

    public static JSONObject a(Yn yn) {
        try {
            String strA = yn.a();
            return strA != null ? new JSONObject(strA) : new JSONObject();
        } catch (Throwable unused) {
            return new JSONObject();
        }
    }

    public final synchronized void a(JSONObject jSONObject) {
        String string = jSONObject.toString();
        try {
            this.a.a(string);
        } catch (Throwable unused) {
        }
        try {
            this.b.a(string);
        } catch (Throwable unused2) {
        }
    }
}
