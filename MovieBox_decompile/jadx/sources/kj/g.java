package kj;

import java.util.LinkedHashSet;
import java.util.Set;

public final class g {

    public static final g f64029a = new g();

    private static final Set f64030b = new LinkedHashSet();

    private g() {
    }

    public final void a(String str) {
        if (str != null) {
            f64030b.remove(str);
        }
    }

    public final void b(String str) {
        if (str != null) {
            f64030b.add(str);
        }
    }
}
