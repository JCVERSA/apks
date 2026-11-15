package kotlin.collections;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

public class o extends n {
    public static List T(List list) {
        Intrinsics.h(list, "<this>");
        return new ReversedListReadOnly(list);
    }

    public static List U(List list) {
        Intrinsics.h(list, "<this>");
        return new ReversedList(list);
    }

    public static final int V(List list, int i10) {
        if (i10 >= 0 && i10 <= CollectionsKt.n(list)) {
            return CollectionsKt.n(list) - i10;
        }
        throw new IndexOutOfBoundsException("Element index " + i10 + " must be in range [" + new IntRange(0, CollectionsKt.n(list)) + "].");
    }

    public static final int W(List list, int i10) {
        return CollectionsKt.n(list) - i10;
    }

    public static final int X(List list, int i10) {
        if (i10 >= 0 && i10 <= list.size()) {
            return list.size() - i10;
        }
        throw new IndexOutOfBoundsException("Position index " + i10 + " must be in range [" + new IntRange(0, list.size()) + "].");
    }
}
