package com.doman.core.b.a;

import android.content.Context;
import android.text.TextUtils;
import com.android.net.n;
import com.android.net.p;
import com.android.net.u;
import com.lzy.okgo.cookie.SerializableCookie;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Map;
import org.json.JSONObject;

public final class f extends d<com.doman.core.a.f> {
    protected static p.a l = new p.a() {
        @Override
        public final void a(u uVar) {
        }
    };
    private com.doman.core.b.e n;
    private p.b<com.doman.core.a.f> o;
    private String p;

    public f(Context context, com.doman.core.b.e eVar, p.b<com.doman.core.a.f> bVar, p.a aVar) {
        super(eVar.a(), aVar);
        this.p = "InitConfigRequest";
        ((d) this).m = context;
        this.n = eVar;
        this.o = bVar;
    }

    private static com.doman.core.a.f d(String str) {
        com.doman.core.a.f fVar = null;
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.getBoolean("success")) {
                return null;
            }
            JSONObject jSONObject2 = new JSONObject(com.doman.core.d.c.b.b(jSONObject.optString("data"), com.doman.core.b.c.c));
            com.doman.core.a.f fVar2 = new com.doman.core.a.f();
            try {
                fVar2.a = jSONObject2.optBoolean("useable");
                fVar2.b = jSONObject2.optBoolean("al_useable");
                fVar2.c = jSONObject2.optBoolean("va_useable");
                fVar2.d = jSONObject2.optBoolean("se_useable");
                fVar2.e = jSONObject2.optBoolean("dp_useable");
                fVar2.g = jSONObject2.optString("al_addr");
                fVar2.f = jSONObject2.optLong("al_interval");
                fVar2.h = jSONObject2.optInt("retry");
                fVar2.j = jSONObject2.optString(SerializableCookie.HOST);
                fVar2.i = jSONObject2.optString("schema");
                fVar2.l = jSONObject2.optString("backup_host");
                fVar2.k = jSONObject2.optString("backup_schema");
                fVar2.m = jSONObject2.optString("mq_host");
                fVar2.n = jSONObject2.optString("mq_topic");
                fVar2.o = jSONObject2.optBoolean("mq_switch");
                fVar2.p = jSONObject2.optString("mq_did");
                fVar2.x = jSONObject2.optBoolean("p_usable");
                fVar2.y = jSONObject2.optLong("p_interval");
                fVar2.z = jSONObject2.optString("p_addr");
                fVar2.A = jSONObject2.optBoolean("pe_usable");
                fVar2.B = jSONObject2.optLong("pe_interval");
                fVar2.D = jSONObject2.optInt("feedback");
                fVar2.q = jSONObject2.optString("k_a");
                fVar2.r = jSONObject2.optLong("k_time");
                fVar2.u = jSONObject2.optString("d_da", "");
                fVar2.t = jSONObject2.optInt("d_ds", 0);
                fVar2.v = jSONObject2.optString("d_du", "");
                fVar2.w = jSONObject2.optInt("d_dt", 0);
                String strOptString = jSONObject2.optString("ac_id");
                if (!TextUtils.isEmpty(strOptString)) {
                    fVar2.C = strOptString.split(StringUtils.COMMA);
                }
                fVar2.s = jSONObject2.optBoolean("ac_close");
                fVar2.E = jSONObject2.optString("gcfg", "");
                fVar2.F = jSONObject2.optLong("gdly", 0L);
                return fVar2;
            } catch (Throwable unused) {
                fVar = fVar2;
            }
        } catch (Throwable unused2) {
        }
        return fVar;
    }

    @Override
    public final com.doman.core.a.f c(String str) {
        return d(str);
    }

    @Override
    public final Map<String, String> f() {
        com.doman.core.b.e eVar = this.n;
        return eVar == null ? super.f() : eVar.a;
    }

    @Override
    public final n.b i() {
        return n.b.NORMAL;
    }

    @Override
    public final p.b<com.doman.core.a.f> n() {
        return this.o;
    }
}
