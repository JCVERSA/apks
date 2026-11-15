package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

final class zzmc implements Iterator {
    private int zza;
    private boolean zzb;
    private Iterator zzc;
    private final zzlv zzd;

    private final Iterator zza() {
        if (this.zzc == null) {
            this.zzc = this.zzd.zzc.entrySet().iterator();
        }
        return this.zzc;
    }

    @Override
    public final boolean hasNext() {
        return this.zza + 1 < this.zzd.zzb || (!this.zzd.zzc.isEmpty() && zza().hasNext());
    }

    @Override
    public final Object next() {
        this.zzb = true;
        int i10 = this.zza + 1;
        this.zza = i10;
        return i10 < this.zzd.zzb ? (zzlz) this.zzd.zza[this.zza] : (Map.Entry) zza().next();
    }

    @Override
    public final void remove() {
        if (!this.zzb) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.zzb = false;
        this.zzd.zzg();
        if (this.zza >= this.zzd.zzb) {
            zza().remove();
            return;
        }
        zzlv zzlvVar = this.zzd;
        int i10 = this.zza;
        this.zza = i10 - 1;
        zzlvVar.zzb(i10);
    }

    private zzmc(zzlv zzlvVar) {
        this.zzd = zzlvVar;
        this.zza = -1;
    }
}
