package defpackage;

import kotlinx.coroutines.sync.a;

public abstract class sw6 {
    public static final y7a a = new y7a("NO_OWNER");
    public static final y7a b = new y7a("ALREADY_LOCKED_BY_OWNER");

    public static final nw6 a(boolean z) {
        return new a(z);
    }

    public static nw6 b(boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return a(z);
    }
}
