package com.google.android.gms.internal.ads;

import defpackage.k5i;
import defpackage.l4i;
import defpackage.m4i;
import defpackage.t2i;
import defpackage.t3i;
import defpackage.v2i;
import defpackage.x5i;
import defpackage.y5i;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

public abstract class zzfww extends zzfwr implements List, RandomAccess {
    private static final y5i zza = new m4i(zzfyi.zza, 0);
    public static final int zzd = 0;

    public static l4i zzi(int i) {
        t3i.a(i, "expectedSize");
        return new l4i(i);
    }

    public static zzfww zzj(Object[] objArr, int i) {
        return i == 0 ? zzfyi.zza : new zzfyi(objArr, i);
    }

    public static zzfww zzk(Iterable iterable) {
        iterable.getClass();
        return zzl((Collection) iterable);
    }

    public static zzfww zzl(Collection collection) {
        if (!(collection instanceof zzfwr)) {
            Object[] array = collection.toArray();
            int length = array.length;
            k5i.b(array, length);
            return zzj(array, length);
        }
        zzfww zzfwwVarZzd = ((zzfwr) collection).zzd();
        if (!zzfwwVarZzd.zzf()) {
            return zzfwwVarZzd;
        }
        Object[] array2 = zzfwwVarZzd.toArray();
        return zzj(array2, array2.length);
    }

    public static zzfww zzm(Object[] objArr) {
        if (objArr.length == 0) {
            return zzfyi.zza;
        }
        Object[] objArr2 = (Object[]) objArr.clone();
        int length = objArr2.length;
        k5i.b(objArr2, length);
        return zzj(objArr2, length);
    }

    public static zzfww zzn() {
        return zzfyi.zza;
    }

    public static zzfww zzo(Object obj) {
        Object[] objArr = {obj};
        k5i.b(objArr, 1);
        return zzj(objArr, 1);
    }

    public static zzfww zzp(Object obj, Object obj2) {
        Object[] objArr = {obj, obj2};
        k5i.b(objArr, 2);
        return zzj(objArr, 2);
    }

    public static zzfww zzq(Object obj, Object obj2, Object obj3) {
        Object[] objArr = {obj, obj2, obj3};
        k5i.b(objArr, 3);
        return zzj(objArr, 3);
    }

    public static zzfww zzr(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        Object[] objArr = {obj, obj2, obj3, obj4, obj5};
        k5i.b(objArr, 5);
        return zzj(objArr, 5);
    }

    public static zzfww zzs(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        Object[] objArr = {"3010", "3008", "1005", "1009", "2011", "2007"};
        k5i.b(objArr, 6);
        return zzj(objArr, 6);
    }

    @SafeVarargs
    public static zzfww zzt(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object... objArr) {
        int length = objArr.length;
        int i = length + 12;
        Object[] objArr2 = new Object[i];
        objArr2[0] = obj;
        objArr2[1] = obj2;
        objArr2[2] = obj3;
        objArr2[3] = obj4;
        objArr2[4] = obj5;
        objArr2[5] = obj6;
        objArr2[6] = obj7;
        objArr2[7] = obj8;
        objArr2[8] = obj9;
        objArr2[9] = obj10;
        objArr2[10] = obj11;
        objArr2[11] = obj12;
        System.arraycopy(objArr, 0, objArr2, 12, length);
        k5i.b(objArr2, i);
        return zzj(objArr2, i);
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
                        if (t2i.a(get(i), list.get(i))) {
                        }
                    }
                    return true;
                }
                Iterator it = iterator();
                Iterator it2 = list.iterator();
                while (it.hasNext()) {
                    if (it2.hasNext() && t2i.a(it.next(), it2.next())) {
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
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override
    @Deprecated
    public final zzfww zzd() {
        return this;
    }

    @Override
    public final x5i iterator() {
        return listIterator(0);
    }

    @Override
    public zzfww subList(int i, int i2) {
        v2i.k(i, i2, size());
        int i3 = i2 - i;
        if (i3 == size()) {
            return this;
        }
        return i3 == 0 ? zzfyi.zza : new zzfwv(this, i, i3);
    }

    @Override
    public final y5i listIterator(int i) {
        v2i.b(i, size(), "index");
        return isEmpty() ? zza : new m4i(this, i);
    }
}
