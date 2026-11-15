package androidx.room;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

public final class o0 implements Executor {

    private final Executor f14385a;

    private final ArrayDeque f14386b;

    private Runnable f14387c;

    private final Object f14388d;

    public o0(Executor executor) {
        Intrinsics.h(executor, "executor");
        this.f14385a = executor;
        this.f14386b = new ArrayDeque();
        this.f14388d = new Object();
    }

    public static final void b(Runnable runnable, o0 o0Var) {
        try {
            runnable.run();
        } finally {
            o0Var.c();
        }
    }

    public final void c() {
        synchronized (this.f14388d) {
            try {
                Object objPoll = this.f14386b.poll();
                Runnable runnable = (Runnable) objPoll;
                this.f14387c = runnable;
                if (objPoll != null) {
                    this.f14385a.execute(runnable);
                }
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void execute(final Runnable command) {
        Intrinsics.h(command, "command");
        synchronized (this.f14388d) {
            try {
                this.f14386b.offer(new Runnable() {
                    @Override
                    public final void run() {
                        o0.b(command, this);
                    }
                });
                if (this.f14387c == null) {
                    c();
                }
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
