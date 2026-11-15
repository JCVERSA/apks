package com.google.android.gms.internal.play_billing;

import defpackage.meg;
import defpackage.mlg;
import defpackage.ofg;
import defpackage.p3g;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.lang3.BooleanUtils;

public abstract class m extends mlg implements ofg {
    public static final Object e = new Object();
    public static final meg f = new meg(g.class);
    public static final boolean g;
    public static final h h;
    public volatile Object b;
    public volatile e c;
    public volatile l d;

    static {
        boolean z;
        Throwable th;
        Throwable th2;
        h jVar;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", BooleanUtils.FALSE));
        } catch (SecurityException unused) {
            z = false;
        }
        g = z;
        String property = System.getProperty("java.runtime.name", "");
        p3g p3gVar = null;
        if (property == null || property.contains("Android")) {
            try {
                jVar = new k(p3gVar);
            } catch (Error | Exception e2) {
                try {
                    th = e2;
                    th2 = null;
                    jVar = new i(p3gVar);
                } catch (Error | Exception e3) {
                    th = e2;
                    th2 = e3;
                    jVar = new j(p3gVar);
                }
            }
        } else {
            try {
                jVar = new i(p3gVar);
            } catch (NoClassDefFoundError unused2) {
                jVar = new j(p3gVar);
            }
        }
        th2 = null;
        th = null;
        h = jVar;
        if (th2 != null) {
            meg megVar = f;
            Logger loggerA = megVar.a();
            Level level = Level.SEVERE;
            loggerA.logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "UnsafeAtomicHelper is broken!", th);
            megVar.a().logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "AtomicReferenceFieldUpdaterAtomicHelper is broken!", th2);
        }
    }

    public static boolean j(m mVar, Object obj, Object obj2) {
        return h.f(mVar, obj, obj2);
    }

    public final void c(l lVar) {
        lVar.a = null;
        while (true) {
            l lVar2 = this.d;
            if (lVar2 != l.c) {
                l lVar3 = null;
                while (lVar2 != null) {
                    l lVar4 = lVar2.b;
                    if (lVar2.a != null) {
                        lVar3 = lVar2;
                    } else if (lVar3 != null) {
                        lVar3.b = lVar4;
                        if (lVar3.a == null) {
                        }
                    } else if (!h.g(this, lVar2, lVar4)) {
                    }
                    lVar2 = lVar4;
                }
                return;
            }
            return;
        }
    }

    public final e d(e eVar) {
        return h.a(this, eVar);
    }

    public final Object e() throws InterruptedException {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.b;
        if ((obj2 != null) && g.p(obj2)) {
            return g.l(obj2);
        }
        l lVar = this.d;
        if (lVar != l.c) {
            l lVar2 = new l();
            do {
                h hVar = h;
                hVar.c(lVar2, lVar);
                if (hVar.g(this, lVar, lVar2)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            c(lVar2);
                            throw new InterruptedException();
                        }
                        obj = this.b;
                    } while (!((obj != null) & g.p(obj)));
                    return g.l(obj);
                }
                lVar = this.d;
            } while (lVar != l.c);
        }
        Object obj3 = this.b;
        Objects.requireNonNull(obj3);
        return g.l(obj3);
    }

    public final Object f(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.b;
        boolean z = true;
        if ((obj != null) && g.p(obj)) {
            return g.l(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            l lVar = this.d;
            if (lVar != l.c) {
                l lVar2 = new l();
                while (true) {
                    h hVar = h;
                    hVar.c(lVar2, lVar);
                    if (hVar.g(this, lVar, lVar2)) {
                        do {
                            LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                            if (Thread.interrupted()) {
                                c(lVar2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.b;
                            if ((obj2 != null) && g.p(obj2)) {
                                return g.l(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        c(lVar2);
                        break;
                    }
                    lVar = this.d;
                    if (lVar == l.c) {
                    }
                }
            }
            Object obj3 = this.b;
            Objects.requireNonNull(obj3);
            return g.l(obj3);
        }
        while (nanos > 0) {
            Object obj4 = this.b;
            if ((obj4 != null) && g.p(obj4)) {
                return g.l(obj4);
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

    public final void h() {
        for (l lVarB = h.b(this, l.c); lVarB != null; lVarB = lVarB.b) {
            Thread thread = lVarB.a;
            if (thread != null) {
                lVarB.a = null;
                LockSupport.unpark(thread);
            }
        }
    }

    public final boolean i(e eVar, e eVar2) {
        return h.e(this, eVar, eVar2);
    }
}
