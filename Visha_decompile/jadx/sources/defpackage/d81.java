package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.RandomAccess;

public abstract class d81 extends c81 {
    public static boolean C(Collection collection, Iterable iterable) {
        y45.j(collection, "<this>");
        y45.j(iterable, "elements");
        if (iterable instanceof Collection) {
            return collection.addAll((Collection) iterable);
        }
        Iterator it = iterable.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (collection.add(it.next())) {
                z = true;
            }
        }
        return z;
    }

    public static boolean D(Collection collection, Object[] objArr) {
        y45.j(collection, "<this>");
        y45.j(objArr, "elements");
        return collection.addAll(fi.f(objArr));
    }

    public static final Collection E(Iterable iterable) {
        y45.j(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            iterable = i81.b1(iterable);
        }
        return (Collection) iterable;
    }

    public static final boolean F(Iterable iterable, e74 e74Var, boolean z) {
        Iterator it = iterable.iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            if (((Boolean) e74Var.invoke(it.next())).booleanValue() == z) {
                it.remove();
                z2 = true;
            }
        }
        return z2;
    }

    public static final boolean G(List list, e74 e74Var, boolean z) {
        int i;
        if (!(list instanceof RandomAccess)) {
            y45.h(list, "null cannot be cast to non-null type kotlin.collections.MutableIterable<T of kotlin.collections.CollectionsKt__MutableCollectionsKt.filterInPlace>");
            return F(ccb.b(list), e74Var, z);
        }
        int iM = y71.m(list);
        if (iM >= 0) {
            int i2 = 0;
            i = 0;
            while (true) {
                Object obj = list.get(i2);
                if (((Boolean) e74Var.invoke(obj)).booleanValue() != z) {
                    if (i != i2) {
                        list.set(i, obj);
                    }
                    i++;
                }
                if (i2 == iM) {
                    break;
                }
                i2++;
            }
        } else {
            i = 0;
        }
        if (i >= list.size()) {
            return false;
        }
        int iM2 = y71.m(list);
        if (i > iM2) {
            return true;
        }
        while (true) {
            list.remove(iM2);
            if (iM2 == i) {
                return true;
            }
            iM2--;
        }
    }

    public static boolean H(Iterable iterable, e74 e74Var) {
        y45.j(iterable, "<this>");
        y45.j(e74Var, "predicate");
        return F(iterable, e74Var, true);
    }

    public static boolean I(List list, e74 e74Var) {
        y45.j(list, "<this>");
        y45.j(e74Var, "predicate");
        return G(list, e74Var, true);
    }

    public static Object J(List list) {
        y45.j(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.remove(y71.m(list));
    }

    public static Object K(List list) {
        y45.j(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.remove(y71.m(list));
    }

    public static boolean L(Iterable iterable, e74 e74Var) {
        y45.j(iterable, "<this>");
        y45.j(e74Var, "predicate");
        return F(iterable, e74Var, false);
    }

    public static final boolean M(Collection collection, Iterable iterable) {
        y45.j(collection, "<this>");
        y45.j(iterable, "elements");
        return collection.retainAll(E(iterable));
    }

    public static boolean N(List list, e74 e74Var) {
        y45.j(list, "<this>");
        y45.j(e74Var, "predicate");
        return G(list, e74Var, false);
    }
}
