package com.google.android.gms.internal.consent_sdk;

import android.text.TextUtils;
import android.util.Log;
import defpackage.d5g;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzc implements Runnable {
    public final String zza;
    public final String zzb;
    public final d5g[] zzc;

    public zzc(String str, String str2, d5g[] d5gVarArr) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = d5gVarArr;
    }

    @Override
    public final void run() {
        final JSONObject jSONObject;
        String str = this.zza;
        if (TextUtils.isEmpty(str)) {
            Log.d("UserMessagingPlatform", "Error on action: empty action name");
            return;
        }
        String str2 = this.zzb;
        final String lowerCase = str.toLowerCase();
        if (TextUtils.isEmpty(str2)) {
            jSONObject = new JSONObject();
        } else {
            try {
                jSONObject = new JSONObject(str2);
            } catch (JSONException unused) {
                Log.d("UserMessagingPlatform", "Action[" + lowerCase + "]: failed to parse args: " + str2);
                return;
            }
        }
        d5g[] d5gVarArr = this.zzc;
        Log.d("UserMessagingPlatform", "Action[" + lowerCase + "]: " + jSONObject.toString());
        if (d5gVarArr.length <= 0) {
            return;
        }
        d5g d5gVar = d5gVarArr[0];
        final d5g d5gVar2 = null;
        new FutureTask(new Callable(d5gVar2, lowerCase, jSONObject) {
            public final String b;
            public final JSONObject c;

            {
                this.b = lowerCase;
                this.c = jSONObject;
            }

            @Override
            public final Object call() {
                throw null;
            }
        });
        throw null;
    }
}
