package com.google.android.gms.internal.location;

import defpackage.j5f;

final class zzbt<E> extends zzbs<E> {
    static final zzbs<Object> zza = new zzbt(new Object[0], 0);
    public final transient int b;
    final transient Object[] zzb;

    public zzbt(Object[] objArr, int i) {
        this.zzb = objArr;
        this.b = i;
    }

    @Override
    public final E get(int i) {
        j5f.a(i, this.b, "index");
        return (E) this.zzb[i];
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
        System.arraycopy(this.zzb, 0, objArr, 0, this.b);
        return this.b;
    }
}
