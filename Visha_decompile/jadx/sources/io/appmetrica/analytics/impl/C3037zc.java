package io.appmetrica.analytics.impl;

import android.os.Bundle;
import defpackage.y45;
import io.appmetrica.analytics.coreutils.internal.services.FrameworkDetector;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

public final class C3037zc implements J8 {
    public final Fg a;
    public final Le b;
    public final String c = "activation_unlock_event_sending";
    public final AtomicBoolean d;

    public C3037zc(Fg fg, F4 f4, Le le) {
        this.a = fg;
        this.b = le;
        this.d = new AtomicBoolean(le.a(false) || a(f4));
    }

    public final void a(String str) {
        try {
            Fj fj = AbstractC2521ej.a;
            String str2 = this.c;
            JSONObject jSONObjectPut = new JSONObject().put("source", str).put("framework", FrameworkDetector.framework());
            T9 t9H = C2910ua.E.h();
            Bundle applicationMetaData = t9H.d.getApplicationMetaData(t9H.a);
            JSONObject jSONObjectPut2 = jSONObjectPut.put("appmetrica_plugin_id", applicationMetaData != null ? applicationMetaData.getString("io.appmetrica.analytics.plugin_id") : null);
            Wj wj = C2910ua.E.D;
            String string = jSONObjectPut2.put("activation_offset", TimeUnit.SECONDS.convert(wj.a.currentTimeMillis() - wj.b, TimeUnit.MILLISECONDS)).toString();
            fj.getClass();
            fj.a(new Dj(str2, string));
        } catch (Throwable unused) {
        }
    }

    @Override
    public final boolean b() {
        String str;
        if (!this.d.get() && (str = ((C2469ch) this.a.a()).m) != null && !y45.e(str, "629a824d-c717-4ba5-bc0f-3f3968554d01") && this.d.compareAndSet(false, true)) {
            this.b.b(true);
            a("activation");
        }
        return this.d.get();
    }

    public final void a() {
        if (this.d.compareAndSet(false, true)) {
            this.b.b(true);
            a("timer");
        }
    }

    public static boolean a(F4 f4) {
        String str = f4.a;
        return (str == null || y45.e(str, "629a824d-c717-4ba5-bc0f-3f3968554d01")) ? false : true;
    }
}
