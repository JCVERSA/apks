package com.google.android.gms.ads;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

public class AdError {

    @NonNull
    public static final String UNDEFINED_DOMAIN = "undefined";
    public final int a;
    public final String b;
    public final String c;
    public final AdError d;

    public AdError(int i, @NonNull String str, @NonNull String str2, @Nullable AdError adError) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = adError;
    }

    @Nullable
    public AdError getCause() {
        return this.d;
    }

    public int getCode() {
        return this.a;
    }

    @NonNull
    public String getDomain() {
        return this.c;
    }

    @NonNull
    public String getMessage() {
        return this.b;
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
    public final com.google.android.gms.ads.internal.client.zze zza() {
        com.google.android.gms.ads.internal.client.zze zzeVar;
        AdError adError = this.d;
        if (adError == null) {
            zzeVar = null;
        } else {
            String str = adError.c;
            zzeVar = new com.google.android.gms.ads.internal.client.zze(adError.a, adError.b, str, null, null);
        }
        return new com.google.android.gms.ads.internal.client.zze(this.a, this.b, this.c, zzeVar, null);
    }

    @NonNull
    public JSONObject zzb() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Code", this.a);
        jSONObject.put("Message", this.b);
        jSONObject.put("Domain", this.c);
        AdError adError = this.d;
        if (adError == null) {
            jSONObject.put("Cause", "null");
        } else {
            jSONObject.put("Cause", adError.zzb());
        }
        return jSONObject;
    }

    public AdError(int i, @NonNull String str, @NonNull String str2) {
        this(i, str, str2, null);
    }
}
