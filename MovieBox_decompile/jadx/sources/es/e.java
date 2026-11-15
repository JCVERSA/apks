package es;

import java.util.LinkedHashSet;
import java.util.Set;

public final class e {

    public static final e f59811a = new e();

    private static final Set f59812b = new LinkedHashSet();

    private e() {
    }

    public final void a(String str) {
        if (str != null) {
            f59812b.remove(str);
        }
    }

    public final void b(String str) {
        if (str != null) {
            f59812b.add(str);
        }
    }
}
