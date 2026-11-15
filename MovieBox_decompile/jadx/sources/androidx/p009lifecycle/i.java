package androidx.p009lifecycle;

import java.util.ArrayDeque;
import java.util.Queue;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.y0;

public final class i {

    private boolean f9297b;

    private boolean f9298c;

    private boolean f9296a = true;

    private final Queue f9299d = new ArrayDeque();

    public static final void d(i this$0, Runnable runnable) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(runnable, "$runnable");
        this$0.f(runnable);
    }

    private final void f(Runnable runnable) {
        if (!this.f9299d.offer(runnable)) {
            throw new IllegalStateException("cannot enqueue any more runnables");
        }
        e();
    }

    public final boolean b() {
        return this.f9297b || !this.f9296a;
    }

    public final void c(CoroutineContext context, final Runnable runnable) {
        Intrinsics.h(context, "context");
        Intrinsics.h(runnable, "runnable");
        a2 a2VarR = y0.c().r();
        if (a2VarR.isDispatchNeeded(context) || b()) {
            a2VarR.dispatch(context, new Runnable() {
                @Override
                public final void run() {
                    i.d(this.f9292a, runnable);
                }
            });
        } else {
            f(runnable);
        }
    }

    public final void e() {
        if (this.f9298c) {
            return;
        }
        try {
            this.f9298c = true;
            while (!this.f9299d.isEmpty() && b()) {
                Runnable runnable = (Runnable) this.f9299d.poll();
                if (runnable != null) {
                    runnable.run();
                }
            }
            this.f9298c = false;
        } catch (Throwable th2) {
            this.f9298c = false;
            throw th2;
        }
    }

    public final void g() {
        this.f9297b = true;
        e();
    }

    public final void h() {
        this.f9296a = true;
    }

    public final void i() {
        if (this.f9296a) {
            if (this.f9297b) {
                throw new IllegalStateException("Cannot resume a finished dispatcher");
            }
            this.f9296a = false;
            e();
        }
    }
}
