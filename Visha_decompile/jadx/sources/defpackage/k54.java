package defpackage;

import java.util.Comparator;
import java.util.SortedMap;

public abstract class k54 extends a54 implements SortedMap {
    public static int f(Comparator comparator, Object obj, Object obj2) {
        return comparator == null ? ((Comparable) obj).compareTo(obj2) : comparator.compare(obj, obj2);
    }
}
