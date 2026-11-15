package defpackage;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public abstract class c81 extends b81 {
    public static void A(List list) {
        y45.j(list, "<this>");
        if (list.size() > 1) {
            Collections.sort(list);
        }
    }

    public static void B(List list, Comparator comparator) {
        y45.j(list, "<this>");
        y45.j(comparator, "comparator");
        if (list.size() > 1) {
            Collections.sort(list, comparator);
        }
    }
}
