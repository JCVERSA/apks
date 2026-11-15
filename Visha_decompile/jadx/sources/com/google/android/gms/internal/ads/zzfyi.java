package com.google.android.gms.internal.ads;

import defpackage.v2i;
import java.util.Objects;

final class zzfyi extends zzfww {
    static final zzfww zza = new zzfyi(new Object[0], 0);
    public final transient int b;
    final transient Object[] zzb;

    public zzfyi(Object[] objArr, int i) {
        this.zzb = objArr;
        this.b = i;
    }

    @Override
    public final Object get(int i) {
        v2i.a(i, this.b, "index");
        Object obj = this.zzb[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override
    public final int size() {
        return this.b;
    }

    @Override
    public final int zza(Object[] objArr, int i) {
        Object[] objArr2 = this.zzb;
        int i2 = this.b;
        System.arraycopy(objArr2, 0, objArr, i, i2);
        return i + i2;
    }

    @Override
    public final int zzb() {
        return this.b;
    }

    @Override
    public final int zzc() {
        return 0;
    }

    @Override
    public final boolean zzf() {
        return false;
    }

    @Override
    public final Object[] zzg() {
        return this.zzb;
    }
}
