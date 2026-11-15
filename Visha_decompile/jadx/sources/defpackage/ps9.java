package defpackage;

import com.google.common.collect.Ordering;
import java.util.Comparator;
import java.util.SortedSet;

public abstract class ps9 {
    public static Comparator a(SortedSet sortedSet) {
        Comparator comparator = sortedSet.comparator();
        return comparator == null ? Ordering.natural() : comparator;
    }

    public static boolean b(Comparator comparator, Iterable iterable) {
        Comparator comparator2;
        xd8.o(comparator);
        xd8.o(iterable);
        if (iterable instanceof SortedSet) {
            comparator2 = a((SortedSet) iterable);
        } else {
            if (!(iterable instanceof os9)) {
                return false;
            }
            comparator2 = ((os9) iterable).comparator();
        }
        return comparator.equals(comparator2);
    }
}
