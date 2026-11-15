package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.webkit.WebSettings;
import com.google.android.gms.common.b;
import defpackage.tg9;
import defpackage.yx0;

public final class zzcg {
    public static zzcg b;
    public String a;

    public static zzcg zza() {
        if (b == null) {
            b = new zzcg();
        }
        return b;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0035  */
    /* JADX WARN: Code duplicated, block: B:11:0x0039  */
    public final void zzb(Context context) {
        SharedPreferences.Editor editorPutString;
        zze.zza("Updating user agent.");
        String defaultUserAgent = WebSettings.getDefaultUserAgent(context);
        if (!defaultUserAgent.equals(this.a)) {
            Context contextE = b.e(context);
            if (yx0.a()) {
                editorPutString = context.getSharedPreferences("admob_user_agent", 0).edit().putString("user_agent", WebSettings.getDefaultUserAgent(context));
                if (contextE == null) {
                    editorPutString.apply();
                } else {
                    tg9.a(context, editorPutString, "admob_user_agent");
                }
            } else if (contextE == null) {
                contextE = null;
                editorPutString = context.getSharedPreferences("admob_user_agent", 0).edit().putString("user_agent", WebSettings.getDefaultUserAgent(context));
                if (contextE == null) {
                    editorPutString.apply();
                } else {
                    tg9.a(context, editorPutString, "admob_user_agent");
                }
            }
            this.a = defaultUserAgent;
        }
        zze.zza("User agent is updated.");
    }
}
