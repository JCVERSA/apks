package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.os.StrictMode;
import com.google.android.gms.ads.internal.util.client.zzo;
import defpackage.uaf;
import java.util.concurrent.Callable;

public final class zzcd {
    @Deprecated
    public static Object zza(Context context, Callable callable) {
        try {
            StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
            try {
                StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
                return callable.call();
            } finally {
                StrictMode.setThreadPolicy(threadPolicy);
            }
        } catch (Throwable th) {
            zzo.zzh("Unexpected exception.", th);
            uaf.c(context).b(th, "StrictModeUtil.runWithLaxStrictMode");
            return null;
        }
    }
}
