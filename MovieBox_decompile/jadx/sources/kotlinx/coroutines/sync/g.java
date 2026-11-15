package kotlinx.coroutines.sync;

import kotlinx.coroutines.internal.z;

public abstract class g {

    private static final z f65017a = new z("NO_OWNER");

    private static final z f65018b = new z("ALREADY_LOCKED_BY_OWNER");

    public static final a a(boolean z10) {
        return new f(z10);
    }

    public static a b(boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return a(z10);
    }
}
