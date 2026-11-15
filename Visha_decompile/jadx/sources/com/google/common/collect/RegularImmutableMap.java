package com.google.common.collect;

import defpackage.dgb;
import defpackage.k71;
import defpackage.mo4;
import defpackage.xd8;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;

final class RegularImmutableMap<K, V> extends ImmutableMap<K, V> {
    static final ImmutableMap<Object, Object> EMPTY = new RegularImmutableMap(null, new Object[0], 0);
    private static final long serialVersionUID = 0;
    final transient Object[] alternatingKeysAndValues;
    public final transient Object b;
    public final transient int c;

    public static class EntrySet<K, V> extends ImmutableSet<Map.Entry<K, V>> {
        public final transient ImmutableMap b;
        public final transient Object[] c;
        public final transient int d;
        public final transient int e;

        public EntrySet(ImmutableMap<K, V> immutableMap, Object[] objArr, int i, int i2) {
            this.b = immutableMap;
            this.c = objArr;
            this.d = i;
            this.e = i2;
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            return value != null && value.equals(this.b.get(key));
        }

        @Override
        public int copyIntoArray(Object[] objArr, int i) {
            return asList().copyIntoArray(objArr, i);
        }

        @Override
        public ImmutableList<Map.Entry<K, V>> createAsList() {
            return new ImmutableList<Map.Entry<K, V>>() {
                @Override
                public boolean isPartialView() {
                    return true;
                }

                @Override
                public int size() {
                    return EntrySet.this.e;
                }

                @Override
                public Object writeReplace() {
                    return super.writeReplace();
                }

                @Override
                public Map.Entry<K, V> get(int i) {
                    xd8.m(i, EntrySet.this.e);
                    int i2 = i * 2;
                    Object obj = EntrySet.this.c[EntrySet.this.d + i2];
                    Objects.requireNonNull(obj);
                    Object obj2 = EntrySet.this.c[i2 + (EntrySet.this.d ^ 1)];
                    Objects.requireNonNull(obj2);
                    return new AbstractMap.SimpleImmutableEntry(obj, obj2);
                }
            };
        }

        @Override
        public boolean isPartialView() {
            return true;
        }

        @Override
        public int size() {
            return this.e;
        }

        @Override
        public Object writeReplace() {
            return super.writeReplace();
        }

        @Override
        public dgb iterator() {
            return asList().iterator();
        }
    }

    public static final class KeySet<K> extends ImmutableSet<K> {
        public final transient ImmutableMap b;
        public final transient ImmutableList c;

        public KeySet(ImmutableMap<K, ?> immutableMap, ImmutableList<K> immutableList) {
            this.b = immutableMap;
            this.c = immutableList;
        }

        @Override
        public ImmutableList<K> asList() {
            return this.c;
        }

        @Override
        public boolean contains(Object obj) {
            return this.b.get(obj) != null;
        }

        @Override
        public int copyIntoArray(Object[] objArr, int i) {
            return asList().copyIntoArray(objArr, i);
        }

        @Override
        public boolean isPartialView() {
            return true;
        }

        @Override
        public int size() {
            return this.b.size();
        }

        @Override
        public Object writeReplace() {
            return super.writeReplace();
        }

        @Override
        public dgb iterator() {
            return asList().iterator();
        }
    }

    public static final class KeysOrValuesAsList extends ImmutableList<Object> {
        public final transient Object[] b;
        public final transient int c;
        public final transient int d;

        public KeysOrValuesAsList(Object[] objArr, int i, int i2) {
            this.b = objArr;
            this.c = i;
            this.d = i2;
        }

        @Override
        public Object get(int i) {
            xd8.m(i, this.d);
            Object obj = this.b[(i * 2) + this.c];
            Objects.requireNonNull(obj);
            return obj;
        }

        @Override
        public boolean isPartialView() {
            return true;
        }

        @Override
        public int size() {
            return this.d;
        }

        @Override
        public Object writeReplace() {
            return super.writeReplace();
        }
    }

    public RegularImmutableMap(Object obj, Object[] objArr, int i) {
        this.b = obj;
        this.alternatingKeysAndValues = objArr;
        this.c = i;
    }

    public static Object a(Object[] objArr, int i, int i2, int i3) {
        ImmutableMap.b.a aVar = null;
        if (i == 1) {
            Object obj = objArr[i3];
            Objects.requireNonNull(obj);
            Object obj2 = objArr[i3 ^ 1];
            Objects.requireNonNull(obj2);
            k71.a(obj, obj2);
            return null;
        }
        int i4 = i2 - 1;
        int i5 = -1;
        if (i2 <= 128) {
            byte[] bArr = new byte[i2];
            Arrays.fill(bArr, (byte) -1);
            int i6 = 0;
            for (int i7 = 0; i7 < i; i7++) {
                int i8 = (i7 * 2) + i3;
                int i9 = (i6 * 2) + i3;
                Object obj3 = objArr[i8];
                Objects.requireNonNull(obj3);
                Object obj4 = objArr[i8 ^ 1];
                Objects.requireNonNull(obj4);
                k71.a(obj3, obj4);
                int iC = mo4.c(obj3.hashCode());
                while (true) {
                    int i10 = iC & i4;
                    int i11 = bArr[i10] & 255;
                    if (i11 == 255) {
                        bArr[i10] = (byte) i9;
                        if (i6 < i7) {
                            objArr[i9] = obj3;
                            objArr[i9 ^ 1] = obj4;
                        }
                        i6++;
                        break;
                    }
                    if (obj3.equals(objArr[i11])) {
                        int i12 = i11 ^ 1;
                        Object obj5 = objArr[i12];
                        Objects.requireNonNull(obj5);
                        aVar = new ImmutableMap.b.a(obj3, obj4, obj5);
                        objArr[i12] = obj4;
                        break;
                    }
                    iC = i10 + 1;
                }
            }
            return i6 == i ? bArr : new Object[]{bArr, Integer.valueOf(i6), aVar};
        }
        if (i2 <= 32768) {
            short[] sArr = new short[i2];
            Arrays.fill(sArr, (short) -1);
            int i13 = 0;
            for (int i14 = 0; i14 < i; i14++) {
                int i15 = (i14 * 2) + i3;
                int i16 = (i13 * 2) + i3;
                Object obj6 = objArr[i15];
                Objects.requireNonNull(obj6);
                Object obj7 = objArr[i15 ^ 1];
                Objects.requireNonNull(obj7);
                k71.a(obj6, obj7);
                int iC2 = mo4.c(obj6.hashCode());
                while (true) {
                    int i17 = iC2 & i4;
                    int i18 = sArr[i17] & 65535;
                    if (i18 == 65535) {
                        sArr[i17] = (short) i16;
                        if (i13 < i14) {
                            objArr[i16] = obj6;
                            objArr[i16 ^ 1] = obj7;
                        }
                        i13++;
                        break;
                    }
                    if (obj6.equals(objArr[i18])) {
                        int i19 = i18 ^ 1;
                        Object obj8 = objArr[i19];
                        Objects.requireNonNull(obj8);
                        aVar = new ImmutableMap.b.a(obj6, obj7, obj8);
                        objArr[i19] = obj7;
                        break;
                    }
                    iC2 = i17 + 1;
                }
            }
            return i13 == i ? sArr : new Object[]{sArr, Integer.valueOf(i13), aVar};
        }
        int[] iArr = new int[i2];
        Arrays.fill(iArr, -1);
        int i20 = 0;
        int i21 = 0;
        while (i20 < i) {
            int i22 = (i20 * 2) + i3;
            int i23 = (i21 * 2) + i3;
            Object obj9 = objArr[i22];
            Objects.requireNonNull(obj9);
            Object obj10 = objArr[i22 ^ 1];
            Objects.requireNonNull(obj10);
            k71.a(obj9, obj10);
            int iC3 = mo4.c(obj9.hashCode());
            while (true) {
                int i24 = iC3 & i4;
                int i25 = iArr[i24];
                if (i25 == i5) {
                    iArr[i24] = i23;
                    if (i21 < i20) {
                        objArr[i23] = obj9;
                        objArr[i23 ^ 1] = obj10;
                    }
                    i21++;
                    break;
                }
                if (obj9.equals(objArr[i25])) {
                    int i26 = i25 ^ 1;
                    Object obj11 = objArr[i26];
                    Objects.requireNonNull(obj11);
                    aVar = new ImmutableMap.b.a(obj9, obj10, obj11);
                    objArr[i26] = obj10;
                    break;
                }
                iC3 = i24 + 1;
                i5 = -1;
            }
            i20++;
            i5 = -1;
        }
        return i21 == i ? iArr : new Object[]{iArr, Integer.valueOf(i21), aVar};
    }

    public static <K, V> RegularImmutableMap<K, V> create(int i, Object[] objArr) {
        return create(i, objArr, null);
    }

    public static Object createHashTableOrThrow(Object[] objArr, int i, int i2, int i3) {
        Object objA = a(objArr, i, i2, i3);
        if (objA instanceof Object[]) {
            throw ((ImmutableMap.b.a) ((Object[]) objA)[2]).a();
        }
        return objA;
    }

    @Override
    public ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return new EntrySet(this, this.alternatingKeysAndValues, 0, this.c);
    }

    @Override
    public ImmutableSet<K> createKeySet() {
        return new KeySet(this, new KeysOrValuesAsList(this.alternatingKeysAndValues, 0, this.c));
    }

    @Override
    public ImmutableCollection<V> createValues() {
        return new KeysOrValuesAsList(this.alternatingKeysAndValues, 1, this.c);
    }

    @Override
    public V get(Object obj) {
        V v = (V) get(this.b, this.alternatingKeysAndValues, this.c, 0, obj);
        if (v == null) {
            return null;
        }
        return v;
    }

    @Override
    public boolean isPartialView() {
        return false;
    }

    @Override
    public int size() {
        return this.c;
    }

    @Override
    public Object writeReplace() {
        return super.writeReplace();
    }

    public static <K, V> RegularImmutableMap<K, V> create(int i, Object[] objArr, ImmutableMap.b bVar) {
        if (i == 0) {
            return (RegularImmutableMap) EMPTY;
        }
        if (i == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            Object obj2 = objArr[1];
            Objects.requireNonNull(obj2);
            k71.a(obj, obj2);
            return new RegularImmutableMap<>(null, objArr, 1);
        }
        xd8.r(i, objArr.length >> 1);
        Object objA = a(objArr, i, ImmutableSet.chooseTableSize(i), 0);
        if (objA instanceof Object[]) {
            Object[] objArr2 = (Object[]) objA;
            ImmutableMap.b.a aVar = (ImmutableMap.b.a) objArr2[2];
            if (bVar == null) {
                throw aVar.a();
            }
            bVar.e = aVar;
            Object obj3 = objArr2[0];
            int iIntValue = ((Integer) objArr2[1]).intValue();
            objArr = Arrays.copyOf(objArr, iIntValue * 2);
            objA = obj3;
            i = iIntValue;
        }
        return new RegularImmutableMap<>(objA, objArr, i);
    }

    public static Object get(Object obj, Object[] objArr, int i, int i2, Object obj2) {
        if (obj2 == null) {
            return null;
        }
        if (i == 1) {
            Object obj3 = objArr[i2];
            Objects.requireNonNull(obj3);
            if (!obj3.equals(obj2)) {
                return null;
            }
            Object obj4 = objArr[i2 ^ 1];
            Objects.requireNonNull(obj4);
            return obj4;
        }
        if (obj == null) {
            return null;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            int length = bArr.length - 1;
            int iC = mo4.c(obj2.hashCode());
            while (true) {
                int i3 = iC & length;
                int i4 = bArr[i3] & 255;
                if (i4 == 255) {
                    return null;
                }
                if (obj2.equals(objArr[i4])) {
                    return objArr[i4 ^ 1];
                }
                iC = i3 + 1;
            }
        } else if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            int length2 = sArr.length - 1;
            int iC2 = mo4.c(obj2.hashCode());
            while (true) {
                int i5 = iC2 & length2;
                int i6 = sArr[i5] & 65535;
                if (i6 == 65535) {
                    return null;
                }
                if (obj2.equals(objArr[i6])) {
                    return objArr[i6 ^ 1];
                }
                iC2 = i5 + 1;
            }
        } else {
            int[] iArr = (int[]) obj;
            int length3 = iArr.length - 1;
            int iC3 = mo4.c(obj2.hashCode());
            while (true) {
                int i7 = iC3 & length3;
                int i8 = iArr[i7];
                if (i8 == -1) {
                    return null;
                }
                if (obj2.equals(objArr[i8])) {
                    return objArr[i8 ^ 1];
                }
                iC3 = i7 + 1;
            }
        }
    }
}
