package ey;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.schedulers.IoScheduler;
import io.reactivex.rxjava3.internal.schedulers.TrampolineScheduler;
import java.util.concurrent.Executor;
import yx.k;

public abstract class a {

    static final Scheduler f59854a = dy.a.i(new h());

    static final Scheduler f59855b = dy.a.f(new b());

    static final Scheduler f59856c = dy.a.g(new c());

    static final Scheduler f59857d = TrampolineScheduler.g();

    static final Scheduler f59858e = dy.a.h(new f());

    static final class C0727a {

        static final Scheduler f59859a = new io.reactivex.rxjava3.internal.schedulers.a();
    }

    static final class b implements k {
        b() {
        }

        @Override
        public Scheduler get() {
            return C0727a.f59859a;
        }
    }

    static final class c implements k {
        c() {
        }

        @Override
        public Scheduler get() {
            return d.f59860a;
        }
    }

    static final class d {

        static final Scheduler f59860a = new IoScheduler();
    }

    static final class e {

        static final Scheduler f59861a = new io.reactivex.rxjava3.internal.schedulers.d();
    }

    static final class f implements k {
        f() {
        }

        @Override
        public Scheduler get() {
            return e.f59861a;
        }
    }

    static final class g {

        static final Scheduler f59862a = new io.reactivex.rxjava3.internal.schedulers.h();
    }

    static final class h implements k {
        h() {
        }

        @Override
        public Scheduler get() {
            return g.f59862a;
        }
    }

    public static Scheduler a(Executor executor) {
        return b(executor, false, false);
    }

    public static Scheduler b(Executor executor, boolean z10, boolean z11) {
        return dy.a.e(executor, z10, z11);
    }

    public static Scheduler c() {
        return dy.a.s(f59856c);
    }

    public static Scheduler d() {
        return dy.a.u(f59854a);
    }
}
