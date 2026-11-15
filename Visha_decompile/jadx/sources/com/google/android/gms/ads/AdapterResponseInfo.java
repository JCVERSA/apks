package com.google.android.gms.ads;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzv;
import org.json.JSONException;
import org.json.JSONObject;

public final class AdapterResponseInfo {
    public final zzv a;
    public final AdError b;

    public AdapterResponseInfo(zzv zzvVar) {
        this.a = zzvVar;
        com.google.android.gms.ads.internal.client.zze zzeVar = zzvVar.zzc;
        this.b = zzeVar == null ? null : zzeVar.zza();
    }

    @Nullable
    public static AdapterResponseInfo zza(@Nullable zzv zzvVar) {
        if (zzvVar != null) {
            return new AdapterResponseInfo(zzvVar);
        }
        return null;
    }

    @Nullable
    public AdError getAdError() {
        return this.b;
    }

    @NonNull
    public String getAdSourceId() {
        return this.a.zzf;
    }

    @NonNull
    public String getAdSourceInstanceId() {
        return this.a.zzh;
    }

    @NonNull
    public String getAdSourceInstanceName() {
        return this.a.zzg;
    }

    @NonNull
    public String getAdSourceName() {
        return this.a.zze;
    }

    @NonNull
    public String getAdapterClassName() {
        return this.a.zza;
    }

    @NonNull
    public Bundle getCredentials() {
        return this.a.zzd;
    }

    public long getLatencyMillis() {
        return this.a.zzb;
    }

    @NonNull
    public String toString() {
        try {
            return zzb().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }

    @NonNull
    public final JSONObject zzb() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        zzv zzvVar = this.a;
        jSONObject.put("Adapter", zzvVar.zza);
        jSONObject.put("Latency", zzvVar.zzb);
        String adSourceName = getAdSourceName();
        if (adSourceName == null) {
            jSONObject.put("Ad Source Name", "null");
        } else {
            jSONObject.put("Ad Source Name", adSourceName);
        }
        String adSourceId = getAdSourceId();
        if (adSourceId == null) {
            jSONObject.put("Ad Source ID", "null");
        } else {
            jSONObject.put("Ad Source ID", adSourceId);
        }
        String adSourceInstanceName = getAdSourceInstanceName();
        if (adSourceInstanceName == null) {
            jSONObject.put("Ad Source Instance Name", "null");
        } else {
            jSONObject.put("Ad Source Instance Name", adSourceInstanceName);
        }
        String adSourceInstanceId = getAdSourceInstanceId();
        if (adSourceInstanceId == null) {
            jSONObject.put("Ad Source Instance ID", "null");
        } else {
            jSONObject.put("Ad Source Instance ID", adSourceInstanceId);
        }
        JSONObject jSONObject2 = new JSONObject();
        Bundle bundle = zzvVar.zzd;
        for (String str : bundle.keySet()) {
            jSONObject2.put(str, bundle.get(str));
        }
        jSONObject.put("Credentials", jSONObject2);
        AdError adError = this.b;
        if (adError == null) {
            jSONObject.put("Ad Error", "null");
        } else {
            jSONObject.put("Ad Error", adError.zzb());
        }
        return jSONObject;
    }
}
