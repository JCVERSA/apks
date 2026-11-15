package com.google.android.gms.internal.common;

import defpackage.mij;
import java.util.Objects;

final class zzaj extends zzah {
    static final zzah zza = new zzaj(new Object[0], 0);
    public final transient int b;
    final transient Object[] zzb;

    public zzaj(Object[] objArr, int i) {
        this.zzb = objArr;
        this.b = i;
    }

    @Override
    public final Object get(int i) {
        mij.b(i, this.b, "index");
        Object obj = this.zzb[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override
    public final int size() {
        return this.b;
    }

    @Override
    public final Object[] zzb() {
        return this.zzb;
    }

    @Override
    public final int zzc() {
        return 0;
    }

    @Override
    public final int zzd() {
        return this.b;
    }

    @Override
    public final boolean zzf() {
        return false;
    }

    @Override
    public final int zzg(Object[] objArr, int i) {
        Object[] objArr2 = this.zzb;
        int i2 = this.b;
        System.arraycopy(objArr2, 0, objArr, 0, i2);
        return i2;
    }
}
