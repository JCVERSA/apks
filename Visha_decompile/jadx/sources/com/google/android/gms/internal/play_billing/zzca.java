package com.google.android.gms.internal.play_billing;

import com.android.billingclient.api.BillingClient;
import defpackage.axf;
import defpackage.fmf;
import defpackage.wdf;
import defpackage.xvf;
import defpackage.y4f;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.RandomAccess;

public abstract class zzca extends zzbx implements List, RandomAccess {
    private static final axf zza = new wdf(zzcj.zza, 0);
    public static final int zzd = 0;

    public static zzca zzi(Object[] objArr, int i) {
        return i == 0 ? zzcj.zza : new zzcj(objArr, i);
    }

    public static zzca zzj(Collection collection) {
        if (!(collection instanceof zzbx)) {
            Object[] array = collection.toArray();
            int length = array.length;
            fmf.b(array, length);
            return zzi(array, length);
        }
        zzca zzcaVarZzd = ((zzbx) collection).zzd();
        if (!zzcaVarZzd.zzf()) {
            return zzcaVarZzd;
        }
        Object[] array2 = zzcaVarZzd.toArray();
        return zzi(array2, array2.length);
    }

    public static zzca zzk() {
        return zzcj.zza;
    }

    public static zzca zzl(Object obj) {
        Object[] objArr = {obj};
        fmf.b(objArr, 1);
        return zzi(objArr, 1);
    }

    public static zzca zzm(Object obj, Object obj2) {
        Object[] objArr = {BillingClient.ProductType.SUBS, BillingClient.ProductType.INAPP};
        fmf.b(objArr, 2);
        return zzi(objArr, 2);
    }

    @Override
    @Deprecated
    public final void add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i = 0; i < size; i++) {
                        if (Objects.equals(get(i), list.get(i))) {
                        }
                    }
                    return true;
                }
                Iterator it = iterator();
                Iterator it2 = list.iterator();
                while (it.hasNext()) {
                    if (it2.hasNext() && Objects.equals(it.next(), it2.next())) {
                    }
                }
                if (!it2.hasNext()) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public final int hashCode() {
        int size = size();
        int iHashCode = 1;
        for (int i = 0; i < size; i++) {
            iHashCode = (iHashCode * 31) + get(i).hashCode();
        }
        return iHashCode;
    }

    @Override
    public final int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (obj.equals(get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override
    public final int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override
    @Deprecated
    public final Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int zza(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i2] = get(i2);
        }
        return size;
    }

    @Override
    @Deprecated
    public final zzca zzd() {
        return this;
    }

    @Override
    public final xvf iterator() {
        return listIterator(0);
    }

    @Override
    public zzca subList(int i, int i2) {
        y4f.d(i, i2, size());
        int i3 = i2 - i;
        if (i3 == size()) {
            return this;
        }
        return i3 == 0 ? zzcj.zza : new zzbz(this, i, i3);
    }

    @Override
    public final axf listIterator(int i) {
        y4f.b(i, size(), "index");
        return isEmpty() ? zza : new wdf(this, i);
    }
}
