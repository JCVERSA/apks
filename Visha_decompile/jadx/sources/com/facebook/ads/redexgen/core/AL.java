package com.facebook.ads.redexgen.core;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public final class AL<K, V> extends AbstractC2183mj<K, V> {
    public static String[] A03 = {"BLd", "8EKeVjTJIU6MDNPM6ZTo", "HWbOsw9VtzWta1ewMSd8SFleZB3uycJV", "4g", "oHZcZe8PYtJP7zuLK1jInYJjmOVWCxEe", "hqSXyAZ2zuGNDHd4PkKakj6NBzhfvhom", "1gwnz8jAk7EqAxYvZHDnpar6edM6d04", "wfrdBhaNwCqY"};
    public static final AbstractC2183mj<Object, Object> A04 = new AL(null, new Object[0], 0);
    public static final long serialVersionUID = 0;
    public final transient Object[] A00;
    public final transient int A01;

    @CheckForNull
    public final transient Object A02;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static <K, V> AL<K, V> A00(int n, Object[] alternatingKeysAndValues, C2181mh<K, V> builder) {
        Object obj;
        if (n == 0) {
            return (AL) A04;
        }
        if (n == 1) {
            AbstractC2124ll.A03(Objects.requireNonNull(alternatingKeysAndValues[0]), Objects.requireNonNull(alternatingKeysAndValues[1]));
            return new AL<>(null, alternatingKeysAndValues, 1);
        }
        AbstractC1977jA.A01(n, alternatingKeysAndValues.length >> 1);
        Object objA02 = A02(alternatingKeysAndValues, n, AbstractC0778Al.A03(n), 0);
        if (objA02 instanceof Object[]) {
            Object[] objArr = (Object[]) objA02;
            C2180mg c2180mg = (C2180mg) objArr[2];
            if (builder == null) {
                throw c2180mg.A02();
            }
            builder.A01 = c2180mg;
            obj = objArr[0];
            n = ((Integer) objArr[1]).intValue();
            alternatingKeysAndValues = Arrays.copyOf(alternatingKeysAndValues, n * 2);
        } else {
            obj = objA02;
        }
        return new AL<>(obj, alternatingKeysAndValues, n);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.AL != com.google.common.collect.RegularImmutableMap<K, V> */
    public AL(@CheckForNull Object hashTable, Object[] alternatingKeysAndValues, int size) {
        this.A02 = hashTable;
        this.A00 = alternatingKeysAndValues;
        this.A01 = size;
    }

    @CheckForNull
    public static Object A01(@CheckForNull Object hashTableObject, @CheckForNull Object[] alternatingKeysAndValues, int size, int keyOffset, Object key) {
        int keyIndex;
        if (key == null) {
            return null;
        }
        if (size == 1) {
            if (!Objects.requireNonNull(alternatingKeysAndValues[keyOffset]).equals(key)) {
                return null;
            }
            Object obj = alternatingKeysAndValues[keyOffset ^ 1];
            if (A03[3].length() == 2) {
                String[] strArr = A03;
                strArr[4] = "QVSrtcZKARogVSSTsDMErisHHhx3s08I";
                strArr[2] = "AM5zanCyyloF9oZfJSoNtkvSUtakyhf1";
                return Objects.requireNonNull(obj);
            }
        } else {
            if (hashTableObject == null) {
                return null;
            }
            if (hashTableObject instanceof byte[]) {
                String[] strArr2 = A03;
                if (strArr2[4].charAt(30) != strArr2[2].charAt(30)) {
                    String[] strArr3 = A03;
                    strArr3[0] = "33E";
                    strArr3[7] = "0IVWz8DDpNA7";
                    byte[] bArr = (byte[]) hashTableObject;
                    int mask = bArr.length - 1;
                    int iA00 = AbstractC2168mU.A00(key.hashCode());
                    while (true) {
                        int i = iA00 & mask;
                        int i2 = bArr[i];
                        String[] strArr4 = A03;
                        if (strArr4[0].length() == strArr4[7].length()) {
                            throw new RuntimeException();
                        }
                        String[] strArr5 = A03;
                        strArr5[4] = "Av4xGd01JYXCpVUXSFBX5Q3qG21nzo21";
                        strArr5[2] = "UuPO1t2w2j7pNt6wRWMrea5HC47YMJTH";
                        keyIndex = i2 & 255;
                        if (keyIndex == 255) {
                            return null;
                        }
                        boolean zEquals = key.equals(alternatingKeysAndValues[keyIndex]);
                        String[] strArr6 = A03;
                        if (strArr6[0].length() != strArr6[7].length()) {
                            A03[6] = "uEfKnUldtWRHisqrfIDf4ni9PGEoRP0";
                            if (zEquals) {
                                break;
                            }
                            iA00 = i + 1;
                        } else {
                            A03[1] = "rg32th7lbb1pJpYlIRnh";
                            if (zEquals) {
                                break;
                            }
                            iA00 = i + 1;
                        }
                    }
                    Object obj2 = alternatingKeysAndValues[keyIndex ^ 1];
                    if (A03[1].length() != 20) {
                        return obj2;
                    }
                    A03[1] = "OPXdJDLfRI5AGRwdD0N1";
                    return obj2;
                }
            } else if (hashTableObject instanceof short[]) {
                short[] sArr = (short[]) hashTableObject;
                int mask2 = sArr.length - 1;
                int iA01 = AbstractC2168mU.A00(key.hashCode());
                while (true) {
                    int i3 = iA01 & mask2;
                    int h = sArr[i3] & 65535;
                    if (h == 65535) {
                        return null;
                    }
                    if (key.equals(alternatingKeysAndValues[h])) {
                        return alternatingKeysAndValues[h ^ 1];
                    }
                    iA01 = i3 + 1;
                }
            } else {
                int[] iArr = (int[]) hashTableObject;
                int mask3 = iArr.length - 1;
                int iA02 = AbstractC2168mU.A00(key.hashCode());
                while (true) {
                    int i4 = iA02 & mask3;
                    int h2 = iArr[i4];
                    if (h2 == -1) {
                        return null;
                    }
                    if (key.equals(alternatingKeysAndValues[h2])) {
                        return alternatingKeysAndValues[h2 ^ 1];
                    }
                    iA02 = i4 + 1;
                }
            }
        }
        throw new RuntimeException();
    }

    @CheckForNull
    public static Object A02(Object[] alternatingKeysAndValues, int n, int tableSize, int keyOffset) {
        if (n == 1) {
            AbstractC2124ll.A03(Objects.requireNonNull(alternatingKeysAndValues[keyOffset]), Objects.requireNonNull(alternatingKeysAndValues[keyOffset ^ 1]));
            return null;
        }
        int h = tableSize - 1;
        C2180mg c2180mg = null;
        int i = -1;
        if (tableSize > 128) {
            if (tableSize <= 32768) {
                short[] hashTable = new short[tableSize];
                Arrays.fill(hashTable, (short) -1);
                int keyIndex = 0;
                for (int i2 = 0; i2 < n; i2++) {
                    int i3 = (i2 * 2) + keyOffset;
                    int h2 = (keyIndex * 2) + keyOffset;
                    Object value = Objects.requireNonNull(alternatingKeysAndValues[i3]);
                    Object objRequireNonNull = Objects.requireNonNull(alternatingKeysAndValues[i3 ^ 1]);
                    AbstractC2124ll.A03(value, objRequireNonNull);
                    int iA00 = AbstractC2168mU.A00(value.hashCode());
                    while (true) {
                        int i4 = iA00 & h;
                        int i5 = hashTable[i4] & 65535;
                        if (i5 == 65535) {
                            hashTable[i4] = (short) h2;
                            if (keyIndex < i2) {
                                alternatingKeysAndValues[h2] = value;
                                alternatingKeysAndValues[h2 ^ 1] = objRequireNonNull;
                            }
                            keyIndex++;
                            break;
                        }
                        boolean zEquals = value.equals(alternatingKeysAndValues[i5]);
                        if (A03[5].charAt(16) != 'P') {
                            throw new RuntimeException();
                        }
                        A03[5] = "XeR3XdSVagosh0VhP9e0zQ2n8NaTx8OB";
                        if (zEquals) {
                            c2180mg = new C2180mg(value, objRequireNonNull, Objects.requireNonNull(alternatingKeysAndValues[i5 ^ 1]));
                            alternatingKeysAndValues[i5 ^ 1] = objRequireNonNull;
                            break;
                        }
                        iA00 = i4 + 1;
                    }
                }
                return keyIndex == n ? hashTable : new Object[]{hashTable, Integer.valueOf(keyIndex), c2180mg};
            }
            int[] hashTable2 = new int[tableSize];
            Arrays.fill(hashTable2, -1);
            int i6 = 0;
            int i7 = 0;
            while (i7 < n) {
                int i8 = (i7 * 2) + keyOffset;
                int i9 = (i6 * 2) + keyOffset;
                Object objRequireNonNull2 = Objects.requireNonNull(alternatingKeysAndValues[i8]);
                Object objRequireNonNull3 = Objects.requireNonNull(alternatingKeysAndValues[i8 ^ 1]);
                AbstractC2124ll.A03(objRequireNonNull2, objRequireNonNull3);
                int outKeyIndex = AbstractC2168mU.A00(objRequireNonNull2.hashCode());
                while (true) {
                    int outKeyIndex2 = outKeyIndex & h;
                    int i10 = hashTable2[outKeyIndex2];
                    if (i10 == i) {
                        hashTable2[outKeyIndex2] = i9;
                        if (i6 < i7) {
                            alternatingKeysAndValues[i9] = objRequireNonNull2;
                            alternatingKeysAndValues[i9 ^ 1] = objRequireNonNull3;
                        }
                        i6++;
                        break;
                    }
                    if (objRequireNonNull2.equals(alternatingKeysAndValues[i10])) {
                        c2180mg = new C2180mg(objRequireNonNull2, objRequireNonNull3, Objects.requireNonNull(alternatingKeysAndValues[i10 ^ 1]));
                        alternatingKeysAndValues[i10 ^ 1] = objRequireNonNull3;
                        break;
                    }
                    outKeyIndex = outKeyIndex2 + 1;
                    i = -1;
                }
                i7++;
                i = -1;
            }
            return i6 == n ? hashTable2 : new Object[]{hashTable2, Integer.valueOf(i6), c2180mg};
        }
        byte[] bArr = new byte[tableSize];
        Arrays.fill(bArr, (byte) -1);
        int i11 = 0;
        for (int i12 = 0; i12 < n; i12++) {
            int i13 = (i12 * 2) + keyOffset;
            int i14 = (i11 * 2) + keyOffset;
            Object objRequireNonNull4 = Objects.requireNonNull(alternatingKeysAndValues[i13]);
            Object objRequireNonNull5 = Objects.requireNonNull(alternatingKeysAndValues[i13 ^ 1]);
            AbstractC2124ll.A03(objRequireNonNull4, objRequireNonNull5);
            int keyIndex2 = AbstractC2168mU.A00(objRequireNonNull4.hashCode());
            while (true) {
                int keyIndex3 = keyIndex2 & h;
                int previousKeyIndex = bArr[keyIndex3] & 255;
                if (previousKeyIndex == 255) {
                    bArr[keyIndex3] = (byte) i14;
                    if (i11 < i12) {
                        alternatingKeysAndValues[i14] = objRequireNonNull4;
                        alternatingKeysAndValues[i14 ^ 1] = objRequireNonNull5;
                    }
                    i11++;
                    break;
                }
                if (objRequireNonNull4.equals(alternatingKeysAndValues[previousKeyIndex])) {
                    c2180mg = new C2180mg(objRequireNonNull4, objRequireNonNull5, Objects.requireNonNull(alternatingKeysAndValues[previousKeyIndex ^ 1]));
                    alternatingKeysAndValues[previousKeyIndex ^ 1] = objRequireNonNull5;
                    break;
                }
                keyIndex2 = keyIndex3 + 1;
            }
        }
        return i11 == n ? bArr : new Object[]{bArr, Integer.valueOf(i11), c2180mg};
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.AL != com.google.common.collect.RegularImmutableMap<K, V> */
    @Override
    public final AbstractC2174ma<V> A0A() {
        return new C1X(this.A00, 1, this.A01);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.AL != com.google.common.collect.RegularImmutableMap<K, V> */
    @Override
    public final AbstractC0778Al<Map.Entry<K, V>> A0D() {
        return new C1Z(this, this.A00, 0, this.A01);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.AL != com.google.common.collect.RegularImmutableMap<K, V> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Am != com.google.common.collect.ImmutableList<K> */
    @Override
    public final AbstractC0778Al<K> A0E() {
        final C1X c1x = new C1X(this.A00, 0, this.A01);
        return new AbstractC0778Al<K>(this, c1x) {
            public final transient AbstractC0779Am<K> A00;
            public final transient AbstractC2183mj<K, ?> A01;

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1Y != com.google.common.collect.RegularImmutableMap$KeySet<K> */
            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Am != com.google.common.collect.ImmutableList<K> */
            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.mj != com.google.common.collect.ImmutableMap<K, ?> */
            {
                this.A01 = this;
                this.A00 = c1x;
            }

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1Y != com.google.common.collect.RegularImmutableMap$KeySet<K> */
            @Override
            public final int A0I(Object[] dst, int offset) {
                return A0J().A0I(dst, offset);
            }

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1Y != com.google.common.collect.RegularImmutableMap$KeySet<K> */
            @Override
            public final AbstractC0779Am<K> A0J() {
                return this.A00;
            }

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1Y != com.google.common.collect.RegularImmutableMap$KeySet<K> */
            @Override
            public final boolean A0K() {
                return true;
            }

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1Y != com.google.common.collect.RegularImmutableMap$KeySet<K> */
            @Override
            public final AbstractC2346pg<K> iterator() {
                return A0J().iterator();
            }

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1Y != com.google.common.collect.RegularImmutableMap$KeySet<K> */
            @Override
            public final boolean contains(@CheckForNull Object object) {
                return this.A01.get(object) != null;
            }

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1Y != com.google.common.collect.RegularImmutableMap$KeySet<K> */
            @Override
            public final int size() {
                return this.A01.size();
            }
        };
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.AL != com.google.common.collect.RegularImmutableMap<K, V> */
    @Override
    public final boolean A0F() {
        return false;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.AL != com.google.common.collect.RegularImmutableMap<K, V> */
    @Override
    @CheckForNull
    public final V get(@CheckForNull Object obj) {
        V v = (V) A01(this.A02, this.A00, this.A01, 0, obj);
        if (v == null) {
            return null;
        }
        return v;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.AL != com.google.common.collect.RegularImmutableMap<K, V> */
    @Override
    public final int size() {
        return this.A01;
    }
}
