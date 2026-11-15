package com.google.android.gms.internal.ads;

import defpackage.im5;
import defpackage.l8i;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

abstract class zzgap extends i8 implements Runnable {
    public static final int zzc = 0;
    im5 zza;
    Object zzb;

    public zzgap(im5 im5Var, Object obj) {
        im5Var.getClass();
        this.zza = im5Var;
        this.zzb = obj;
    }

    @Override
    public final void run() {
        im5 im5Var = this.zza;
        Object obj = this.zzb;
        if ((isCancelled() | (im5Var == null)) || (obj == null)) {
            return;
        }
        this.zza = null;
        if (im5Var.isCancelled()) {
            zzn(im5Var);
            return;
        }
        try {
            try {
                Object objZze = zze(obj, j8.p(im5Var));
                this.zzb = null;
                zzf(objZze);
            } catch (Throwable th) {
                try {
                    l8i.a(th);
                    zzd(th);
                } finally {
                    this.zzb = null;
                }
            }
        } catch (Error e) {
            zzd(e);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (ExecutionException e2) {
            zzd(e2.getCause());
        } catch (Exception e3) {
            zzd(e3);
        }
    }

    @Override
    public final String zza() {
        String str;
        im5 im5Var = this.zza;
        Object obj = this.zzb;
        String strZza = super.zza();
        if (im5Var != null) {
            str = "inputFuture=[" + im5Var.toString() + "], ";
        } else {
            str = "";
        }
        if (obj == null) {
            if (strZza != null) {
                return str.concat(strZza);
            }
            return null;
        }
        return str + "function=[" + obj.toString() + "]";
    }

    @Override
    public final void zzb() {
        zzl(this.zza);
        this.zza = null;
        this.zzb = null;
    }

    public abstract Object zze(Object obj, Object obj2) throws Exception;

    public abstract void zzf(Object obj);
}
