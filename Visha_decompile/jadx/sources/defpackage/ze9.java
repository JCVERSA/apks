package defpackage;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;

public abstract class ze9 extends ye9 {
    public static Set k(Set set, Iterable iterable) {
        y45.j(set, "<this>");
        y45.j(iterable, "elements");
        Collection<?> collectionE = d81.E(iterable);
        if (collectionE.isEmpty()) {
            return i81.g1(set);
        }
        if (!(collectionE instanceof Set)) {
            LinkedHashSet linkedHashSet = new LinkedHashSet(set);
            linkedHashSet.removeAll(collectionE);
            return linkedHashSet;
        }
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        for (Object obj : set) {
            if (!((Set) collectionE).contains(obj)) {
                linkedHashSet2.add(obj);
            }
        }
        return linkedHashSet2;
    }

    public static Set l(Set set, Object obj) {
        y45.j(set, "<this>");
        LinkedHashSet linkedHashSet = new LinkedHashSet(ky5.g(set.size()));
        boolean z = false;
        for (Object obj2 : set) {
            boolean z2 = true;
            if (!z && y45.e(obj2, obj)) {
                z = true;
                z2 = false;
            }
            if (z2) {
                linkedHashSet.add(obj2);
            }
        }
        return linkedHashSet;
    }

    public static Set m(Set set, Iterable iterable) {
        int size;
        y45.j(set, "<this>");
        y45.j(iterable, "elements");
        Integer numW = z71.w(iterable);
        if (numW != null) {
            size = set.size() + numW.intValue();
        } else {
            size = set.size() * 2;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(ky5.g(size));
        linkedHashSet.addAll(set);
        d81.C(linkedHashSet, iterable);
        return linkedHashSet;
    }

    public static Set n(Set set, Object obj) {
        y45.j(set, "<this>");
        LinkedHashSet linkedHashSet = new LinkedHashSet(ky5.g(set.size() + 1));
        linkedHashSet.addAll(set);
        linkedHashSet.add(obj);
        return linkedHashSet;
    }
}
