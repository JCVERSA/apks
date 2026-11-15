package com.google.android.gms.internal.play_billing;

import defpackage.y4f;
import java.util.Objects;

final class zzcj extends zzca {
    static final zzca zza = new zzcj(new Object[0], 0);
    public final transient int b;
    final transient Object[] zzb;

    public zzcj(Object[] objArr, int i) {
        this.zzb = objArr;
        this.b = i;
    }

    @Override
    public final Object get(int i) {
        y4f.a(i, this.b, "index");
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
        System.arraycopy(objArr2, 0, objArr, 0, i2);
        return i2;
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
