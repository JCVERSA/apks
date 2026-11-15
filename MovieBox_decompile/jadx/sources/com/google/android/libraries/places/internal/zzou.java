package com.google.android.libraries.places.internal;

import java.util.Iterator;

final class zzou extends zzob {
    final transient Object zza;

    zzou(Object obj) {
        obj.getClass();
        this.zza = obj;
    }

    @Override
    public final boolean contains(Object obj) {
        return this.zza.equals(obj);
    }

    @Override
    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override
    public final Iterator iterator() {
        return new zzoc(this.zza);
    }

    @Override
    public final int size() {
        return 1;
    }

    @Override
    public final String toString() {
        return "[" + this.zza.toString() + "]";
    }

    @Override
    final int zza(Object[] objArr, int i10) {
        objArr[i10] = this.zza;
        return i10 + 1;
    }

    @Override
    public final zznx zzd() {
        return zznx.zzm(this.zza);
    }

    @Override
    public final zzox iterator() {
        return new zzoc(this.zza);
    }

    @Override
    final boolean zzf() {
        return false;
    }
}
