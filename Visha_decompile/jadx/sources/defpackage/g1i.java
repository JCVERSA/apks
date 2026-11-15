package defpackage;

import com.google.android.gms.measurement.internal.d;

public final class g1i implements Thread.UncaughtExceptionHandler {
    public final String a;
    public final d b;

    public g1i(d dVar, String str) {
        this.b = dVar;
        wd8.l(str);
        this.a = str;
    }

    @Override
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        this.b.a.b().q().b(this.a, th);
    }
}
