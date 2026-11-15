package defpackage;

import java.util.List;

public abstract class e81 extends d81 {
    public static List R(List list) {
        y45.j(list, "<this>");
        return new bv8(list);
    }

    public static final int S(List list, int i) {
        if (i >= 0 && i <= y71.m(list)) {
            return y71.m(list) - i;
        }
        throw new IndexOutOfBoundsException("Element index " + i + " must be in range [" + new u15(0, y71.m(list)) + "].");
    }

    public static final int T(List list, int i) {
        return y71.m(list) - i;
    }

    public static final int U(List list, int i) {
        if (i >= 0 && i <= list.size()) {
            return list.size() - i;
        }
        throw new IndexOutOfBoundsException("Position index " + i + " must be in range [" + new u15(0, list.size()) + "].");
    }
}
