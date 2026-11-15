package com.google.android.libraries.places.internal;

import java.util.Iterator;

final class zzos extends zzob {
    static final zzos zza;
    private static final Object[] zzd;
    final transient Object[] zzb;
    final transient Object[] zzc;
    private final transient int zze;
    private final transient int zzf;
    private final transient int zzg;

    static {
        Object[] objArr = new Object[0];
        zzd = objArr;
        zza = new zzos(objArr, 0, objArr, 0, 0);
    }

    zzos(Object[] objArr, int i10, Object[] objArr2, int i11, int i12) {
        this.zzb = objArr;
        this.zze = i10;
        this.zzc = objArr2;
        this.zzf = i11;
        this.zzg = i12;
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.zzc;
            if (objArr.length != 0) {
                int iZza = zznq.zza(obj.hashCode());
                while (true) {
                    int i10 = iZza & this.zzf;
                    Object obj2 = objArr[i10];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    iZza = i10 + 1;
                }
            }
        }
        return false;
    }

    @Override
    public final int hashCode() {
        return this.zze;
    }

    @Override
    public final Iterator iterator() {
        return zzd().listIterator(0);
    }

    @Override
    public final int size() {
        return this.zzg;
    }

    @Override
    final int zza(Object[] objArr, int i10) {
        System.arraycopy(this.zzb, 0, objArr, i10, this.zzg);
        return i10 + this.zzg;
    }

    @Override
    final int zzb() {
        return this.zzg;
    }

    @Override
    final int zzc() {
        return 0;
    }

    @Override
    public final zzox iterator() {
        return zzd().listIterator(0);
    }

    @Override
    final boolean zzf() {
        return false;
    }

    @Override
    final Object[] zzg() {
        return this.zzb;
    }

    @Override
    final zznx zzi() {
        return zznx.zzi(this.zzb, this.zzg);
    }

    @Override
    final boolean zzq() {
        return true;
    }
}
