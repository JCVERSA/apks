package com.google.android.gms.internal.ads;

import defpackage.im5;
import defpackage.l8i;
import defpackage.o8i;
import java.util.concurrent.ExecutionException;

abstract class zzgaf extends i8 implements Runnable {
    public static final int zzd = 0;
    im5 zza;
    Class zzb;
    Object zzc;

    public zzgaf(im5 im5Var, Class cls, Object obj) {
        im5Var.getClass();
        this.zza = im5Var;
        this.zzb = cls;
        this.zzc = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void run() {
        Object objP;
        im5 im5Var = this.zza;
        Class cls = this.zzb;
        Object obj = this.zzc;
        if (((obj == null) || ((im5Var == 0) | (cls == null))) || isCancelled()) {
            return;
        }
        this.zza = null;
        try {
            th = im5Var instanceof o8i ? ((o8i) im5Var).zzi() : null;
            objP = th == null ? j8.p(im5Var) : null;
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause == null) {
                cause = new NullPointerException("Future type " + String.valueOf(im5Var.getClass()) + " threw " + String.valueOf(e.getClass()) + " without a cause");
            }
            th = cause;
        } catch (Throwable th) {
            th = th;
        }
        if (th == null) {
            zzc(objP);
            return;
        }
        if (!cls.isInstance(th)) {
            zzn(im5Var);
            return;
        }
        try {
            Object objZze = zze(obj, th);
            this.zzb = null;
            this.zzc = null;
            zzf(objZze);
        } catch (Throwable th2) {
            try {
                l8i.a(th2);
                zzd(th2);
            } finally {
                this.zzb = null;
                this.zzc = null;
            }
        }
    }

    @Override
    public final String zza() {
        String str;
        im5 im5Var = this.zza;
        Class cls = this.zzb;
        Object obj = this.zzc;
        String strZza = super.zza();
        if (im5Var != null) {
            str = "inputFuture=[" + im5Var.toString() + "], ";
        } else {
            str = "";
        }
        if (cls == null || obj == null) {
            if (strZza != null) {
                return str.concat(strZza);
            }
            return null;
        }
        return str + "exceptionType=[" + cls.toString() + "], fallback=[" + obj.toString() + "]";
    }

    @Override
    public final void zzb() {
        zzl(this.zza);
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
    }

    public abstract Object zze(Object obj, Throwable th) throws Exception;

    public abstract void zzf(Object obj);
}
