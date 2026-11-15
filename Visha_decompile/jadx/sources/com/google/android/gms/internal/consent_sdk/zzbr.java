package com.google.android.gms.internal.consent_sdk;

import android.os.Handler;
import android.webkit.WebView;
import androidx.annotation.UiThread;
import defpackage.kaf;
import defpackage.tcf;
import defpackage.usf;

@UiThread
public final class zzbr extends WebView {
    public final Handler b;
    public boolean c;

    public zzbr(kaf kafVar, Handler handler, tcf tcfVar) {
        super(kafVar);
        this.c = false;
        this.b = handler;
    }

    public final void zzc() {
        throw null;
    }

    public final void zzd(String str, String str2) {
        final String str3 = str + "(" + str2 + ");";
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                usf.a(this.zza, str3);
            }
        });
    }
}
