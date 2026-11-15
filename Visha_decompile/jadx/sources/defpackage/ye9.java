package defpackage;

import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.EmptySet;

public abstract class ye9 extends xe9 {
    public static Set f() {
        return EmptySet.INSTANCE;
    }

    public static LinkedHashSet g(Object... objArr) {
        y45.j(objArr, "elements");
        return (LinkedHashSet) hi.Q0(objArr, new LinkedHashSet(ky5.g(objArr.length)));
    }

    public static Set h(Object... objArr) {
        y45.j(objArr, "elements");
        return (Set) hi.Q0(objArr, new LinkedHashSet(ky5.g(objArr.length)));
    }

    public static final Set i(Set set) {
        y45.j(set, "<this>");
        int size = set.size();
        if (size != 0) {
            return size != 1 ? set : xe9.d(set.iterator().next());
        }
        return f();
    }

    public static Set j(Object... objArr) {
        y45.j(objArr, "elements");
        return hi.p1(objArr);
    }
}
