package androidx.datastore.core;

import kotlin.jvm.internal.Intrinsics;

public final class r extends v {

    private final Throwable f8316b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(Throwable readException, int i10) {
        super(i10, null);
        Intrinsics.h(readException, "readException");
        this.f8316b = readException;
    }

    public final Throwable b() {
        return this.f8316b;
    }
}
