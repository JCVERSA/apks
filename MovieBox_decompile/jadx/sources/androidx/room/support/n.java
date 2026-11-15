package androidx.room.support;

import java.io.File;
import java.util.concurrent.Callable;
import kotlin.jvm.internal.Intrinsics;

public final class n implements z3.e.c {

    private final String f14446a;

    private final File f14447b;

    private final Callable f14448c;

    private final z3.e.c f14449d;

    public n(String str, File file, Callable callable, z3.e.c delegate) {
        Intrinsics.h(delegate, "delegate");
        this.f14446a = str;
        this.f14447b = file;
        this.f14448c = callable;
        this.f14449d = delegate;
    }

    @Override
    public z3.e a(z3.e.b configuration) {
        Intrinsics.h(configuration, "configuration");
        return new m(configuration.f76616a, this.f14446a, this.f14447b, this.f14448c, configuration.f76618c.f76614a, this.f14449d.a(configuration));
    }
}
