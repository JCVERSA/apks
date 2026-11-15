package defpackage;

import java.util.Comparator;
import java.util.Map;
import java.util.TreeMap;

public final class c5i extends g5i {
    public final Comparator a;

    public c5i(Comparator comparator) {
        this.a = comparator;
    }

    @Override
    public final Map a() {
        return new TreeMap(this.a);
    }
}
