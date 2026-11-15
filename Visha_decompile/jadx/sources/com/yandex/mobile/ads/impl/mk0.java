package com.yandex.mobile.ads.impl;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;

public abstract class mk0<E> extends ik0<E> implements Set<E> {
    private transient kk0<E> c;

    public static class a implements Serializable {
        private static final long serialVersionUID = 0;
        final Object[] b;

        public a(Object[] objArr) {
            this.b = objArr;
        }

        public Object readResolve() {
            return mk0.a(this.b);
        }
    }

    public static int a(int i) {
        int iMax = Math.max(i, 2);
        if (iMax >= 751619276) {
            if (iMax < 1073741824) {
                return 1073741824;
            }
            throw new IllegalArgumentException("collection too large");
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
        while (((double) iHighestOneBit) * 0.7d < iMax) {
            iHighestOneBit <<= 1;
        }
        return iHighestOneBit;
    }

    @Override
    public kk0<E> b() {
        kk0<E> kk0Var = this.c;
        if (kk0Var != null) {
            return kk0Var;
        }
        kk0<E> kk0VarG = g();
        this.c = kk0VarG;
        return kk0VarG;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof mk0) && (this instanceof no1)) {
            mk0 mk0Var = (mk0) obj;
            mk0Var.getClass();
            if ((mk0Var instanceof no1) && hashCode() != obj.hashCode()) {
                return false;
            }
        }
        return wx1.a(this, obj);
    }

    public kk0<E> g() {
        Object[] array = toArray();
        int i = kk0.d;
        return kk0.b(array.length, array);
    }

    @Override
    public int hashCode() {
        return wx1.a(this);
    }

    @Override
    public Iterator iterator() {
        return iterator();
    }

    @Override
    public Object writeReplace() {
        return new a(toArray());
    }

    private static <E> mk0<E> b(int i, Object... objArr) {
        if (i == 0) {
            return no1.j;
        }
        if (i != 1) {
            int iA = a(i);
            Object[] objArr2 = new Object[iA];
            int i2 = iA - 1;
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                Object obj = objArr[i5];
                if (obj != null) {
                    int iHashCode = obj.hashCode();
                    int iA2 = jf0.a(iHashCode);
                    while (true) {
                        int i6 = iA2 & i2;
                        Object obj2 = objArr2[i6];
                        if (obj2 == null) {
                            objArr[i4] = obj;
                            objArr2[i6] = obj;
                            i3 += iHashCode;
                            i4++;
                            break;
                        }
                        if (obj2.equals(obj)) {
                            break;
                        }
                        iA2++;
                    }
                } else {
                    throw new NullPointerException(oe.a("at index ", i5));
                }
            }
            Arrays.fill(objArr, i4, i, (Object) null);
            if (i4 == 1) {
                Object obj3 = objArr[0];
                Objects.requireNonNull(obj3);
                return new ez1(obj3);
            }
            if (a(i4) < iA / 2) {
                return b(i4, objArr);
            }
            int length = objArr.length;
            if (i4 < (length >> 1) + (length >> 2)) {
                objArr = Arrays.copyOf(objArr, i4);
            }
            return new no1(objArr, i3, objArr2, i2, i4);
        }
        Object obj4 = objArr[0];
        Objects.requireNonNull(obj4);
        return new ez1(obj4);
    }

    public static mk0 a(Set set) {
        if ((set instanceof mk0) && !(set instanceof SortedSet)) {
            mk0 mk0Var = (mk0) set;
            if (!mk0Var.f()) {
                return mk0Var;
            }
        }
        Object[] array = set.toArray();
        return b(array.length, array);
    }

    public static <E> mk0<E> a(E[] eArr) {
        int length = eArr.length;
        if (length == 0) {
            return no1.j;
        }
        if (length != 1) {
            return b(eArr.length, (Object[]) eArr.clone());
        }
        return new ez1(eArr[0]);
    }

    public static mk0 a(String str, String str2) {
        return b(2, str, str2);
    }

    public static mk0 a(String str, String str2, String str3) {
        return b(3, str, str2, str3);
    }
}
