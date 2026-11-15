package defpackage;

import com.google.android.gms.ads.internal.util.client.zzo;

public final class taf implements Thread.UncaughtExceptionHandler {
    public final Thread.UncaughtExceptionHandler a;
    public final uaf b;

    public taf(uaf uafVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.a = uncaughtExceptionHandler;
        this.b = uafVar;
    }

    @Override
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            try {
                this.b.i(thread, th);
            } finally {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.a;
                if (uncaughtExceptionHandler != null) {
                    uncaughtExceptionHandler.uncaughtException(thread, th);
                }
            }
        } catch (Throwable unused) {
            zzo.zzg("AdMob exception reporter failed reporting the exception.");
        }
        if (this.a != null) {
        }
    }
}
