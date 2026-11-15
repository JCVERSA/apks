package com.google.android.libraries.places.internal;

import java.util.NoSuchElementException;

abstract class zzni extends zzoy {
    private final int zza;
    private int zzb;

    protected zzni(int i10, int i11) {
        zzmt.zzb(i11, i10, "index");
        this.zza = i10;
        this.zzb = i11;
    }

    @Override
    public final boolean hasNext() {
        return this.zzb < this.zza;
    }

    @Override
    public final boolean hasPrevious() {
        return this.zzb > 0;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i10 = this.zzb;
        this.zzb = i10 + 1;
        return zza(i10);
    }

    @Override
    public final int nextIndex() {
        return this.zzb;
    }

    @Override
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i10 = this.zzb - 1;
        this.zzb = i10;
        return zza(i10);
    }

    @Override
    public final int previousIndex() {
        return this.zzb - 1;
    }

    protected abstract Object zza(int i10);
}
