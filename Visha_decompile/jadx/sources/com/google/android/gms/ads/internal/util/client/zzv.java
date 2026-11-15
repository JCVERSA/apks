package com.google.android.gms.ads.internal.util.client;

import androidx.annotation.Nullable;
import defpackage.xbj;
import org.json.JSONObject;

public final class zzv {
    public final zzx a;

    public zzv() {
        this.a = new xbj(1, 0, 1.0d, false);
    }

    public static zzv zza(@Nullable JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("ping_strategy");
        return new zzv(jSONObjectOptJSONObject == null ? new xbj(1, 0, 1.0d, false) : new xbj(jSONObjectOptJSONObject.optInt("max_attempts", 1), jSONObjectOptJSONObject.optInt("initial_backoff_ms", 0), jSONObjectOptJSONObject.optDouble("backoff_multiplier", 1.0d), jSONObjectOptJSONObject.optBoolean("buffer_after_max_attempts", false)));
    }

    public final zzx zzb() {
        return this.a;
    }

    public zzv(zzx zzxVar) {
        this.a = zzxVar;
    }
}
