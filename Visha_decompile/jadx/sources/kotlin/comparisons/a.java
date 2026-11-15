package kotlin.comparisons;

import defpackage.e74;
import defpackage.y45;
import java.util.Comparator;
import kotlin.comparisons.a;

public abstract class a {
    public static Comparator b(final e74... e74VarArr) {
        y45.j(e74VarArr, "selectors");
        if (e74VarArr.length > 0) {
            return new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return a.c(e74VarArr, obj, obj2);
                }
            };
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    public static final int c(e74[] e74VarArr, Object obj, Object obj2) {
        return f(obj, obj2, e74VarArr);
    }

    public static int d(Comparable comparable, Comparable comparable2) {
        if (comparable == comparable2) {
            return 0;
        }
        if (comparable == null) {
            return -1;
        }
        if (comparable2 == null) {
            return 1;
        }
        return comparable.compareTo(comparable2);
    }

    public static int e(Object obj, Object obj2, e74... e74VarArr) {
        y45.j(e74VarArr, "selectors");
        if (e74VarArr.length > 0) {
            return f(obj, obj2, e74VarArr);
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    public static final int f(Object obj, Object obj2, e74[] e74VarArr) {
        for (e74 e74Var : e74VarArr) {
            int iD = d((Comparable) e74Var.invoke(obj), (Comparable) e74Var.invoke(obj2));
            if (iD != 0) {
                return iD;
            }
        }
        return 0;
    }

    public static Comparator g() {
        NaturalOrderComparator naturalOrderComparator = NaturalOrderComparator.INSTANCE;
        y45.h(naturalOrderComparator, "null cannot be cast to non-null type java.util.Comparator<T of kotlin.comparisons.ComparisonsKt__ComparisonsKt.naturalOrder>");
        return naturalOrderComparator;
    }

    public static Comparator h() {
        ReverseOrderComparator reverseOrderComparator = ReverseOrderComparator.INSTANCE;
        y45.h(reverseOrderComparator, "null cannot be cast to non-null type java.util.Comparator<T of kotlin.comparisons.ComparisonsKt__ComparisonsKt.reverseOrder>");
        return reverseOrderComparator;
    }
}
