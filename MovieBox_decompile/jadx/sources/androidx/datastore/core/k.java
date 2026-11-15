package androidx.datastore.core;

import kotlin.jvm.internal.Intrinsics;

public final class k extends v {

    private final Throwable f8307b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(Throwable finalException) {
        super(Integer.MAX_VALUE, null);
        Intrinsics.h(finalException, "finalException");
        this.f8307b = finalException;
    }

    public final Throwable b() {
        return this.f8307b;
    }
}
