package androidx.room.support;

import kotlin.jvm.internal.Intrinsics;

public final class l implements z3.e.c {

    private final z3.e.c f14435a;

    private final AutoCloser f14436b;

    public l(z3.e.c delegate, AutoCloser autoCloser) {
        Intrinsics.h(delegate, "delegate");
        Intrinsics.h(autoCloser, "autoCloser");
        this.f14435a = delegate;
        this.f14436b = autoCloser;
    }

    @Override
    public AutoClosingRoomOpenHelper a(z3.e.b configuration) {
        Intrinsics.h(configuration, "configuration");
        return new AutoClosingRoomOpenHelper(this.f14435a.a(configuration), this.f14436b);
    }
}
