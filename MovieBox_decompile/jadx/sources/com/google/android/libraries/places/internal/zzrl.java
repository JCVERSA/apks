package com.google.android.libraries.places.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;

final class zzrl implements Iterator {
    final zzrm zza;
    private int zzb = 0;

    zzrl(zzrm zzrmVar) {
        this.zza = zzrmVar;
    }

    @Override
    public final boolean hasNext() {
        int i10 = this.zzb;
        zzrm zzrmVar = this.zza;
        return i10 < zzrmVar.zza() - zzrmVar.zzb();
    }

    @Override
    public final Object next() {
        int i10 = this.zzb;
        zzrm zzrmVar = this.zza;
        if (i10 >= zzrmVar.zza() - zzrmVar.zzb()) {
            throw new NoSuchElementException();
        }
        zzrm zzrmVar2 = this.zza;
        Object obj = zzrmVar2.zzb.zzb[zzrmVar2.zzb() + i10];
        this.zzb = i10 + 1;
        return obj;
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
