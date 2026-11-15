package com.google.android.gms.internal.play_billing;

import java.util.Iterator;
import java.util.NoSuchElementException;

final class zzcu implements Iterator {
    final zzcv zza;
    private int zzb = 0;

    zzcu(zzcv zzcvVar) {
        this.zza = zzcvVar;
    }

    @Override
    public final boolean hasNext() {
        int i10 = this.zzb;
        zzcv zzcvVar = this.zza;
        return i10 < zzcvVar.zza() - zzcvVar.zzb();
    }

    @Override
    public final Object next() {
        int i10 = this.zzb;
        zzcv zzcvVar = this.zza;
        if (i10 >= zzcvVar.zza() - zzcvVar.zzb()) {
            throw new NoSuchElementException();
        }
        zzcv zzcvVar2 = this.zza;
        Object obj = zzcvVar2.zzb.zzb[zzcvVar2.zzb() + i10];
        this.zzb = i10 + 1;
        return obj;
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
