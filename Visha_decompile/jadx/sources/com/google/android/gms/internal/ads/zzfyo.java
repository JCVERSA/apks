package com.google.android.gms.internal.ads;

import defpackage.i4i;
import defpackage.x5i;
import java.util.Iterator;

final class zzfyo extends zzfxb {
    public static final Object[] e;
    static final zzfyo zza;
    public final transient int b;
    public final transient int c;
    public final transient int d;
    final transient Object[] zzb;
    final transient Object[] zzc;

    static {
        Object[] objArr = new Object[0];
        e = objArr;
        zza = new zzfyo(objArr, 0, objArr, 0, 0);
    }

    public zzfyo(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
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
                int iB = i4i.b(obj);
                while (true) {
                    int i = iB & this.c;
                    Object obj2 = objArr[i];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    iB = i + 1;
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
        System.arraycopy(objArr2, 0, objArr, i, i2);
        return i + i2;
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
    public final x5i iterator() {
        return zzd().listIterator(0);
    }

    @Override
    public final boolean zzf() {
        return false;
    }

    @Override
    public final Object[] zzg() {
        return this.zzb;
    }

    @Override
    public final zzfww zzi() {
        return zzfww.zzj(this.zzb, this.d);
    }

    @Override
    public final boolean zzu() {
        return true;
    }
}
