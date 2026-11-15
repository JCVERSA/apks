package defpackage;

import kotlin.coroutines.d;

public final class ub1 implements wh1 {
    public static final ub1 b = new ub1();

    @Override
    public d getContext() {
        throw new IllegalStateException("This continuation is already complete");
    }

    @Override
    public void resumeWith(Object obj) {
        throw new IllegalStateException("This continuation is already complete");
    }

    public String toString() {
        return "This continuation is already complete";
    }
}
