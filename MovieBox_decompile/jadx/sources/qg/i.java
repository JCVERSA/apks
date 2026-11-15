package qg;

import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;

public final class i implements og.b, og.a {

    private og.b f69649a;

    private Executor f69650b;

    private og.a f69651c;

    public i(og.b bVar, Executor executor, og.a aVar) {
        this.f69649a = bVar;
        this.f69650b = executor;
        this.f69651c = aVar;
    }

    public static final void i(i iVar, String str) {
        og.b bVar = iVar.f69649a;
        if (bVar != null) {
            bVar.onCompleted(str);
        }
    }

    public static final void j(i iVar, String str, Throwable th2) {
        og.b bVar = iVar.f69649a;
        if (bVar != null) {
            bVar.b(str, th2);
        }
    }

    public static final void k(i iVar, Throwable th2) {
        og.a aVar = iVar.f69651c;
        if (aVar != null) {
            aVar.c(th2);
        }
    }

    public static final void l(i iVar, String str) {
        og.b bVar = iVar.f69649a;
        if (bVar != null) {
            bVar.a(str);
        }
    }

    public static final void m(i iVar) {
        try {
            og.a aVar = iVar.f69651c;
            if (aVar != null) {
                aVar.onSuccess();
            }
        } catch (Throwable th2) {
            iVar.c(th2);
        }
    }

    @Override
    public void a(final String threadName) {
        Executor executor;
        Intrinsics.h(threadName, "threadName");
        if (this.f69649a == null || (executor = this.f69650b) == null) {
            return;
        }
        executor.execute(new Runnable() {
            @Override
            public final void run() {
                i.l(this.f69639a, threadName);
            }
        });
    }

    @Override
    public void b(final String threadName, final Throwable throwable) {
        Executor executor;
        Intrinsics.h(threadName, "threadName");
        Intrinsics.h(throwable, "throwable");
        c(throwable);
        if (this.f69649a == null || (executor = this.f69650b) == null) {
            return;
        }
        executor.execute(new Runnable() {
            @Override
            public final void run() {
                i.j(this.f69642a, threadName, throwable);
            }
        });
    }

    @Override
    public void c(final Throwable t10) {
        Executor executor;
        Intrinsics.h(t10, "t");
        if (this.f69651c == null || (executor = this.f69650b) == null) {
            return;
        }
        executor.execute(new Runnable() {
            @Override
            public final void run() {
                i.k(this.f69647a, t10);
            }
        });
    }

    @Override
    public void onCompleted(final String threadName) {
        Executor executor;
        Intrinsics.h(threadName, "threadName");
        if (this.f69649a == null || (executor = this.f69650b) == null) {
            return;
        }
        executor.execute(new Runnable() {
            @Override
            public final void run() {
                i.i(this.f69645a, threadName);
            }
        });
    }

    @Override
    public void onSuccess() {
        Executor executor;
        if (this.f69651c == null || (executor = this.f69650b) == null) {
            return;
        }
        executor.execute(new Runnable() {
            @Override
            public final void run() {
                i.m(this.f69641a);
            }
        });
    }
}
