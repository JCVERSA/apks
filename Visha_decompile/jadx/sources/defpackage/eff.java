package defpackage;

import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.n8;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

public class eff implements im5 {
    public final n8 b = n8.h();

    public static final boolean a(boolean z) {
        if (!z) {
            zzv.zzp().w(new IllegalStateException("Provided SettableFuture with multiple values."), "SettableFuture");
        }
        return z;
    }

    @Override
    public final void addListener(Runnable runnable, Executor executor) {
        this.b.addListener(runnable, executor);
    }

    public final boolean c(Object obj) {
        boolean zZzc = this.b.zzc(obj);
        a(zZzc);
        return zZzc;
    }

    @Override
    public boolean cancel(boolean z) {
        return this.b.cancel(z);
    }

    public final boolean d(Throwable th) {
        boolean zZzd = this.b.zzd(th);
        a(zZzd);
        return zZzd;
    }

    @Override
    public final Object get() {
        return this.b.get();
    }

    @Override
    public final boolean isCancelled() {
        return this.b.isCancelled();
    }

    @Override
    public final boolean isDone() {
        return this.b.isDone();
    }

    @Override
    public final Object get(long j, TimeUnit timeUnit) {
        return this.b.get(j, timeUnit);
    }
}
