package dg;

import io.reactivex.rxjava3.core.j;
import io.reactivex.rxjava3.core.m;
import io.reactivex.rxjava3.core.n;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    public static final d f59034a = new d();

    private d() {
    }

    public static final m d(j observable) {
        Intrinsics.h(observable, "observable");
        return observable.E(ey.a.c()).v(io.reactivex.rxjava3.android.schedulers.b.c());
    }

    public static final m f(j observable) {
        Intrinsics.h(observable, "observable");
        return observable.E(ey.a.c()).v(ey.a.c());
    }

    public final n c() {
        return new n() {
            @Override
            public final m a(j jVar) {
                return d.d(jVar);
            }
        };
    }

    public final n e() {
        return new n() {
            @Override
            public final m a(j jVar) {
                return d.f(jVar);
            }
        };
    }
}
