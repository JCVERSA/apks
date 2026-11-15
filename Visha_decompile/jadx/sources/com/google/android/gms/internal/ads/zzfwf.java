package com.google.android.gms.internal.ads;

import defpackage.b4i;
import defpackage.i4i;
import defpackage.t2i;
import defpackage.v2i;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

final class zzfwf extends AbstractMap implements Serializable {
    public static final Object h = new Object();
    public transient Object b;
    public transient int c;
    public transient int d;
    public transient Set e;
    public transient Set f;
    public transient Collection g;
    transient int[] zza;
    transient Object[] zzb;
    transient Object[] zzc;

    public zzfwf() {
        zzp(3);
    }

    public static Object zzg(zzfwf zzfwfVar, int i) {
        return zzfwfVar.b()[i];
    }

    public static Object zzi(zzfwf zzfwfVar) {
        Object obj = zzfwfVar.b;
        Objects.requireNonNull(obj);
        return obj;
    }

    public static Object zzj(zzfwf zzfwfVar, int i) {
        return zzfwfVar.c()[i];
    }

    public static void zzn(zzfwf zzfwfVar, int i, Object obj) {
        zzfwfVar.c()[i] = obj;
    }

    public final int[] a() {
        int[] iArr = this.zza;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    public final Object[] b() {
        Object[] objArr = this.zzb;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    public final Object[] c() {
        Object[] objArr = this.zzc;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    @Override
    public final void clear() {
        if (zzr()) {
            return;
        }
        zzo();
        Map mapZzl = zzl();
        if (mapZzl != null) {
            this.c = s7.c(size(), 3, 1073741823);
            mapZzl.clear();
            this.b = null;
            this.d = 0;
            return;
        }
        Arrays.fill(b(), 0, this.d, (Object) null);
        Arrays.fill(c(), 0, this.d, (Object) null);
        Object obj = this.b;
        Objects.requireNonNull(obj);
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(a(), 0, this.d, 0);
        this.d = 0;
    }

    @Override
    public final boolean containsKey(Object obj) {
        Map mapZzl = zzl();
        if (mapZzl != null) {
            return mapZzl.containsKey(obj);
        }
        return e(obj) != -1;
    }

    @Override
    public final boolean containsValue(Object obj) {
        Map mapZzl = zzl();
        if (mapZzl != null) {
            return mapZzl.containsValue(obj);
        }
        for (int i = 0; i < this.d; i++) {
            if (t2i.a(obj, c()[i])) {
                return true;
            }
        }
        return false;
    }

    public final int d() {
        return (1 << (this.c & 31)) - 1;
    }

    public final int e(Object obj) {
        if (zzr()) {
            return -1;
        }
        int iB = i4i.b(obj);
        int iD = d();
        Object obj2 = this.b;
        Objects.requireNonNull(obj2);
        int iC = b4i.c(obj2, iB & iD);
        if (iC != 0) {
            int i = ~iD;
            int i2 = iB & i;
            do {
                int i3 = iC - 1;
                int i4 = a()[i3];
                if ((i4 & i) == i2 && t2i.a(obj, b()[i3])) {
                    return i3;
                }
                iC = i4 & iD;
            } while (iC != 0);
        }
        return -1;
    }

    @Override
    public final Set entrySet() {
        Set set = this.f;
        if (set != null) {
            return set;
        }
        g7 g7Var = new g7(this);
        this.f = g7Var;
        return g7Var;
    }

    public final int f(int i, int i2, int i3, int i4) {
        int i5 = i2 - 1;
        Object objD = b4i.d(i2);
        if (i4 != 0) {
            b4i.e(objD, i3 & i5, i4 + 1);
        }
        Object obj = this.b;
        Objects.requireNonNull(obj);
        int[] iArrA = a();
        for (int i6 = 0; i6 <= i; i6++) {
            int iC = b4i.c(obj, i6);
            while (iC != 0) {
                int i7 = iC - 1;
                int i8 = iArrA[i7];
                int i9 = ((~i) & i8) | i6;
                int i10 = i9 & i5;
                int iC2 = b4i.c(objD, i10);
                b4i.e(objD, i10, iC);
                iArrA[i7] = ((~i5) & i9) | (iC2 & i5);
                iC = i8 & i;
            }
        }
        this.b = objD;
        h(i5);
        return i5;
    }

    public final Object g(Object obj) {
        if (!zzr()) {
            int iD = d();
            Object obj2 = this.b;
            Objects.requireNonNull(obj2);
            int iB = b4i.b(obj, null, iD, obj2, a(), b(), null);
            if (iB != -1) {
                Object obj3 = c()[iB];
                zzq(iB, iD);
                this.d--;
                zzo();
                return obj3;
            }
        }
        return h;
    }

    @Override
    public final Object get(Object obj) {
        Map mapZzl = zzl();
        if (mapZzl != null) {
            return mapZzl.get(obj);
        }
        int iE = e(obj);
        if (iE == -1) {
            return null;
        }
        return c()[iE];
    }

    public final void h(int i) {
        this.c = ((32 - Integer.numberOfLeadingZeros(i)) & 31) | (this.c & (-32));
    }

    @Override
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public final Set keySet() {
        Set set = this.e;
        if (set != null) {
            return set;
        }
        i7 i7Var = new i7(this);
        this.e = i7Var;
        return i7Var;
    }

    @Override
    public final Object put(Object obj, Object obj2) {
        int iMin;
        if (zzr()) {
            v2i.m(zzr(), "Arrays already allocated");
            int i = this.c;
            int iMax = Math.max(i + 1, 2);
            int iHighestOneBit = Integer.highestOneBit(iMax);
            if (iMax > iHighestOneBit && (iHighestOneBit = iHighestOneBit + iHighestOneBit) <= 0) {
                iHighestOneBit = 1073741824;
            }
            int iMax2 = Math.max(4, iHighestOneBit);
            this.b = b4i.d(iMax2);
            h(iMax2 - 1);
            this.zza = new int[i];
            this.zzb = new Object[i];
            this.zzc = new Object[i];
        }
        Map mapZzl = zzl();
        if (mapZzl != null) {
            return mapZzl.put(obj, obj2);
        }
        int[] iArrA = a();
        Object[] objArrB = b();
        Object[] objArrC = c();
        int i2 = this.d;
        int i3 = i2 + 1;
        int iB = i4i.b(obj);
        int iD = d();
        int i4 = iB & iD;
        Object obj3 = this.b;
        Objects.requireNonNull(obj3);
        int iC = b4i.c(obj3, i4);
        if (iC != 0) {
            int i5 = ~iD;
            int i6 = iB & i5;
            int i7 = 0;
            while (true) {
                int i8 = iC - 1;
                int i9 = iArrA[i8];
                int i10 = i9 & i5;
                if (i10 == i6 && t2i.a(obj, objArrB[i8])) {
                    Object obj4 = objArrC[i8];
                    objArrC[i8] = obj2;
                    return obj4;
                }
                int i11 = i9 & iD;
                i7++;
                if (i11 == 0) {
                    if (i7 < 9) {
                        if (i3 <= iD) {
                            iArrA[i8] = (i3 & iD) | i10;
                            break;
                        }
                        iD = f(iD, b4i.a(iD), iB, i2);
                        break;
                    }
                    LinkedHashMap linkedHashMap = new LinkedHashMap(d() + 1, 1.0f);
                    int iZze = zze();
                    while (iZze >= 0) {
                        linkedHashMap.put(b()[iZze], c()[iZze]);
                        iZze = zzf(iZze);
                    }
                    this.b = linkedHashMap;
                    this.zza = null;
                    this.zzb = null;
                    this.zzc = null;
                    zzo();
                    return linkedHashMap.put(obj, obj2);
                }
                iC = i11;
            }
        } else if (i3 > iD) {
            iD = f(iD, b4i.a(iD), iB, i2);
        } else {
            Object obj5 = this.b;
            Objects.requireNonNull(obj5);
            b4i.e(obj5, i4, i3);
        }
        int length = a().length;
        if (i3 > length && (iMin = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) != length) {
            this.zza = Arrays.copyOf(a(), iMin);
            this.zzb = Arrays.copyOf(b(), iMin);
            this.zzc = Arrays.copyOf(c(), iMin);
        }
        a()[i2] = (~iD) & iB;
        b()[i2] = obj;
        c()[i2] = obj2;
        this.d = i3;
        zzo();
        return null;
    }

    @Override
    public final Object remove(Object obj) {
        Map mapZzl = zzl();
        if (mapZzl != null) {
            return mapZzl.remove(obj);
        }
        Object objG = g(obj);
        if (objG == h) {
            return null;
        }
        return objG;
    }

    @Override
    public final int size() {
        Map mapZzl = zzl();
        return mapZzl != null ? mapZzl.size() : this.d;
    }

    @Override
    public final Collection values() {
        Collection collection = this.g;
        if (collection != null) {
            return collection;
        }
        k7 k7Var = new k7(this);
        this.g = k7Var;
        return k7Var;
    }

    public final int zze() {
        return isEmpty() ? -1 : 0;
    }

    public final int zzf(int i) {
        int i2 = i + 1;
        if (i2 < this.d) {
            return i2;
        }
        return -1;
    }

    public final Map zzl() {
        Object obj = this.b;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    public final void zzo() {
        this.c += 32;
    }

    public final void zzp(int i) {
        this.c = s7.c(i, 1, 1073741823);
    }

    public final void zzq(int i, int i2) {
        Object obj = this.b;
        Objects.requireNonNull(obj);
        int[] iArrA = a();
        Object[] objArrB = b();
        Object[] objArrC = c();
        int size = size();
        int i3 = size - 1;
        if (i >= i3) {
            objArrB[i] = null;
            objArrC[i] = null;
            iArrA[i] = 0;
            return;
        }
        int i4 = i + 1;
        Object obj2 = objArrB[i3];
        objArrB[i] = obj2;
        objArrC[i] = objArrC[i3];
        objArrB[i3] = null;
        objArrC[i3] = null;
        iArrA[i] = iArrA[i3];
        iArrA[i3] = 0;
        int iB = i4i.b(obj2) & i2;
        int iC = b4i.c(obj, iB);
        if (iC == size) {
            b4i.e(obj, iB, i4);
            return;
        }
        while (true) {
            int i5 = iC - 1;
            int i6 = iArrA[i5];
            int i7 = i6 & i2;
            if (i7 == size) {
                iArrA[i5] = ((~i2) & i6) | (i4 & i2);
                return;
            }
            iC = i7;
        }
    }

    public final boolean zzr() {
        return this.b == null;
    }

    public zzfwf(int i) {
        zzp(8);
    }
}
