package kotlin.io.path;

import java.nio.file.Path;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

final class h {

    private final Path f64297a;

    private final Object f64298b;

    private final h f64299c;

    private Iterator f64300d;

    public h(Path path, Object obj, h hVar) {
        Intrinsics.h(path, "path");
        this.f64297a = path;
        this.f64298b = obj;
        this.f64299c = hVar;
    }

    public final Iterator a() {
        return this.f64300d;
    }

    public final Object b() {
        return this.f64298b;
    }

    public final h c() {
        return this.f64299c;
    }

    public final Path d() {
        return this.f64297a;
    }

    public final void e(Iterator it) {
        this.f64300d = it;
    }
}
