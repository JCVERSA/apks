package kotlin.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

public class j extends i {
    public static ArrayList h(Object... elements) {
        Intrinsics.h(elements, "elements");
        return elements.length == 0 ? new ArrayList() : new ArrayList(new c(elements, true));
    }

    public static final Collection i(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        return new c(objArr, false);
    }

    public static final int j(List list, Comparable comparable, int i10, int i11) {
        Intrinsics.h(list, "<this>");
        s(list.size(), i10, i11);
        int i12 = i11 - 1;
        while (i10 <= i12) {
            int i13 = (i10 + i12) >>> 1;
            int iD = ComparisonsKt.d((Comparable) list.get(i13), comparable);
            if (iD < 0) {
                i10 = i13 + 1;
            } else {
                if (iD <= 0) {
                    return i13;
                }
                i12 = i13 - 1;
            }
        }
        return -(i10 + 1);
    }

    public static int k(List list, Comparable comparable, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = list.size();
        }
        return j(list, comparable, i10, i11);
    }

    public static List l() {
        return EmptyList.INSTANCE;
    }

    public static IntRange m(Collection collection) {
        Intrinsics.h(collection, "<this>");
        return new IntRange(0, collection.size() - 1);
    }

    public static int n(List list) {
        Intrinsics.h(list, "<this>");
        return list.size() - 1;
    }

    public static List o(Object... elements) {
        Intrinsics.h(elements, "elements");
        return elements.length > 0 ? ArraysKt.g(elements) : CollectionsKt.l();
    }

    public static List p(Object... elements) {
        Intrinsics.h(elements, "elements");
        return ArraysKt.P(elements);
    }

    public static List q(Object... elements) {
        Intrinsics.h(elements, "elements");
        return elements.length == 0 ? new ArrayList() : new ArrayList(new c(elements, true));
    }

    public static final List r(List list) {
        Intrinsics.h(list, "<this>");
        int size = list.size();
        if (size != 0) {
            return size != 1 ? list : CollectionsKt.e(list.get(0));
        }
        return CollectionsKt.l();
    }

    private static final void s(int i10, int i11, int i12) {
        if (i11 > i12) {
            throw new IllegalArgumentException("fromIndex (" + i11 + ") is greater than toIndex (" + i12 + ").");
        }
        if (i11 < 0) {
            throw new IndexOutOfBoundsException("fromIndex (" + i11 + ") is less than zero.");
        }
        if (i12 <= i10) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i12 + ") is greater than size (" + i10 + ").");
    }

    public static void t() {
        throw new ArithmeticException("Count overflow has happened.");
    }

    public static void u() {
        throw new ArithmeticException("Index overflow has happened.");
    }
}
