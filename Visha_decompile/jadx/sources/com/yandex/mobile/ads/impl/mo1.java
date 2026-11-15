package com.yandex.mobile.ads.impl;

import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;

final class mo1<K, V> extends lk0<K, V> {
    static final lk0<Object, Object> h = new mo1(null, new Object[0], 0);
    private static final long serialVersionUID = 0;
    private final transient Object e;
    final transient Object[] f;
    private final transient int g;

    public static class a<K, V> extends mk0<Map.Entry<K, V>> {
        private final transient lk0<K, V> d;
        private final transient Object[] e;
        private final transient int f = 0;
        private final transient int g;

        public class C0322a extends kk0<Map.Entry<K, V>> {
            public C0322a() {
            }

            @Override
            public final boolean f() {
                return true;
            }

            @Override
            public final Object get(int i) {
                vj1.a(i, a.this.g);
                a aVar = a.this;
                int i2 = i * 2;
                Object obj = aVar.e[aVar.f + i2];
                Objects.requireNonNull(obj);
                a aVar2 = a.this;
                Object obj2 = aVar2.e[i2 + (aVar2.f ^ 1)];
                Objects.requireNonNull(obj2);
                return new AbstractMap.SimpleImmutableEntry(obj, obj2);
            }

            @Override
            public final int size() {
                return a.this.g;
            }
        }

        public a(lk0 lk0Var, Object[] objArr, int i) {
            this.d = lk0Var;
            this.e = objArr;
            this.g = i;
        }

        @Override
        public final int a(int i, Object[] objArr) {
            return b().a(i, objArr);
        }

        @Override
        public final boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            return value != null && value.equals(this.d.get(key));
        }

        @Override
        public final boolean f() {
            return true;
        }

        @Override
        public final kk0<Map.Entry<K, V>> g() {
            return new C0322a();
        }

        @Override
        public final i82<Map.Entry<K, V>> iterator() {
            return b().listIterator(0);
        }

        @Override
        public final int size() {
            return this.g;
        }
    }

    public static final class b<K> extends mk0<K> {
        private final transient lk0<K, ?> d;
        private final transient kk0<K> e;

        public b(lk0<K, ?> lk0Var, kk0<K> kk0Var) {
            this.d = lk0Var;
            this.e = kk0Var;
        }

        @Override
        public final int a(int i, Object[] objArr) {
            return this.e.a(i, objArr);
        }

        @Override
        public final kk0<K> b() {
            return this.e;
        }

        @Override
        public final boolean contains(Object obj) {
            return this.d.get(obj) != null;
        }

        @Override
        public final boolean f() {
            return true;
        }

        @Override
        public final i82<K> iterator() {
            return this.e.listIterator(0);
        }

        @Override
        public final int size() {
            return this.d.size();
        }
    }

    public static final class c extends kk0<Object> {
        private final transient Object[] e;
        private final transient int f;
        private final transient int g;

        public c(Object[] objArr, int i, int i2) {
            this.e = objArr;
            this.f = i;
            this.g = i2;
        }

        @Override
        public final boolean f() {
            return true;
        }

        @Override
        public final Object get(int i) {
            vj1.a(i, this.g);
            Object obj = this.e[(i * 2) + this.f];
            Objects.requireNonNull(obj);
            return obj;
        }

        @Override
        public final int size() {
            return this.g;
        }
    }

    private mo1(Object obj, Object[] objArr, int i) {
        this.e = obj;
        this.f = objArr;
        this.g = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v3, types: [int[]] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r8v0, types: [int] */
    public static <K, V> mo1<K, V> a(int i, Object[] objArr) {
        byte[] bArr;
        int i2;
        int i3;
        int i4;
        if (i == 0) {
            return (mo1) h;
        }
        ?? r0 = 0;
        int i5 = 0;
        if (i == 1) {
            Objects.requireNonNull(objArr[0]);
            Objects.requireNonNull(objArr[1]);
            return new mo1<>(null, objArr, 1);
        }
        vj1.b(i, objArr.length >> 1);
        int iA = mk0.a(i);
        if (i == 1) {
            Objects.requireNonNull(objArr[0]);
            Objects.requireNonNull(objArr[1]);
        } else {
            int i6 = iA - 1;
            if (iA <= 128) {
                bArr = new byte[iA];
                Arrays.fill(bArr, (byte) -1);
                while (i5 < i) {
                    int i7 = i5 * 2;
                    Object obj = objArr[i7];
                    Objects.requireNonNull(obj);
                    Object obj2 = objArr[i7 ^ 1];
                    Objects.requireNonNull(obj2);
                    int iA2 = jf0.a(obj.hashCode());
                    while (true) {
                        i4 = iA2 & i6;
                        int i8 = bArr[i4] & 255;
                        if (i8 == 255) {
                            break;
                        }
                        if (obj.equals(objArr[i8])) {
                            throw a(obj, obj2, objArr, i8);
                        }
                        iA2 = i4 + 1;
                    }
                    bArr[i4] = (byte) i7;
                    i5++;
                }
            } else if (iA <= 32768) {
                bArr = new short[iA];
                Arrays.fill(bArr, (short) -1);
                while (i5 < i) {
                    int i9 = i5 * 2;
                    Object obj3 = objArr[i9];
                    Objects.requireNonNull(obj3);
                    Object obj4 = objArr[i9 ^ 1];
                    Objects.requireNonNull(obj4);
                    int iA3 = jf0.a(obj3.hashCode());
                    while (true) {
                        i3 = iA3 & i6;
                        int i10 = bArr[i3] & 65535;
                        if (i10 == 65535) {
                            break;
                        }
                        if (obj3.equals(objArr[i10])) {
                            throw a(obj3, obj4, objArr, i10);
                        }
                        iA3 = i3 + 1;
                    }
                    bArr[i3] = (short) i9;
                    i5++;
                }
            } else {
                bArr = new int[iA];
                Arrays.fill((int[]) bArr, -1);
                while (i5 < i) {
                    int i11 = i5 * 2;
                    Object obj5 = objArr[i11];
                    Objects.requireNonNull(obj5);
                    Object obj6 = objArr[i11 ^ 1];
                    Objects.requireNonNull(obj6);
                    int iA4 = jf0.a(obj5.hashCode());
                    while (true) {
                        i2 = iA4 & i6;
                        ?? r8 = bArr[i2];
                        if (r8 == -1) {
                            break;
                        }
                        if (obj5.equals(objArr[r8])) {
                            throw a(obj5, obj6, objArr, r8);
                        }
                        iA4 = i2 + 1;
                    }
                    bArr[i2] = i11;
                    i5++;
                }
            }
            r0 = bArr;
        }
        return new mo1<>(r0, objArr, i);
    }

    @Override
    public final mk0<Map.Entry<K, V>> b() {
        return new a(this, this.f, this.g);
    }

    @Override
    public final mk0<K> c() {
        return new b(this, new c(this.f, 0, this.g));
    }

    @Override
    public final ik0<V> d() {
        return new c(this.f, 1, this.g);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x008d A[EDGE_INSN: B:43:0x008d->B:35:0x008d BREAK  A[LOOP:0: B:15:0x0036->B:21:0x004c], EDGE_INSN: B:45:0x008d->B:35:0x008d BREAK  A[LOOP:1: B:25:0x0061->B:31:0x0078], EDGE_INSN: B:47:0x008d->B:35:0x008d BREAK  A[LOOP:2: B:33:0x0087->B:42:0x009f]] */
    @Override
    public final V get(Object obj) {
        V v;
        Object obj2 = this.e;
        Object[] objArr = this.f;
        int i = this.g;
        if (obj == null) {
            v = null;
        } else if (i == 1) {
            Object obj3 = objArr[0];
            Objects.requireNonNull(obj3);
            if (obj3.equals(obj)) {
                v = (V) objArr[1];
                Objects.requireNonNull(v);
            } else {
                v = null;
            }
        } else if (obj2 == null) {
            v = null;
        } else if (obj2 instanceof byte[]) {
            byte[] bArr = (byte[]) obj2;
            int length = bArr.length - 1;
            int iA = jf0.a(obj.hashCode());
            while (true) {
                int i2 = iA & length;
                int i3 = bArr[i2] & 255;
                if (i3 == 255) {
                    break;
                }
                if (obj.equals(objArr[i3])) {
                    v = (V) objArr[i3 ^ 1];
                } else {
                    iA = i2 + 1;
                }
            }
            v = null;
        } else if (obj2 instanceof short[]) {
            short[] sArr = (short[]) obj2;
            int length2 = sArr.length - 1;
            int iA2 = jf0.a(obj.hashCode());
            while (true) {
                int i4 = iA2 & length2;
                int i5 = sArr[i4] & 65535;
                if (i5 == 65535) {
                    break;
                }
                if (obj.equals(objArr[i5])) {
                    v = (V) objArr[i5 ^ 1];
                } else {
                    iA2 = i4 + 1;
                }
            }
            v = null;
        } else {
            int[] iArr = (int[]) obj2;
            int length3 = iArr.length - 1;
            int iA3 = jf0.a(obj.hashCode());
            while (true) {
                int i6 = iA3 & length3;
                int i7 = iArr[i6];
                if (i7 == -1) {
                    break;
                }
                if (obj.equals(objArr[i7])) {
                    v = (V) objArr[i7 ^ 1];
                } else {
                    iA3 = i6 + 1;
                }
            }
            v = null;
        }
        if (v == null) {
            return null;
        }
        return v;
    }

    @Override
    public final int size() {
        return this.g;
    }

    private static IllegalArgumentException a(Object obj, Object obj2, Object[] objArr, int i) {
        return new IllegalArgumentException("Multiple entries with same key: " + obj + "=" + obj2 + " and " + objArr[i] + "=" + objArr[i ^ 1]);
    }
}
