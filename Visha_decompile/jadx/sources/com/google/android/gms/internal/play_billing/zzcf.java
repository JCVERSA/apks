package com.google.android.gms.internal.play_billing;

import defpackage.cbf;
import defpackage.fmf;
import defpackage.stf;
import defpackage.xvf;
import java.util.Arrays;
import java.util.Objects;
import java.util.Set;

public abstract class zzcf extends zzbx implements Set {
    private transient zzca zza;

    public static int zzh(int i) {
        int iMax = Math.max(i, 2);
        if (iMax >= 751619276) {
            if (iMax < 1073741824) {
                return 1073741824;
            }
            throw new IllegalArgumentException("collection too large");
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1);
        do {
            iHighestOneBit += iHighestOneBit;
        } while (((double) iHighestOneBit) * 0.7d < iMax);
        return iHighestOneBit;
    }

    public static zzcf zzk() {
        return zzcp.zza;
    }

    public static zzcf zzm(int i, Object... objArr) {
        if (i == 0) {
            return zzcp.zza;
        }
        if (i == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new zzcr(obj);
        }
        int iZzh = zzh(i);
        Object[] objArr2 = new Object[iZzh];
        int i2 = iZzh - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object obj2 = objArr[i5];
            fmf.a(obj2, i5);
            int iHashCode = obj2.hashCode();
            int iA = cbf.a(iHashCode);
            while (true) {
                int i6 = iA & i2;
                Object obj3 = objArr2[i6];
                if (obj3 == null) {
                    objArr[i4] = obj2;
                    objArr2[i6] = obj2;
                    i3 += iHashCode;
                    i4++;
                    break;
                }
                if (obj3.equals(obj2)) {
                    break;
                }
                iA++;
            }
        }
        Arrays.fill(objArr, i4, i, (Object) null);
        if (i4 == 1) {
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new zzcr(obj4);
        }
        if (zzh(i4) < iZzh / 2) {
            return zzm(i4, objArr);
        }
        int length = objArr.length;
        if (i4 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i4);
        }
        return new zzcp(objArr, i3, objArr2, i2, i4);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzcf) && zzl() && ((zzcf) obj).zzl() && hashCode() != obj.hashCode()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size() && containsAll(set)) {
                    return true;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override
    public int hashCode() {
        return stf.a(this);
    }

    @Override
    public zzca zzd() {
        zzca zzcaVar = this.zza;
        if (zzcaVar != null) {
            return zzcaVar;
        }
        zzca zzcaVarZzi = zzi();
        this.zza = zzcaVarZzi;
        return zzcaVarZzi;
    }

    @Override
    public abstract xvf iterator();

    public zzca zzi() {
        Object[] array = toArray();
        int i = zzca.zzd;
        return zzca.zzi(array, array.length);
    }

    public boolean zzl() {
        return false;
    }
}
