package com.google.android.gms.internal.play_billing;

import defpackage.cbf;
import defpackage.xvf;
import java.util.Iterator;

final class zzcp extends zzcf {
    public static final Object[] e;
    static final zzcp zza;
    public final transient int b;
    public final transient int c;
    public final transient int d;
    final transient Object[] zzb;
    final transient Object[] zzc;

    static {
        Object[] objArr = new Object[0];
        e = objArr;
        zza = new zzcp(objArr, 0, objArr, 0, 0);
    }

    public zzcp(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.zzb = objArr;
        this.b = i;
        this.zzc = objArr2;
        this.c = i2;
        this.d = i3;
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.zzc;
            if (objArr.length != 0) {
                int iA = cbf.a(obj.hashCode());
                while (true) {
                    int i = iA & this.c;
                    Object obj2 = objArr[i];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    iA = i + 1;
                }
            }
        }
        return false;
    }

    @Override
    public final int hashCode() {
        return this.b;
    }

    @Override
    public final Iterator iterator() {
        return zzd().listIterator(0);
    }

    @Override
    public final int size() {
        return this.d;
    }

    @Override
    public final int zza(Object[] objArr, int i) {
        Object[] objArr2 = this.zzb;
        int i2 = this.d;
        System.arraycopy(objArr2, 0, objArr, 0, i2);
        return i2;
    }

    @Override
    public final int zzb() {
        return this.d;
    }

    @Override
    public final int zzc() {
        return 0;
    }

    @Override
    public final xvf iterator() {
        return zzd().listIterator(0);
    }

    @Override
    public final boolean zzf() {
        throw null;
    }

    @Override
    public final Object[] zzg() {
        return this.zzb;
    }

    @Override
    public final zzca zzi() {
        return zzca.zzi(this.zzb, this.d);
    }

    @Override
    public final boolean zzl() {
        return true;
    }
}
