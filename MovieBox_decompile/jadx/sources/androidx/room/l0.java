package androidx.room;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public abstract class l0 {

    private final RoomDatabase f14375a;

    private final AtomicBoolean f14376b;

    private final Lazy f14377c;

    public l0(RoomDatabase database) {
        Intrinsics.h(database, "database");
        this.f14375a = database;
        this.f14376b = new AtomicBoolean(false);
        this.f14377c = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return l0.i(this.f14373a);
            }
        });
    }

    private final z3.h d() {
        return this.f14375a.m(e());
    }

    private final z3.h f() {
        return (z3.h) this.f14377c.getValue();
    }

    private final z3.h g(boolean z10) {
        return z10 ? f() : d();
    }

    public static final z3.h i(l0 l0Var) {
        return l0Var.d();
    }

    public z3.h b() {
        c();
        return g(this.f14376b.compareAndSet(false, true));
    }

    protected void c() {
        this.f14375a.i();
    }

    protected abstract String e();

    public void h(z3.h statement) {
        Intrinsics.h(statement, "statement");
        if (statement == f()) {
            this.f14376b.set(false);
        }
    }
}
