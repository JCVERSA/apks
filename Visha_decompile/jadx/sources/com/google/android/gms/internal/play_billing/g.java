package com.google.android.gms.internal.play_billing;

import defpackage.g7f;
import defpackage.mlg;
import defpackage.ofg;
import defpackage.rgg;
import defpackage.y4f;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

public abstract class g extends m {
    public static Object l(Object obj) throws ExecutionException {
        if (obj instanceof d) {
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(((d) obj).b);
            throw cancellationException;
        }
        if (obj instanceof zzcu$zzc) {
            throw new ExecutionException(((zzcu$zzc) obj).a);
        }
        if (obj == m.e) {
            return null;
        }
        return obj;
    }

    public static boolean p(Object obj) {
        return !(obj instanceof zzcu$zzb);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object s(ofg ofgVar) {
        Throwable thA;
        if (ofgVar instanceof f) {
            Object dVar = ((g) ofgVar).b;
            if (dVar instanceof d) {
                d dVar2 = (d) dVar;
                if (dVar2.a) {
                    Throwable th = dVar2.b;
                    dVar = th != null ? new d(false, th) : d.d;
                }
            }
            Objects.requireNonNull(dVar);
            return dVar;
        }
        if ((ofgVar instanceof mlg) && (thA = ((mlg) ofgVar).a()) != null) {
            return new zzcu$zzc(thA);
        }
        boolean zIsCancelled = ofgVar.isCancelled();
        if ((!m.g) && zIsCancelled) {
            d dVar3 = d.d;
            Objects.requireNonNull(dVar3);
            return dVar3;
        }
        try {
            Object objT = t(ofgVar);
            if (!zIsCancelled) {
                return objT == null ? m.e : objT;
            }
            return new d(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + String.valueOf(ofgVar)));
        } catch (Error | Exception e) {
            return new zzcu$zzc(e);
        } catch (CancellationException e2) {
            return !zIsCancelled ? new zzcu$zzc(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(ofgVar)), e2)) : new d(false, e2);
        } catch (ExecutionException e3) {
            return zIsCancelled ? new d(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(ofgVar)), e3)) : new zzcu$zzc(e3.getCause());
        }
    }

    public static Object t(Future future) {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public static void v(g gVar, boolean z) {
        e eVar = null;
        while (true) {
            gVar.h();
            gVar.o();
            e eVar2 = eVar;
            e eVarD = gVar.d(e.d);
            e eVar3 = eVar2;
            while (eVarD != null) {
                e eVar4 = eVarD.c;
                eVarD.c = eVar3;
                eVar3 = eVarD;
                eVarD = eVar4;
            }
            while (eVar3 != null) {
                Runnable runnable = eVar3.a;
                e eVar5 = eVar3.c;
                Objects.requireNonNull(runnable);
                Runnable runnable2 = runnable;
                if (runnable2 instanceof zzcu$zzb) {
                    zzcu$zzb zzcu_zzb = (zzcu$zzb) runnable2;
                    gVar = zzcu_zzb.zza;
                    if (gVar.b == zzcu_zzb && m.j(gVar, zzcu_zzb, s(zzcu_zzb.zzb))) {
                        eVar = eVar5;
                    }
                } else {
                    Executor executor = eVar3.b;
                    Objects.requireNonNull(executor);
                    w(runnable2, executor);
                }
                eVar3 = eVar5;
            }
            return;
        }
    }

    public static void w(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            m.f.a().logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "executeListener", "RuntimeException while executing runnable " + String.valueOf(runnable) + " with executor " + String.valueOf(executor), (Throwable) e);
        }
    }

    @Override
    public final Throwable a() {
        if (!(this instanceof f)) {
            return null;
        }
        Object obj = this.b;
        if (obj instanceof zzcu$zzc) {
            return ((zzcu$zzc) obj).a;
        }
        return null;
    }

    @Override
    public final void b(Runnable runnable, Executor executor) {
        e eVar;
        y4f.c(executor, "Executor was null.");
        if (!isDone() && (eVar = this.c) != e.d) {
            e eVar2 = new e(runnable, executor);
            do {
                eVar2.c = eVar;
                if (i(eVar, eVar2)) {
                    return;
                } else {
                    eVar = this.c;
                }
            } while (eVar != e.d);
        }
        w(runnable, executor);
    }

    @Override
    public final boolean cancel(boolean z) {
        d dVar;
        Object obj = this.b;
        if (!(obj instanceof zzcu$zzb) && !(obj == null)) {
            return false;
        }
        if (m.g) {
            dVar = new d(z, new CancellationException("Future.cancel() was called."));
        } else {
            dVar = z ? d.c : d.d;
            Objects.requireNonNull(dVar);
        }
        boolean z2 = false;
        while (true) {
            if (m.j(this, obj, dVar)) {
                v(this, z);
                if (obj instanceof zzcu$zzb) {
                    ofg ofgVar = ((zzcu$zzb) obj).zzb;
                    if (ofgVar instanceof f) {
                        this = (g) ofgVar;
                        obj = this.b;
                        if ((obj == null) | (obj instanceof zzcu$zzb)) {
                            z2 = true;
                        }
                    } else {
                        ofgVar.cancel(z);
                    }
                }
                return true;
            }
            obj = this.b;
            if (p(obj)) {
                return z2;
            }
        }
    }

    @Override
    public final Object get() {
        return e();
    }

    @Override
    public final boolean isCancelled() {
        return this.b instanceof d;
    }

    @Override
    public final boolean isDone() {
        Object obj = this.b;
        return (obj != null) & p(obj);
    }

    public abstract String m();

    public abstract void o();

    public final boolean q(Throwable th) {
        if (!m.j(this, null, new zzcu$zzc(th))) {
            return false;
        }
        v(this, false);
        return true;
    }

    public final boolean r(ofg ofgVar) {
        zzcu$zzc zzcu_zzc;
        Object obj = this.b;
        if (obj == null) {
            if (ofgVar.isDone()) {
                if (!m.j(this, null, s(ofgVar))) {
                    return false;
                }
                v(this, false);
                return true;
            }
            zzcu$zzb zzcu_zzb = new zzcu$zzb(this, ofgVar);
            if (m.j(this, null, zzcu_zzb)) {
                try {
                    ofgVar.b(zzcu_zzb, zzda.INSTANCE);
                } catch (Throwable th) {
                    try {
                        zzcu_zzc = new zzcu$zzc(th);
                    } catch (Error | Exception unused) {
                        zzcu_zzc = zzcu$zzc.b;
                    }
                    m.j(this, zzcu_zzb, zzcu_zzc);
                }
                return true;
            }
            obj = this.b;
        }
        if (obj instanceof d) {
            ofgVar.cancel(((d) obj).a);
        }
        return false;
    }

    public final String toString() {
        String strConcat;
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (this.b instanceof d) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            u(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            Object obj = this.b;
            if (obj instanceof zzcu$zzb) {
                sb.append(", setFuture=[");
                ofg ofgVar = ((zzcu$zzb) obj).zzb;
                try {
                    if (ofgVar == this) {
                        sb.append("this future");
                    } else {
                        sb.append(ofgVar);
                    }
                } catch (Throwable th) {
                    rgg.a(th);
                    sb.append("Exception thrown from implementation: ");
                    sb.append(th.getClass());
                }
                sb.append("]");
            } else {
                try {
                    strConcat = g7f.a(m());
                } catch (Throwable th2) {
                    rgg.a(th2);
                    strConcat = "Exception thrown from implementation: ".concat(String.valueOf(th2.getClass()));
                }
                if (strConcat != null) {
                    sb.append(", info=[");
                    sb.append(strConcat);
                    sb.append("]");
                }
            }
            if (isDone()) {
                sb.delete(length, sb.length());
                u(sb);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public final void u(StringBuilder sb) {
        try {
            Object objT = t(this);
            sb.append("SUCCESS, result=[");
            if (objT == null) {
                sb.append("null");
            } else if (objT == this) {
                sb.append("this future");
            } else {
                sb.append(objT.getClass().getName());
                sb.append("@");
                sb.append(Integer.toHexString(System.identityHashCode(objT)));
            }
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (ExecutionException e) {
            sb.append("FAILURE, cause=[");
            sb.append(e.getCause());
            sb.append("]");
        } catch (Exception e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        }
    }

    @Override
    public final Object get(long j, TimeUnit timeUnit) {
        return f(j, timeUnit);
    }
}
