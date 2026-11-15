package com.google.android.gms.internal.play_billing;

import java.util.Iterator;
import java.util.Map;

final class zzgv implements Iterator {
    final zzgz zza;
    private int zzb = -1;
    private boolean zzc;
    private Iterator zzd;

    zzgv(zzgz zzgzVar, zzgu zzguVar) {
        this.zza = zzgzVar;
    }

    private final Iterator zza() {
        if (this.zzd == null) {
            this.zzd = this.zza.zzc.entrySet().iterator();
        }
        return this.zzd;
    }

    @Override
    public final boolean hasNext() {
        if (this.zzb + 1 >= this.zza.zzb.size()) {
            return !this.zza.zzc.isEmpty() && zza().hasNext();
        }
        return true;
    }

    @Override
    public final Object next() {
        this.zzc = true;
        int i10 = this.zzb + 1;
        this.zzb = i10;
        return i10 < this.zza.zzb.size() ? (Map.Entry) this.zza.zzb.get(this.zzb) : (Map.Entry) zza().next();
    }

    @Override
    public final void remove() {
        if (!this.zzc) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.zzc = false;
        this.zza.zzn();
        if (this.zzb >= this.zza.zzb.size()) {
            zza().remove();
            return;
        }
        zzgz zzgzVar = this.zza;
        int i10 = this.zzb;
        this.zzb = i10 - 1;
        zzgzVar.zzl(i10);
    }
}
