package kotlin.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public class k extends j {
    public static int v(Iterable iterable, int i10) {
        Intrinsics.h(iterable, "<this>");
        return iterable instanceof Collection ? ((Collection) iterable).size() : i10;
    }

    public static final Integer w(Iterable iterable) {
        Intrinsics.h(iterable, "<this>");
        if (iterable instanceof Collection) {
            return Integer.valueOf(((Collection) iterable).size());
        }
        return null;
    }

    public static List x(Iterable iterable) {
        Intrinsics.h(iterable, "<this>");
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            CollectionsKt.B(arrayList, (Iterable) it.next());
        }
        return arrayList;
    }
}
