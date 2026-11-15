package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzew {
    public final String a;
    public final Bundle b;
    public final String c;

    public zzew(String str, Bundle bundle, String str2) {
        this.a = str;
        this.b = bundle;
        this.c = str2;
    }

    public final Bundle zza() {
        return this.b;
    }

    public final String zzb() {
        return this.a;
    }

    public final String zzc() {
        String str = this.c;
        if (!TextUtils.isEmpty(str)) {
            try {
                return new JSONObject(str).optString("request_id", "");
            } catch (JSONException unused) {
            }
        }
        return "";
    }
}
