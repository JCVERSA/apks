package com.google.android.gms.internal.play_billing;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.e5g;
import defpackage.f4j;
import defpackage.haj;
import defpackage.hui;
import defpackage.l8j;
import defpackage.ofg;
import defpackage.xug;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.lang3.BooleanUtils;

public class t implements ofg {
    public static final boolean e = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", BooleanUtils.FALSE));
    public static final Logger f = Logger.getLogger(t.class.getName());
    public static final e5g g;
    public static final Object h;
    public volatile Object b;
    public volatile hui c;
    public volatile haj d;

    static {
        e5g l8jVar;
        try {
            l8jVar = new f4j(AtomicReferenceFieldUpdater.newUpdater(haj.class, Thread.class, CmcdData.OBJECT_TYPE_AUDIO_ONLY), AtomicReferenceFieldUpdater.newUpdater(haj.class, haj.class, "b"), AtomicReferenceFieldUpdater.newUpdater(t.class, haj.class, "d"), AtomicReferenceFieldUpdater.newUpdater(t.class, hui.class, "c"), AtomicReferenceFieldUpdater.newUpdater(t.class, Object.class, "b"));
            th = null;
        } catch (Throwable th) {
            th = th;
            l8jVar = new l8j();
        }
        Throwable th2 = th;
        g = l8jVar;
        if (th2 != null) {
            f.logp(Level.SEVERE, "com.android.billingclient.util.concurrent.AbstractResolvableFuture", "<clinit>", "SafeAtomicHelper is broken!", th2);
        }
        h = new Object();
    }

    public static void c(t tVar) {
        haj hajVar;
        e5g e5gVar;
        hui huiVar;
        do {
            hajVar = tVar.d;
            e5gVar = g;
        } while (!e5gVar.e(tVar, hajVar, haj.c));
        while (hajVar != null) {
            Thread thread = hajVar.a;
            if (thread != null) {
                hajVar.a = null;
                LockSupport.unpark(thread);
            }
            hajVar = hajVar.b;
        }
        do {
            huiVar = tVar.c;
        } while (!e5gVar.c(tVar, huiVar, hui.d));
        hui huiVar2 = null;
        while (huiVar != null) {
            hui huiVar3 = huiVar.c;
            huiVar.c = huiVar2;
            huiVar2 = huiVar;
            huiVar = huiVar3;
        }
        while (huiVar2 != null) {
            Runnable runnable = huiVar2.a;
            hui huiVar4 = huiVar2.c;
            if (runnable instanceof zzk) {
                t tVar2 = ((zzk) runnable).zza;
                throw null;
            }
            f(runnable, huiVar2.b);
            huiVar2 = huiVar4;
        }
    }

    public static void f(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            f.logp(Level.SEVERE, "com.android.billingclient.util.concurrent.AbstractResolvableFuture", "executeListener", "RuntimeException while executing runnable " + String.valueOf(runnable) + " with executor " + String.valueOf(executor), (Throwable) e2);
        }
    }

    public static final Object h(Object obj) throws ExecutionException {
        if (obj instanceof xug) {
            Throwable th = ((xug) obj).a;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof r) {
            throw new ExecutionException(((r) obj).a);
        }
        if (obj == h) {
            return null;
        }
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String a() {
        Object obj = this.b;
        if (obj instanceof zzk) {
            ofg ofgVar = ((zzk) obj).zzb;
            return "setFuture=[null]";
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    @Override
    public final void b(Runnable runnable, Executor executor) {
        executor.getClass();
        hui huiVar = this.c;
        hui huiVar2 = hui.d;
        if (huiVar != huiVar2) {
            hui huiVar3 = new hui(runnable, executor);
            do {
                huiVar3.c = huiVar;
                if (g.c(this, huiVar, huiVar3)) {
                    return;
                } else {
                    huiVar = this.c;
                }
            } while (huiVar != huiVar2);
        }
        f(runnable, executor);
    }

    @Override
    public final boolean cancel(boolean z) {
        xug xugVar;
        Object obj = this.b;
        if ((obj instanceof zzk) | (obj == null)) {
            if (e) {
                xugVar = new xug(z, new CancellationException("Future.cancel() was called."));
            } else {
                xugVar = z ? xug.b : xug.c;
            }
            while (!g.d(this, obj, xugVar)) {
                obj = this.b;
                if (!(obj instanceof zzk)) {
                }
            }
            c(this);
            if (!(obj instanceof zzk)) {
                return true;
            }
            ofg ofgVar = ((zzk) obj).zzb;
            throw null;
        }
        return false;
    }

    public boolean d(Object obj) {
        if (obj == null) {
            obj = h;
        }
        if (!g.d(this, null, obj)) {
            return false;
        }
        c(this);
        return true;
    }

    public final void e(StringBuilder sb) {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                try {
                    obj = get();
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            } catch (CancellationException unused2) {
                sb.append("CANCELLED");
                return;
            } catch (RuntimeException e2) {
                sb.append("UNKNOWN, cause=[");
                sb.append(e2.getClass());
                sb.append(" thrown from get()]");
                return;
            } catch (ExecutionException e3) {
                sb.append("FAILURE, cause=[");
                sb.append(e3.getCause());
                sb.append("]");
                return;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        sb.append("SUCCESS, result=[");
        sb.append(obj == this ? "this future" : String.valueOf(obj));
        sb.append("]");
    }

    public final void g(haj hajVar) {
        hajVar.a = null;
        while (true) {
            haj hajVar2 = this.d;
            if (hajVar2 != haj.c) {
                haj hajVar3 = null;
                while (hajVar2 != null) {
                    haj hajVar4 = hajVar2.b;
                    if (hajVar2.a != null) {
                        hajVar3 = hajVar2;
                    } else if (hajVar3 != null) {
                        hajVar3.b = hajVar4;
                        if (hajVar3.a == null) {
                        }
                    } else if (!g.e(this, hajVar2, hajVar4)) {
                    }
                    hajVar2 = hajVar4;
                }
                return;
            }
            return;
        }
    }

    @Override
    public final Object get() throws InterruptedException {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.b;
        if ((obj2 != null) && (!(obj2 instanceof zzk))) {
            return h(obj2);
        }
        haj hajVar = this.d;
        haj hajVar2 = haj.c;
        if (hajVar != hajVar2) {
            haj hajVar3 = new haj();
            do {
                e5g e5gVar = g;
                e5gVar.a(hajVar3, hajVar);
                if (e5gVar.e(this, hajVar, hajVar3)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            g(hajVar3);
                            throw new InterruptedException();
                        }
                        obj = this.b;
                    } while (!((obj != null) & (!(obj instanceof zzk))));
                    return h(obj);
                }
                hajVar = this.d;
            } while (hajVar != hajVar2);
        }
        return h(this.b);
    }

    @Override
    public final boolean isCancelled() {
        return this.b instanceof xug;
    }

    @Override
    public final boolean isDone() {
        Object obj = this.b;
        return (obj != null) & (!(obj instanceof zzk));
    }

    public final String toString() {
        String strConcat;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.b instanceof xug) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            e(sb);
        } else {
            try {
                strConcat = a();
            } catch (RuntimeException e2) {
                strConcat = "Exception thrown from implementation: ".concat(String.valueOf(e2.getClass()));
            }
            if (strConcat != null && !strConcat.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(strConcat);
                sb.append("]");
            } else if (isDone()) {
                e(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0090  */
    /* JADX WARN: Code duplicated, block: B:48:0x0094  */
    /* JADX WARN: Code duplicated, block: B:49:0x0096  */
    /* JADX WARN: Code duplicated, block: B:54:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:56:0x00a8 A[EDGE_INSN: B:56:0x00a8->B:36:0x0074 BREAK  A[LOOP:0: B:21:0x0041->B:85:?]] */
    /* JADX WARN: Code duplicated, block: B:59:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:63:0x0103  */
    /* JADX WARN: Code duplicated, block: B:68:0x010b  */
    /* JADX WARN: Code duplicated, block: B:70:0x0122  */
    /* JADX WARN: Code duplicated, block: B:73:0x012e  */
    /* JADX WARN: Code duplicated, block: B:77:0x014e  */
    /* JADX WARN: Code duplicated, block: B:79:0x015a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x00a8 -> B:36:0x0074). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override
    public final java.lang.Object get(long r19, java.util.concurrent.TimeUnit r21) {
        /*
            Method dump skipped, instruction units count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.t.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }
}
