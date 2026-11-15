package b9;

import java.util.concurrent.Executor;

public final class t implements w8.b {

    private final iy.a f15670a;

    private final iy.a f15671b;

    private final iy.a f15672c;

    private final iy.a f15673d;

    public t(iy.a aVar, iy.a aVar2, iy.a aVar3, iy.a aVar4) {
        this.f15670a = aVar;
        this.f15671b = aVar2;
        this.f15672c = aVar3;
        this.f15673d = aVar4;
    }

    public static t a(iy.a aVar, iy.a aVar2, iy.a aVar3, iy.a aVar4) {
        return new t(aVar, aVar2, aVar3, aVar4);
    }

    public static s c(Executor executor, c9.d dVar, u uVar, d9.a aVar) {
        return new s(executor, dVar, uVar, aVar);
    }

    @Override
    public s get() {
        return c((Executor) this.f15670a.get(), (c9.d) this.f15671b.get(), (u) this.f15672c.get(), (d9.a) this.f15673d.get());
    }
}
