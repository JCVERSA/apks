package com.google.android.gms.internal.consent_sdk;

import defpackage.h0g;
import defpackage.qbg;
import java.util.Iterator;

final class zzde extends zzdb {
    public static final Object[] e;
    static final zzde zza;
    public final transient int b;
    public final transient int c;
    public final transient int d;
    final transient Object[] zzb;
    final transient Object[] zzc;

    static {
        Object[] objArr = new Object[0];
        e = objArr;
        zza = new zzde(objArr, 0, objArr, 0, 0);
    }

    public zzde(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
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
                int iA = h0g.a(obj.hashCode());
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
        return zzg().listIterator(0);
    }

    @Override
    public final int size() {
        return this.d;
    }

    @Override
    public final int zza(Object[] objArr, int i) {
        System.arraycopy(this.zzb, 0, objArr, 0, this.d);
        return this.d;
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
    public final qbg iterator() {
        return zzg().listIterator(0);
    }

    @Override
    public final Object[] zze() {
        return this.zzb;
    }

    @Override
    public final zzda zzh() {
        return zzda.zzg(this.zzb, this.d);
    }

    @Override
    public final boolean zzk() {
        return true;
    }
}
