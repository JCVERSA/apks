package com.google.android.gms.internal.ads;

import defpackage.e7i;
import defpackage.e8i;
import defpackage.im5;
import defpackage.o8i;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.lang3.BooleanUtils;

public abstract class d8 extends o8i implements im5 {
    private static final y7 zza;
    static final Object zze = new Object();
    static final e8i zzf = new e8i(x7.class);
    static final boolean zzg;
    public static final int zzh = 0;
    private volatile u7 listeners;
    private volatile Object value;
    private volatile c8 waiters;

    static {
        boolean z;
        Throwable th;
        Throwable th2;
        y7 a8Var;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", BooleanUtils.FALSE));
        } catch (SecurityException unused) {
            z = false;
        }
        zzg = z;
        e7i e7iVar = null;
        try {
            a8Var = new b8(e7iVar);
            th = null;
            th2 = null;
        } catch (Error | Exception e) {
            try {
                th2 = null;
                th = e;
                a8Var = new z7(e7iVar);
            } catch (Error | Exception e2) {
                th = e;
                th2 = e2;
                a8Var = new a8(e7iVar);
            }
        }
        zza = a8Var;
        if (th2 != null) {
            e8i e8iVar = zzf;
            Logger loggerA = e8iVar.a();
            Level level = Level.SEVERE;
            loggerA.logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "UnsafeAtomicHelper is broken!", th);
            e8iVar.a().logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "AtomicReferenceFieldUpdaterAtomicHelper is broken!", th2);
        }
    }

    public static boolean zzD(d8 d8Var, Object obj, Object obj2) {
        return zza.f(d8Var, obj, obj2);
    }

    public final void a(c8 c8Var) {
        c8Var.a = null;
        while (true) {
            c8 c8Var2 = this.waiters;
            if (c8Var2 != c8.c) {
                c8 c8Var3 = null;
                while (c8Var2 != null) {
                    c8 c8Var4 = c8Var2.b;
                    if (c8Var2.a != null) {
                        c8Var3 = c8Var2;
                    } else if (c8Var3 != null) {
                        c8Var3.b = c8Var4;
                        if (c8Var3.a == null) {
                        }
                    } else if (!zza.g(this, c8Var2, c8Var4)) {
                    }
                    c8Var2 = c8Var4;
                }
                return;
            }
            return;
        }
    }

    public final void zzB() {
        for (c8 c8VarB = zza.b(this, c8.c); c8VarB != null; c8VarB = c8VarB.b) {
            Thread thread = c8VarB.a;
            if (thread != null) {
                c8VarB.a = null;
                LockSupport.unpark(thread);
            }
        }
    }

    public final boolean zzC(u7 u7Var, u7 u7Var2) {
        return zza.e(this, u7Var, u7Var2);
    }

    public final u7 zzq(u7 u7Var) {
        return zza.a(this, u7Var);
    }

    public final u7 zzr() {
        return this.listeners;
    }

    public final Object zzu() throws ExecutionException, InterruptedException {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.value;
        if ((obj2 != null) && x7.zzm(obj2)) {
            return x7.zzh(obj2);
        }
        c8 c8Var = this.waiters;
        if (c8Var != c8.c) {
            c8 c8Var2 = new c8();
            do {
                y7 y7Var = zza;
                y7Var.c(c8Var2, c8Var);
                if (y7Var.g(this, c8Var, c8Var2)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            a(c8Var2);
                            throw new InterruptedException();
                        }
                        obj = this.value;
                    } while (!((obj != null) & x7.zzm(obj)));
                    return x7.zzh(obj);
                }
                c8Var = this.waiters;
            } while (c8Var != c8.c);
        }
        Object obj3 = this.value;
        Objects.requireNonNull(obj3);
        return x7.zzh(obj3);
    }

    public final Object zzv(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.value;
        boolean z = true;
        if ((obj != null) && x7.zzm(obj)) {
            return x7.zzh(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            c8 c8Var = this.waiters;
            if (c8Var != c8.c) {
                c8 c8Var2 = new c8();
                while (true) {
                    y7 y7Var = zza;
                    y7Var.c(c8Var2, c8Var);
                    if (y7Var.g(this, c8Var, c8Var2)) {
                        do {
                            LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                            if (Thread.interrupted()) {
                                a(c8Var2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.value;
                            if ((obj2 != null) && x7.zzm(obj2)) {
                                return x7.zzh(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        a(c8Var2);
                        break;
                    }
                    c8Var = this.waiters;
                    if (c8Var == c8.c) {
                    }
                }
            }
            Object obj3 = this.value;
            Objects.requireNonNull(obj3);
            return x7.zzh(obj3);
        }
        while (nanos > 0) {
            Object obj4 = this.value;
            if ((obj4 != null) && x7.zzm(obj4)) {
                return x7.zzh(obj4);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = jNanoTime - System.nanoTime();
        }
        String string = toString();
        String string2 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string2.toLowerCase(locale);
        String strConcat = "Waited " + j + " " + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < 0) {
            String strConcat2 = strConcat.concat(" (plus ");
            long j2 = -nanos;
            long jConvert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
            long nanos2 = j2 - timeUnit.toNanos(jConvert);
            if (jConvert != 0 && nanos2 <= 1000) {
                z = false;
            }
            if (jConvert > 0) {
                String strConcat3 = strConcat2 + jConvert + " " + lowerCase;
                if (z) {
                    strConcat3 = strConcat3.concat(StringUtils.COMMA);
                }
                strConcat2 = strConcat3.concat(" ");
            }
            if (z) {
                strConcat2 = strConcat2 + nanos2 + " nanoseconds ";
            }
            strConcat = strConcat2.concat("delay)");
        }
        if (isDone()) {
            throw new TimeoutException(strConcat.concat(" but future completed as timeout expired"));
        }
        throw new TimeoutException(strConcat + " for " + string);
    }

    public final Object zzw() {
        return this.value;
    }
}
