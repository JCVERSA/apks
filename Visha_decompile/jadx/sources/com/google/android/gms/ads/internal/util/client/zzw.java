package com.google.android.gms.ads.internal.util.client;

import androidx.annotation.Nullable;
import defpackage.jaj;
import org.json.JSONObject;

public abstract class zzw {
    public static zzw zzd(@Nullable JSONObject jSONObject) {
        return new jaj(jSONObject.optInt("impression_prerequisite", 0), jSONObject.optInt("click_prerequisite", 0), jSONObject.optBoolean("notification_flow_enabled", false));
    }

    public abstract int zza();

    public abstract int zzb();

    public abstract boolean zzc();
}
