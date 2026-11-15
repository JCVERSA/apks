package defpackage;

import io.reactivex.Scheduler;
import io.reactivex.internal.schedulers.ExecutorScheduler;
import io.reactivex.internal.schedulers.IoScheduler;
import io.reactivex.internal.schedulers.TrampolineScheduler;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

public abstract class k29 {
    public static final Scheduler a = yw8.h(new h());
    public static final Scheduler b = yw8.e(new b());
    public static final Scheduler c = yw8.f(new c());
    public static final Scheduler d = TrampolineScheduler.f();
    public static final Scheduler e = yw8.g(new f());

    public static final class a {
        public static final Scheduler a = new zd1();
    }

    public static final class b implements Callable {
        @Override
        public Scheduler call() {
            return a.a;
        }
    }

    public static final class c implements Callable {
        @Override
        public Scheduler call() {
            return d.a;
        }
    }

    public static final class d {
        public static final Scheduler a = new IoScheduler();
    }

    public static final class e {
        public static final Scheduler a = new n07();
    }

    public static final class f implements Callable {
        @Override
        public Scheduler call() {
            return e.a;
        }
    }

    public static final class g {
        public static final Scheduler a = new io.reactivex.internal.schedulers.b();
    }

    public static final class h implements Callable {
        @Override
        public Scheduler call() {
            return g.a;
        }
    }

    public static Scheduler a() {
        return yw8.r(b);
    }

    public static Scheduler b(Executor executor) {
        return new ExecutorScheduler(executor, false);
    }

    public static Scheduler c() {
        return yw8.t(c);
    }

    public static Scheduler d() {
        return yw8.u(e);
    }

    public static Scheduler e() {
        return yw8.w(a);
    }
}
