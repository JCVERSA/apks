package com.google.android.gms.internal.measurement;

import defpackage.k2j;
import java.io.Serializable;

final class zzii implements Serializable, k2j {
    final k2j zza;
    volatile transient boolean zzb;
    transient Object zzc;

    public zzii(k2j k2jVar) {
        k2jVar.getClass();
        this.zza = k2jVar;
    }

    public final String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder();
        sb.append("Suppliers.memoize(");
        if (this.zzb) {
            obj = "<supplier that returned " + this.zzc + ">";
        } else {
            obj = this.zza;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }

    @Override
    public final Object zza() {
        if (!this.zzb) {
            synchronized (this) {
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
