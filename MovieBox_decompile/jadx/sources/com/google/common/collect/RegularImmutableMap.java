package com.google.common.collect;

import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;

final class RegularImmutableMap<K, V> extends ImmutableMap<K, V> {
    static final ImmutableMap<Object, Object> EMPTY = new RegularImmutableMap(null, new Object[0], 0);
    private static final long serialVersionUID = 0;

    private final transient Object f29809a;
    final transient Object[] alternatingKeysAndValues;

    private final transient int f29810b;

    static class EntrySet<K, V> extends ImmutableSet<Map.Entry<K, V>> {

        private final transient ImmutableMap f29811a;

        private final transient Object[] f29812b;

        private final transient int f29813c;

        private final transient int f29814d;

        EntrySet(ImmutableMap<K, V> immutableMap, Object[] objArr, int i10, int i11) {
            this.f29811a = immutableMap;
            this.f29812b = objArr;
            this.f29813c = i10;
            this.f29814d = i11;
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            return value != null && value.equals(this.f29811a.get(key));
        }

        @Override
        int copyIntoArray(Object[] objArr, int i10) {
            return asList().copyIntoArray(objArr, i10);
        }

        @Override
        ImmutableList<Map.Entry<K, V>> createAsList() {
            return new ImmutableList<Map.Entry<K, V>>() {
                @Override
                public boolean isPartialView() {
                    return true;
                }

                @Override
                public int size() {
                    return EntrySet.this.f29814d;
                }

                @Override
                Object writeReplace() {
                    return super.writeReplace();
                }

                @Override
                public Map.Entry<K, V> get(int i10) {
                    com.google.common.base.m.m(i10, EntrySet.this.f29814d);
                    int i11 = i10 * 2;
                    Object obj = EntrySet.this.f29812b[EntrySet.this.f29813c + i11];
                    Objects.requireNonNull(obj);
                    Object obj2 = EntrySet.this.f29812b[i11 + (EntrySet.this.f29813c ^ 1)];
                    Objects.requireNonNull(obj2);
                    return new AbstractMap.SimpleImmutableEntry(obj, obj2);
                }
            };
        }

        @Override
        boolean isPartialView() {
            return true;
        }

        @Override
        public int size() {
            return this.f29814d;
        }

        @Override
        Object writeReplace() {
            return super.writeReplace();
        }

        @Override
        public r4 iterator() {
            return asList().iterator();
        }
    }

    static final class KeySet<K> extends ImmutableSet<K> {

        private final transient ImmutableMap f29815a;

        private final transient ImmutableList f29816b;

        KeySet(ImmutableMap<K, ?> immutableMap, ImmutableList<K> immutableList) {
            this.f29815a = immutableMap;
            this.f29816b = immutableList;
        }

        @Override
        public ImmutableList<K> asList() {
            return this.f29816b;
        }

        @Override
        public boolean contains(Object obj) {
            return this.f29815a.get(obj) != null;
        }

        @Override
        int copyIntoArray(Object[] objArr, int i10) {
            return asList().copyIntoArray(objArr, i10);
        }

        @Override
        boolean isPartialView() {
            return true;
        }

        @Override
        public int size() {
            return this.f29815a.size();
        }

        @Override
        Object writeReplace() {
            return super.writeReplace();
        }

        @Override
        public r4 iterator() {
            return asList().iterator();
        }
    }

    static final class KeysOrValuesAsList extends ImmutableList<Object> {

        private final transient Object[] f29817a;

        private final transient int f29818b;

        private final transient int f29819c;

        KeysOrValuesAsList(Object[] objArr, int i10, int i11) {
            this.f29817a = objArr;
            this.f29818b = i10;
            this.f29819c = i11;
        }

        @Override
        public Object get(int i10) {
            com.google.common.base.m.m(i10, this.f29819c);
            Object obj = this.f29817a[(i10 * 2) + this.f29818b];
            Objects.requireNonNull(obj);
            return obj;
        }

        @Override
        boolean isPartialView() {
            return true;
        }

        @Override
        public int size() {
            return this.f29819c;
        }

        @Override
        Object writeReplace() {
            return super.writeReplace();
        }
    }

    private RegularImmutableMap(Object obj, Object[] objArr, int i10) {
        this.f29809a = obj;
        this.alternatingKeysAndValues = objArr;
        this.f29810b = i10;
    }

    private static Object a(Object[] objArr, int i10, int i11, int i12) {
        ImmutableMap.b.a aVar = null;
        if (i10 == 1) {
            Object obj = objArr[i12];
            Objects.requireNonNull(obj);
            Object obj2 = objArr[i12 ^ 1];
            Objects.requireNonNull(obj2);
            e2.a(obj, obj2);
            return null;
        }
        int i13 = i11 - 1;
        int i14 = -1;
        if (i11 <= 128) {
            byte[] bArr = new byte[i11];
            Arrays.fill(bArr, (byte) -1);
            int i15 = 0;
            for (int i16 = 0; i16 < i10; i16++) {
                int i17 = (i16 * 2) + i12;
                int i18 = (i15 * 2) + i12;
                Object obj3 = objArr[i17];
                Objects.requireNonNull(obj3);
                Object obj4 = objArr[i17 ^ 1];
                Objects.requireNonNull(obj4);
                e2.a(obj3, obj4);
                int iC = v2.c(obj3.hashCode());
                while (true) {
                    int i19 = iC & i13;
                    int i20 = bArr[i19] & 255;
                    if (i20 == 255) {
                        bArr[i19] = (byte) i18;
                        if (i15 < i16) {
                            objArr[i18] = obj3;
                            objArr[i18 ^ 1] = obj4;
                        }
                        i15++;
                        break;
                    }
                    if (obj3.equals(objArr[i20])) {
                        int i21 = i20 ^ 1;
                        Object obj5 = objArr[i21];
                        Objects.requireNonNull(obj5);
                        aVar = new ImmutableMap.b.a(obj3, obj4, obj5);
                        objArr[i21] = obj4;
                        break;
                    }
                    iC = i19 + 1;
                }
            }
            return i15 == i10 ? bArr : new Object[]{bArr, Integer.valueOf(i15), aVar};
        }
        if (i11 <= 32768) {
            short[] sArr = new short[i11];
            Arrays.fill(sArr, (short) -1);
            int i22 = 0;
            for (int i23 = 0; i23 < i10; i23++) {
                int i24 = (i23 * 2) + i12;
                int i25 = (i22 * 2) + i12;
                Object obj6 = objArr[i24];
                Objects.requireNonNull(obj6);
                Object obj7 = objArr[i24 ^ 1];
                Objects.requireNonNull(obj7);
                e2.a(obj6, obj7);
                int iC2 = v2.c(obj6.hashCode());
                while (true) {
                    int i26 = iC2 & i13;
                    int i27 = sArr[i26] & 65535;
                    if (i27 == 65535) {
                        sArr[i26] = (short) i25;
                        if (i22 < i23) {
                            objArr[i25] = obj6;
                            objArr[i25 ^ 1] = obj7;
                        }
                        i22++;
                        break;
                    }
                    if (obj6.equals(objArr[i27])) {
                        int i28 = i27 ^ 1;
                        Object obj8 = objArr[i28];
                        Objects.requireNonNull(obj8);
                        aVar = new ImmutableMap.b.a(obj6, obj7, obj8);
                        objArr[i28] = obj7;
                        break;
                    }
                    iC2 = i26 + 1;
                }
            }
            return i22 == i10 ? sArr : new Object[]{sArr, Integer.valueOf(i22), aVar};
        }
        int[] iArr = new int[i11];
        Arrays.fill(iArr, -1);
        int i29 = 0;
        int i30 = 0;
        while (i29 < i10) {
            int i31 = (i29 * 2) + i12;
            int i32 = (i30 * 2) + i12;
            Object obj9 = objArr[i31];
            Objects.requireNonNull(obj9);
            Object obj10 = objArr[i31 ^ 1];
            Objects.requireNonNull(obj10);
            e2.a(obj9, obj10);
            int iC3 = v2.c(obj9.hashCode());
            while (true) {
                int i33 = iC3 & i13;
                int i34 = iArr[i33];
                if (i34 == i14) {
                    iArr[i33] = i32;
                    if (i30 < i29) {
                        objArr[i32] = obj9;
                        objArr[i32 ^ 1] = obj10;
                    }
                    i30++;
                    break;
                }
                if (obj9.equals(objArr[i34])) {
                    int i35 = i34 ^ 1;
                    Object obj11 = objArr[i35];
                    Objects.requireNonNull(obj11);
                    aVar = new ImmutableMap.b.a(obj9, obj10, obj11);
                    objArr[i35] = obj10;
                    break;
                }
                iC3 = i33 + 1;
                i14 = -1;
            }
            i29++;
            i14 = -1;
        }
        return i30 == i10 ? iArr : new Object[]{iArr, Integer.valueOf(i30), aVar};
    }

    static <K, V> RegularImmutableMap<K, V> create(int i10, Object[] objArr) {
        return create(i10, objArr, null);
    }

    static Object createHashTableOrThrow(Object[] objArr, int i10, int i11, int i12) {
        Object objA = a(objArr, i10, i11, i12);
        if (objA instanceof Object[]) {
            throw ((ImmutableMap.b.a) ((Object[]) objA)[2]).a();
        }
        return objA;
    }

    @Override
    ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return new EntrySet(this, this.alternatingKeysAndValues, 0, this.f29810b);
    }

    @Override
    ImmutableSet<K> createKeySet() {
        return new KeySet(this, new KeysOrValuesAsList(this.alternatingKeysAndValues, 0, this.f29810b));
    }

    @Override
    ImmutableCollection<V> createValues() {
        return new KeysOrValuesAsList(this.alternatingKeysAndValues, 1, this.f29810b);
    }

    @Override
    public V get(Object obj) {
        V v10 = (V) get(this.f29809a, this.alternatingKeysAndValues, this.f29810b, 0, obj);
        if (v10 == null) {
            return null;
        }
        return v10;
    }

    @Override
    boolean isPartialView() {
        return false;
    }

    @Override
    public int size() {
        return this.f29810b;
    }

    @Override
    Object writeReplace() {
        return super.writeReplace();
    }

    static <K, V> RegularImmutableMap<K, V> create(int i10, Object[] objArr, ImmutableMap.b bVar) {
        if (i10 == 0) {
            return (RegularImmutableMap) EMPTY;
        }
        if (i10 == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            Object obj2 = objArr[1];
            Objects.requireNonNull(obj2);
            e2.a(obj, obj2);
            return new RegularImmutableMap<>(null, objArr, 1);
        }
        com.google.common.base.m.r(i10, objArr.length >> 1);
        Object objA = a(objArr, i10, ImmutableSet.chooseTableSize(i10), 0);
        if (objA instanceof Object[]) {
            Object[] objArr2 = (Object[]) objA;
            ImmutableMap.b.a aVar = (ImmutableMap.b.a) objArr2[2];
            if (bVar == null) {
                throw aVar.a();
            }
            bVar.f29598e = aVar;
            Object obj3 = objArr2[0];
            int iIntValue = ((Integer) objArr2[1]).intValue();
            objArr = Arrays.copyOf(objArr, iIntValue * 2);
            objA = obj3;
            i10 = iIntValue;
        }
        return new RegularImmutableMap<>(objA, objArr, i10);
    }

    static Object get(Object obj, Object[] objArr, int i10, int i11, Object obj2) {
        if (obj2 == null) {
            return null;
        }
        if (i10 == 1) {
            Object obj3 = objArr[i11];
            Objects.requireNonNull(obj3);
            if (!obj3.equals(obj2)) {
                return null;
            }
            Object obj4 = objArr[i11 ^ 1];
            Objects.requireNonNull(obj4);
            return obj4;
        }
        if (obj == null) {
            return null;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            int length = bArr.length - 1;
            int iC = v2.c(obj2.hashCode());
            while (true) {
                int i12 = iC & length;
                int i13 = bArr[i12] & 255;
                if (i13 == 255) {
                    return null;
                }
                if (obj2.equals(objArr[i13])) {
                    return objArr[i13 ^ 1];
                }
                iC = i12 + 1;
            }
        } else if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            int length2 = sArr.length - 1;
            int iC2 = v2.c(obj2.hashCode());
            while (true) {
                int i14 = iC2 & length2;
                int i15 = sArr[i14] & 65535;
                if (i15 == 65535) {
                    return null;
                }
                if (obj2.equals(objArr[i15])) {
                    return objArr[i15 ^ 1];
                }
                iC2 = i14 + 1;
            }
        } else {
            int[] iArr = (int[]) obj;
            int length3 = iArr.length - 1;
            int iC3 = v2.c(obj2.hashCode());
            while (true) {
                int i16 = iC3 & length3;
                int i17 = iArr[i16];
                if (i17 == -1) {
                    return null;
                }
                if (obj2.equals(objArr[i17])) {
                    return objArr[i17 ^ 1];
                }
                iC3 = i16 + 1;
            }
        }
    }
}
