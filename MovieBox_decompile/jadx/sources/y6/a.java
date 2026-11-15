package y6;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private int f76168a = 10;

    private AtomicInteger f76169b = new AtomicInteger(0);

    public final boolean a() {
        return this.f76169b.get() >= this.f76168a;
    }

    public final void b() {
        this.f76169b.set(0);
    }

    public final void c(Function0 downCallBack) {
        Intrinsics.h(downCallBack, "downCallBack");
        if (this.f76169b.incrementAndGet() >= this.f76168a) {
            downCallBack.invoke();
        }
    }
}
