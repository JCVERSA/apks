package ar;

import java.util.LinkedHashSet;
import java.util.Set;

public final class e {

    public static final e f15430a = new e();

    private static final Set f15431b = new LinkedHashSet();

    private e() {
    }

    public final void a(String str) {
        if (str != null) {
            f15431b.remove(str);
        }
    }

    public final void b(String str) {
        if (str != null) {
            f15431b.add(str);
        }
    }
}
