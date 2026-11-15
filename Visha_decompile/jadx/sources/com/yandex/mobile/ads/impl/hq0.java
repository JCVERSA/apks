package com.yandex.mobile.ads.impl;

import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

public final class hq0 extends iq0 {

    public static class a extends AbstractList<Integer> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        final int[] b;
        final int c;
        final int d;

        public a(int i, int i2, int[] iArr) {
            this.b = iArr;
            this.c = i;
            this.d = i2;
        }

        public final int[] b() {
            return Arrays.copyOfRange(this.b, this.c, this.d);
        }

        @Override
        public final boolean contains(Object obj) {
            if (obj instanceof Integer) {
                int[] iArr = this.b;
                int iIntValue = ((Integer) obj).intValue();
                int i = this.d;
                for (int i2 = this.c; i2 < i; i2++) {
                    if (iArr[i2] == iIntValue) {
                        if (i2 != -1) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }

        @Override
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return super.equals(obj);
            }
            a aVar = (a) obj;
            int i = this.d - this.c;
            if (aVar.d - aVar.c != i) {
                return false;
            }
            for (int i2 = 0; i2 < i; i2++) {
                if (this.b[this.c + i2] != aVar.b[aVar.c + i2]) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public final Object get(int i) {
            vj1.a(i, this.d - this.c);
            return Integer.valueOf(this.b[this.c + i]);
        }

        @Override
        public final int hashCode() {
            int i = 1;
            for (int i2 = this.c; i2 < this.d; i2++) {
                i = (i * 31) + this.b[i2];
            }
            return i;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x001e  */
        @Override
        public final int indexOf(Object obj) {
            if (obj instanceof Integer) {
                int[] iArr = this.b;
                int iIntValue = ((Integer) obj).intValue();
                int i = this.c;
                int i2 = this.d;
                while (i < i2) {
                    if (iArr[i] != iIntValue) {
                        i++;
                    } else if (i >= 0) {
                        return i - this.c;
                    }
                }
                i = -1;
                if (i >= 0) {
                    return i - this.c;
                }
            }
            return -1;
        }

        @Override
        public final boolean isEmpty() {
            return false;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0020  */
        @Override
        public final int lastIndexOf(Object obj) {
            if (obj instanceof Integer) {
                int[] iArr = this.b;
                int iIntValue = ((Integer) obj).intValue();
                int i = this.c;
                int i2 = this.d - 1;
                while (i2 >= i) {
                    if (iArr[i2] != iIntValue) {
                        i2--;
                    } else if (i2 >= 0) {
                        return i2 - this.c;
                    }
                }
                i2 = -1;
                if (i2 >= 0) {
                    return i2 - this.c;
                }
            }
            return -1;
        }

        @Override
        public final Object set(int i, Object obj) {
            Integer num = (Integer) obj;
            vj1.a(i, this.d - this.c);
            int[] iArr = this.b;
            int i2 = this.c + i;
            int i3 = iArr[i2];
            num.getClass();
            iArr[i2] = num.intValue();
            return Integer.valueOf(i3);
        }

        @Override
        public final int size() {
            return this.d - this.c;
        }

        @Override
        public final List<Integer> subList(int i, int i2) {
            vj1.a(i, i2, this.d - this.c);
            if (i == i2) {
                return Collections.emptyList();
            }
            int[] iArr = this.b;
            int i3 = this.c;
            return new a(i + i3, i3 + i2, iArr);
        }

        @Override
        public final String toString() {
            StringBuilder sb = new StringBuilder((this.d - this.c) * 5);
            sb.append('[');
            sb.append(this.b[this.c]);
            int i = this.c;
            while (true) {
                i++;
                if (i >= this.d) {
                    sb.append(']');
                    return sb.toString();
                }
                sb.append(", ");
                sb.append(this.b[i]);
            }
        }
    }

    public static List<Integer> a(int... iArr) {
        return iArr.length == 0 ? Collections.emptyList() : new a(0, iArr.length, iArr);
    }

    public static int b(long j) {
        if (j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j;
    }

    public static int a(long j) {
        int i = (int) j;
        if (((long) i) == j) {
            return i;
        }
        throw new IllegalArgumentException(i32.a("Out of range: %s", Long.valueOf(j)));
    }

    public static int[] a(AbstractCollection abstractCollection) {
        if (abstractCollection instanceof a) {
            return ((a) abstractCollection).b();
        }
        Object[] array = abstractCollection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            Object obj = array[i];
            obj.getClass();
            iArr[i] = ((Number) obj).intValue();
        }
        return iArr;
    }
}
