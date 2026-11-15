package io.appmetrica.analytics.impl;

import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.hisavana.common.tracking.TrackingKey;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import io.appmetrica.analytics.internal.CounterConfiguration;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class C2787pb {
    public final byte[] a;
    public final String b;
    public final int c;
    public final HashMap d;
    public final String e;
    public final Integer f;
    public final String g;
    public final String h;
    public final CounterConfigurationReporterType i;
    public final String j;

    public C2787pb(@NonNull String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        JSONObject jSONObject2 = jSONObject.getJSONObject(NotificationCompat.CATEGORY_EVENT);
        this.a = Base64.decode(jSONObject2.getString("jvm_crash"), 0);
        this.b = jSONObject2.getString("name");
        this.c = jSONObject2.getInt("bytes_truncated");
        this.j = JsonUtils.optStringOrNull(jSONObject2, "environment");
        String strOptString = jSONObject2.optString("trimmed_fields");
        this.d = new HashMap();
        if (strOptString != null) {
            try {
                HashMap mapC = AbstractC2712mb.c(strOptString);
                if (mapC != null) {
                    for (Map.Entry entry : mapC.entrySet()) {
                        this.d.put(EnumC2481d4.valueOf((String) entry.getKey()), Integer.valueOf(Integer.parseInt((String) entry.getValue())));
                    }
                }
            } catch (Throwable unused) {
            }
        }
        JSONObject jSONObject3 = jSONObject.getJSONObject("process_configuration");
        this.e = jSONObject3.getString(TrackingKey.PACKAGE_NAME);
        this.f = Integer.valueOf(jSONObject3.getInt("pid"));
        this.g = jSONObject3.getString("psid");
        JSONObject jSONObject4 = jSONObject.getJSONObject("reporter_configuration");
        this.h = jSONObject4.getString("api_key");
        this.i = a(jSONObject4);
    }

    public final String a() {
        return this.h;
    }

    public final int b() {
        return this.c;
    }

    public final byte[] c() {
        return this.a;
    }

    @Nullable
    public final String d() {
        return this.j;
    }

    public final String e() {
        return this.b;
    }

    public final String f() {
        return this.e;
    }

    public final Integer g() {
        return this.f;
    }

    public final String h() {
        return this.g;
    }

    @NonNull
    public final CounterConfigurationReporterType i() {
        return this.i;
    }

    @NonNull
    public final HashMap<EnumC2481d4, Integer> j() {
        return this.d;
    }

    public final String k() throws JSONException {
        HashMap map = new HashMap();
        for (Map.Entry entry : this.d.entrySet()) {
            map.put(((EnumC2481d4) entry.getKey()).name(), (Integer) entry.getValue());
        }
        return new JSONObject().put("process_configuration", new JSONObject().put("pid", this.f).put("psid", this.g).put(TrackingKey.PACKAGE_NAME, this.e)).put("reporter_configuration", new JSONObject().put("api_key", this.h).put("reporter_type", this.i.getStringValue())).put(NotificationCompat.CATEGORY_EVENT, new JSONObject().put("jvm_crash", Base64.encodeToString(this.a, 0)).put("name", this.b).put("bytes_truncated", this.c).put("trimmed_fields", AbstractC2712mb.b(map)).putOpt("environment", this.j)).toString();
    }

    public static CounterConfigurationReporterType a(JSONObject jSONObject) {
        return jSONObject.has("reporter_type") ? CounterConfigurationReporterType.fromStringValue(jSONObject.getString("reporter_type")) : CounterConfigurationReporterType.MAIN;
    }

    public C2787pb(@NonNull C2408a6 c2408a6, @NonNull C2431b4 c2431b4, @Nullable HashMap<EnumC2481d4, Integer> map) {
        this.a = c2408a6.getValueBytes();
        this.b = c2408a6.getName();
        this.c = c2408a6.getBytesTruncated();
        if (map != null) {
            this.d = map;
        } else {
            this.d = new HashMap();
        }
        C2791pf c2791pfA = c2431b4.a();
        this.e = c2791pfA.f();
        this.f = c2791pfA.g();
        this.g = c2791pfA.h();
        CounterConfiguration counterConfigurationB = c2431b4.b();
        this.h = counterConfigurationB.getApiKey();
        this.i = counterConfigurationB.getReporterType();
        this.j = c2408a6.f();
    }
}
