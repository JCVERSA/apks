package com.google.android.gms.internal.ads;

import defpackage.k3i;
import java.io.Serializable;

final class zzfup implements Serializable, k3i {
    public final transient zzfuv b = new zzfuv();
    final k3i zza;
    volatile transient boolean zzb;
    transient Object zzc;

    public zzfup(k3i k3iVar) {
        this.zza = k3iVar;
    }

    public final String toString() {
        Object obj;
        if (this.zzb) {
            obj = "<supplier that returned " + String.valueOf(this.zzc) + ">";
        } else {
            obj = this.zza;
        }
        return "Suppliers.memoize(" + obj.toString() + ")";
    }

    @Override
    public final Object zza() {
        if (!this.zzb) {
            synchronized (this.b) {
                try {
                    if (!this.zzb) {
                        Object objZza = this.zza.zza();
                        this.zzc = objZza;
                        this.zzb = true;
                        return objZza;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.zzc;
    }
}
