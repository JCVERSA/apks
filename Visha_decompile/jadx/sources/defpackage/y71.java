package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.comparisons.a;

public abstract class y71 extends x71 {
    public static ArrayList g(Object... objArr) {
        y45.j(objArr, "elements");
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new cg(objArr, true));
    }

    public static final Collection h(Object[] objArr) {
        y45.j(objArr, "<this>");
        return new cg(objArr, false);
    }

    public static final int i(List list, Comparable comparable, int i, int i2) {
        y45.j(list, "<this>");
        s(list.size(), i, i2);
        int i3 = i2 - 1;
        while (i <= i3) {
            int i4 = (i + i3) >>> 1;
            int iD = a.d((Comparable) list.get(i4), comparable);
            if (iD < 0) {
                i = i4 + 1;
            } else {
                if (iD <= 0) {
                    return i4;
                }
                i3 = i4 - 1;
            }
        }
        return -(i + 1);
    }

    public static int j(List list, Comparable comparable, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = list.size();
        }
        return i(list, comparable, i, i2);
    }

    public static List k() {
        return EmptyList.INSTANCE;
    }

    public static u15 l(Collection collection) {
        y45.j(collection, "<this>");
        return new u15(0, collection.size() - 1);
    }

    public static int m(List list) {
        y45.j(list, "<this>");
        return list.size() - 1;
    }

    public static List n(Object... objArr) {
        y45.j(objArr, "elements");
        return objArr.length > 0 ? fi.f(objArr) : k();
    }

    public static List o(Object obj) {
        return obj != null ? x71.e(obj) : k();
    }

    public static List p(Object... objArr) {
        y45.j(objArr, "elements");
        return hi.S(objArr);
    }

    public static List q(Object... objArr) {
        y45.j(objArr, "elements");
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new cg(objArr, true));
    }

    public static final List r(List list) {
        y45.j(list, "<this>");
        int size = list.size();
        if (size != 0) {
            return size != 1 ? list : x71.e(list.get(0));
        }
        return k();
    }

    public static final void s(int i, int i2, int i3) {
        if (i2 > i3) {
            throw new IllegalArgumentException("fromIndex (" + i2 + ") is greater than toIndex (" + i3 + ").");
        }
        if (i2 < 0) {
            throw new IndexOutOfBoundsException("fromIndex (" + i2 + ") is less than zero.");
        }
        if (i3 <= i) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i3 + ") is greater than size (" + i + ").");
    }

    public static void t() {
        throw new ArithmeticException("Count overflow has happened.");
    }

    public static void u() {
        throw new ArithmeticException("Index overflow has happened.");
    }
}
