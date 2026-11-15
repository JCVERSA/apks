package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import defpackage.y45;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import org.json.JSONObject;

public final class C2542ff implements Y7 {

    @Nullable
    public final String a;

    @NonNull
    public final JSONObject b;
    public final boolean c;
    public final boolean d;

    @NonNull
    public final X7 e;

    public C2542ff(@Nullable String str, @NonNull JSONObject jSONObject, boolean z, boolean z2, @NonNull X7 x7) {
        this.a = str;
        this.b = jSONObject;
        this.c = z;
        this.d = z2;
        this.e = x7;
    }

    @Override
    @NonNull
    public final X7 a() {
        return this.e;
    }

    @Nullable
    public final JSONObject b() {
        if (!this.c) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("trackingId", this.a);
            if (this.b.length() <= 0) {
                return jSONObject;
            }
            jSONObject.put("additionalParams", this.b);
            return jSONObject;
        } catch (Throwable unused) {
            return jSONObject;
        }
    }

    @NonNull
    public final JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("trackingId", this.a);
            jSONObject.put("additionalParams", this.b);
            jSONObject.put("wasSet", this.c);
            jSONObject.put("autoTracking", this.d);
            jSONObject.put("source", this.e.a);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public final String toString() {
        return "PreloadInfoState{trackingId='" + this.a + "', additionalParameters=" + this.b + ", wasSet=" + this.c + ", autoTrackingEnabled=" + this.d + ", source=" + this.e + '}';
    }

    @NonNull
    public static C2542ff a(@Nullable JSONObject jSONObject) {
        X7 x7;
        String strOptStringOrNull = JsonUtils.optStringOrNull(jSONObject, "trackingId");
        JSONObject jSONObjectOptJsonObjectOrDefault = JsonUtils.optJsonObjectOrDefault(jSONObject, "additionalParams", new JSONObject());
        int i = 0;
        boolean zOptBooleanOrDefault = JsonUtils.optBooleanOrDefault(jSONObject, "wasSet", false);
        boolean zOptBooleanOrDefault2 = JsonUtils.optBooleanOrDefault(jSONObject, "autoTracking", false);
        String strOptStringOrNull2 = JsonUtils.optStringOrNull(jSONObject, "source");
        X7[] x7ArrValues = X7.values();
        int length = x7ArrValues.length;
        while (true) {
            if (i >= length) {
                x7 = null;
                break;
            }
            x7 = x7ArrValues[i];
            if (y45.e(x7.a, strOptStringOrNull2)) {
                break;
            }
            i++;
        }
        return new C2542ff(strOptStringOrNull, jSONObjectOptJsonObjectOrDefault, zOptBooleanOrDefault, zOptBooleanOrDefault2, x7 == null ? X7.b : x7);
    }
}
