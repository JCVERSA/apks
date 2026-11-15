package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

final class zzlx implements Iterator {
    private int zza;
    private Iterator zzb;
    private final zzlv zzc;

    private final Iterator zza() {
        if (this.zzb == null) {
            this.zzb = this.zzc.zzf.entrySet().iterator();
        }
        return this.zzb;
    }

    @Override
    public final boolean hasNext() {
        int i10 = this.zza;
        return (i10 > 0 && i10 <= this.zzc.zzb) || zza().hasNext();
    }

    @Override
    public final Object next() {
        if (zza().hasNext()) {
            return (Map.Entry) zza().next();
        }
        Object[] objArr = this.zzc.zza;
        int i10 = this.zza - 1;
        this.zza = i10;
        return (zzlz) objArr[i10];
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    private zzlx(zzlv zzlvVar) {
        this.zzc = zzlvVar;
        this.zza = zzlvVar.zzb;
    }
}
