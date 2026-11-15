package kotlin.collections;

import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

public class z extends y {
    public static Set f() {
        return EmptySet.INSTANCE;
    }

    public static HashSet g(Object... elements) {
        Intrinsics.h(elements, "elements");
        return (HashSet) g.D0(elements, new HashSet(MapsKt.e(elements.length)));
    }

    public static Set h(Object... elements) {
        Intrinsics.h(elements, "elements");
        return (Set) g.D0(elements, new LinkedHashSet(MapsKt.e(elements.length)));
    }

    public static final Set i(Set set) {
        Intrinsics.h(set, "<this>");
        int size = set.size();
        if (size != 0) {
            return size != 1 ? set : SetsKt.d(set.iterator().next());
        }
        return SetsKt.f();
    }

    public static Set j(Object... elements) {
        Intrinsics.h(elements, "elements");
        return g.L0(elements);
    }
}
