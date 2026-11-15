package io.appmetrica.analytics.impl;

import android.util.Base64;
import defpackage.qv0;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import io.appmetrica.analytics.impl.Tn;
import org.json.JSONException;
import org.json.JSONObject;

public final class Tn {
    public final Vn a;

    public Tn(Oe oe, C2612ia c2612ia) {
        this.a = new Vn(oe, c2612ia, new Wn() {
            @Override
            public final JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
                return Tn.a(jSONObject, jSONObject2);
            }
        });
    }

    public static final JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("device_id", JsonUtils.optStringOrNullable(jSONObject2, "device_id", JsonUtils.optStringOrNull(jSONObject, "device_id")));
        jSONObject3.put("device_id_hash", JsonUtils.optStringOrNullable(jSONObject2, "device_id_hash", JsonUtils.optStringOrNull(jSONObject, "device_id_hash")));
        jSONObject3.put("referrer", JsonUtils.optStringOrNullable(jSONObject2, "referrer", JsonUtils.optStringOrNull(jSONObject, "referrer")));
        jSONObject3.put("referrer_checked", JsonUtils.optBooleanOrNullable(jSONObject2, "referrer_checked", JsonUtils.optBooleanOrNullable(jSONObject, "referrer_checked", Boolean.FALSE)));
        jSONObject3.put("last_migration_api_level", AbstractC2712mb.a(jSONObject2, "last_migration_api_level", AbstractC2712mb.a(jSONObject, "last_migration_api_level", -1)));
        return jSONObject3;
    }

    public final synchronized void b(String str) {
        Vn vn = this.a;
        vn.a(vn.a().put("device_id_hash", str));
    }

    public final synchronized boolean c() {
        return this.a.a().optBoolean("referrer_checked", false);
    }

    public final synchronized void d() {
        Vn vn = this.a;
        vn.a(vn.a().put("referrer_checked", true));
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0026  */
    public final synchronized C2468cg b() {
        C2468cg c2468cg;
        String strOptStringOrNull = JsonUtils.optStringOrNull(this.a.a(), "referrer");
        if (strOptStringOrNull != null) {
            try {
                byte[] bArrDecode = Base64.decode(strOptStringOrNull.getBytes(qv0.b), 0);
                if (bArrDecode == null || bArrDecode.length == 0) {
                    c2468cg = null;
                } else {
                    c2468cg = new C2468cg(bArrDecode);
                }
            } catch (Throwable unused) {
            }
        } else {
            c2468cg = null;
        }
        return c2468cg;
    }

    public final synchronized void a(String str) {
        Vn vn = this.a;
        vn.a(vn.a().put("device_id", str));
    }

    public final synchronized String a() {
        return JsonUtils.optStringOrNull(this.a.a(), "device_id_hash");
    }

    public final synchronized void a(C2468cg c2468cg) {
        try {
            Vn vn = this.a;
            vn.a(vn.a().put("referrer", c2468cg != null ? new String(Base64.encode(c2468cg.a(), 0), qv0.b) : null));
        } catch (Throwable th) {
            throw th;
        }
    }
}
