package com.apm.insight.k;

import android.util.Log;
import androidx.annotation.Nullable;
import com.apm.insight.runtime.m;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import org.json.JSONArray;
import org.json.JSONObject;

public final class a {

    private static Runnable f18955a = new Runnable() {
        @Override
        public final void run() {
            if (com.apm.insight.l.k.b(com.apm.insight.e.g())) {
                a.i();
            }
            if (a.f18956b > 0) {
                if (com.apm.insight.l.a.b(com.apm.insight.e.g())) {
                    m.a().a(a.f18955a, MBInterstitialActivity.WEB_LOAD_TIME);
                } else {
                    m.a().a(a.f18955a, 60000L);
                }
            }
        }
    };

    private static int f18956b = 0;

    public static void a() {
        f18956b = 40;
        m.a().a(f18955a);
    }

    public static void b() {
        if (!j.b()) {
            j.c();
        }
        if (com.apm.insight.l.k.b(com.apm.insight.e.g()) && j.g()) {
            i();
        }
    }

    public static boolean c() {
        return false;
    }

    @Nullable
    private static byte[] h() {
        try {
            return e.a(com.apm.insight.e.i().getConfigUrl(), com.apm.insight.entity.b.a().toString().getBytes());
        } catch (Throwable th2) {
            com.apm.insight.a.a(th2);
            return null;
        }
    }

    public static synchronized void i() {
        try {
            int i10 = f18956b;
            if (i10 > 0) {
                f18956b = i10 - 1;
            }
            com.apm.insight.a.a((Object) "try fetchApmConfig");
            if (!com.apm.insight.l.a.b(com.apm.insight.e.g())) {
                j.c();
                if (j.a()) {
                    f18956b = 0;
                }
                return;
            }
            JSONArray jSONArrayOptJSONArray = null;
            try {
                byte[] bArrH = h();
                if (bArrH != null) {
                    jSONArrayOptJSONArray = new JSONObject(new String(bArrH)).optJSONArray("data");
                }
            } catch (Throwable th2) {
                if (com.apm.insight.e.i().isDebugMode()) {
                    Log.e("npth", "npth NPTH Catch Error", th2);
                }
            }
            com.apm.insight.a.a((Object) "after fetchApmConfig net ".concat(String.valueOf(jSONArrayOptJSONArray)));
            if (jSONArrayOptJSONArray == null) {
                f18956b -= 10;
            } else {
                com.apm.insight.runtime.a.a(jSONArrayOptJSONArray, true);
                f18956b = 0;
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    public static void d() {
    }
}
