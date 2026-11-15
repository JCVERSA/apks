package com.google.android.gms.internal.ads;

import defpackage.im5;
import defpackage.j3i;
import defpackage.l8i;
import defpackage.o8i;
import defpackage.v2i;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;

public abstract class x7 extends d8 {
    public static void d(x7 x7Var, boolean z) {
        u7 u7Var = null;
        while (true) {
            x7Var.zzB();
            if (z) {
                x7Var.zzk();
            }
            x7Var.zzb();
            u7 u7Var2 = u7Var;
            u7 u7VarZzq = x7Var.zzq(u7.d);
            u7 u7Var3 = u7Var2;
            while (u7VarZzq != null) {
                u7 u7Var4 = u7VarZzq.c;
                u7VarZzq.c = u7Var3;
                u7Var3 = u7VarZzq;
                u7VarZzq = u7Var4;
            }
            while (u7Var3 != null) {
                u7Var = u7Var3.c;
                Runnable runnable = u7Var3.a;
                Objects.requireNonNull(runnable);
                Runnable runnable2 = runnable;
                if (runnable2 instanceof zzgag$zzb) {
                    zzgag$zzb zzgag_zzb = (zzgag$zzb) runnable2;
                    x7Var = zzgag_zzb.zza;
                    if (x7Var.zzw() == zzgag_zzb && d8.zzD(x7Var, zzgag_zzb, f(zzgag_zzb.zzb))) {
                        z = false;
                    }
                } else {
                    Executor executor = u7Var3.b;
                    Objects.requireNonNull(executor);
                    e(runnable2, executor);
                }
                u7Var3 = u7Var;
            }
            return;
        }
    }

    public static void e(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            d8.zzf.a().logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "executeListener", "RuntimeException while executing runnable " + String.valueOf(runnable) + " with executor " + String.valueOf(executor), (Throwable) e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object f(im5 im5Var) {
        Throwable thZzi;
        if (im5Var instanceof v7) {
            Object objZzw = ((x7) im5Var).zzw();
            if (objZzw instanceof t7) {
                t7 t7Var = (t7) objZzw;
                if (t7Var.a) {
                    Throwable th = t7Var.b;
                    objZzw = th != null ? new t7(false, th) : t7.d;
                }
            }
            Objects.requireNonNull(objZzw);
            return objZzw;
        }
        if ((im5Var instanceof o8i) && (thZzi = ((o8i) im5Var).zzi()) != null) {
            return new zzgag$zzc(thZzi);
        }
        boolean zIsCancelled = im5Var.isCancelled();
        if ((!d8.zzg) && zIsCancelled) {
            t7 t7Var2 = t7.d;
            Objects.requireNonNull(t7Var2);
            return t7Var2;
        }
        try {
            Object objG = g(im5Var);
            if (!zIsCancelled) {
                return objG == null ? d8.zze : objG;
            }
            return new t7(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + String.valueOf(im5Var)));
        } catch (Error | Exception e) {
            return new zzgag$zzc(e);
        } catch (CancellationException e2) {
            return !zIsCancelled ? new zzgag$zzc(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(im5Var)), e2)) : new t7(false, e2);
        } catch (ExecutionException e3) {
            return zIsCancelled ? new t7(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(im5Var)), e3)) : new zzgag$zzc(e3.getCause());
        }
    }

    public static Object g(Future future) {
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

    public static Object zzh(Object obj) throws ExecutionException {
        if (obj instanceof t7) {
            Throwable th = ((t7) obj).b;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof zzgag$zzc) {
            throw new ExecutionException(((zzgag$zzc) obj).a);
        }
        if (obj == d8.zze) {
            return null;
        }
        return obj;
    }

    public static boolean zzm(Object obj) {
        return !(obj instanceof zzgag$zzb);
    }

    @Override
    public void addListener(Runnable runnable, Executor executor) {
        u7 u7VarZzr;
        v2i.c(runnable, "Runnable was null.");
        v2i.c(executor, "Executor was null.");
        if (!isDone() && (u7VarZzr = zzr()) != u7.d) {
            u7 u7Var = new u7(runnable, executor);
            do {
                u7Var.c = u7VarZzr;
                if (zzC(u7VarZzr, u7Var)) {
                    return;
                } else {
                    u7VarZzr = zzr();
                }
            } while (u7VarZzr != u7.d);
        }
        e(runnable, executor);
    }

    public final void c(StringBuilder sb) {
        try {
            Object objG = g(this);
            sb.append("SUCCESS, result=[");
            if (objG == null) {
                sb.append("null");
            } else if (objG == this) {
                sb.append("this future");
            } else {
                sb.append(objG.getClass().getName());
                sb.append("@");
                sb.append(Integer.toHexString(System.identityHashCode(objG)));
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
    public boolean cancel(boolean z) {
        t7 t7Var;
        Object objZzw = zzw();
        if (!(objZzw instanceof zzgag$zzb) && !(objZzw == null)) {
            return false;
        }
        if (d8.zzg) {
            t7Var = new t7(z, new CancellationException("Future.cancel() was called."));
        } else {
            t7Var = z ? t7.c : t7.d;
            Objects.requireNonNull(t7Var);
        }
        boolean z2 = false;
        while (true) {
            if (d8.zzD(this, objZzw, t7Var)) {
                d(this, z);
                if (objZzw instanceof zzgag$zzb) {
                    im5 im5Var = ((zzgag$zzb) objZzw).zzb;
                    if (im5Var instanceof v7) {
                        this = (x7) im5Var;
                        objZzw = this.zzw();
                        if ((objZzw == null) | (objZzw instanceof zzgag$zzb)) {
                            z2 = true;
                        }
                    } else {
                        im5Var.cancel(z);
                    }
                }
                return true;
            }
            objZzw = this.zzw();
            if (zzm(objZzw)) {
                return z2;
            }
        }
    }

    @Override
    public Object get() throws ExecutionException, InterruptedException {
        return zzu();
    }

    @Override
    public boolean isCancelled() {
        return zzw() instanceof t7;
    }

    @Override
    public boolean isDone() {
        Object objZzw = zzw();
        return (objZzw != null) & zzm(objZzw);
    }

    public String toString() {
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
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            c(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            Object objZzw = zzw();
            if (objZzw instanceof zzgag$zzb) {
                sb.append(", setFuture=[");
                im5 im5Var = ((zzgag$zzb) objZzw).zzb;
                try {
                    if (im5Var == this) {
                        sb.append("this future");
                    } else {
                        sb.append(im5Var);
                    }
                } catch (Throwable th) {
                    l8i.b(th);
                    sb.append("Exception thrown from implementation: ");
                    sb.append(th.getClass());
                }
                sb.append("]");
            } else {
                try {
                    strConcat = j3i.a(zza());
                } catch (Throwable th2) {
                    l8i.b(th2);
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
                c(sb);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String zza() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public void zzb() {
    }

    public boolean zzc(Object obj) {
        if (obj == null) {
            obj = d8.zze;
        }
        if (!d8.zzD(this, null, obj)) {
            return false;
        }
        d(this, false);
        return true;
    }

    public boolean zzd(Throwable th) {
        th.getClass();
        if (!d8.zzD(this, null, new zzgag$zzc(th))) {
            return false;
        }
        d(this, false);
        return true;
    }

    @Override
    public final Throwable zzi() {
        if (!(this instanceof v7)) {
            return null;
        }
        Object objZzw = zzw();
        if (objZzw instanceof zzgag$zzc) {
            return ((zzgag$zzc) objZzw).a;
        }
        return null;
    }

    public void zzk() {
    }

    public final void zzl(Future future) {
        if ((future != null) && isCancelled()) {
            future.cancel(zzo());
        }
    }

    public final boolean zzn(im5 im5Var) {
        zzgag$zzc zzgag_zzc;
        im5Var.getClass();
        Object objZzw = zzw();
        if (objZzw == null) {
            if (im5Var.isDone()) {
                if (!d8.zzD(this, null, f(im5Var))) {
                    return false;
                }
                d(this, false);
                return true;
            }
            zzgag$zzb zzgag_zzb = new zzgag$zzb(this, im5Var);
            if (d8.zzD(this, null, zzgag_zzb)) {
                try {
                    im5Var.addListener(zzgag_zzb, zzgbg.INSTANCE);
                } catch (Throwable th) {
                    try {
                        zzgag_zzc = new zzgag$zzc(th);
                    } catch (Error | Exception unused) {
                        zzgag_zzc = zzgag$zzc.b;
                    }
                    d8.zzD(this, zzgag_zzb, zzgag_zzc);
                }
                return true;
            }
            objZzw = zzw();
        }
        if (objZzw instanceof t7) {
            im5Var.cancel(((t7) objZzw).a);
        }
        return false;
    }

    public final boolean zzo() {
        Object objZzw = zzw();
        return (objZzw instanceof t7) && ((t7) objZzw).a;
    }

    @Override
    public Object get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return zzv(j, timeUnit);
    }
}
