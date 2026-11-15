package a9;

import b9.u;
import java.util.concurrent.Executor;

public final class d implements w8.b {

    private final iy.a f248a;

    private final iy.a f249b;

    private final iy.a f250c;

    private final iy.a f251d;

    private final iy.a f252e;

    public d(iy.a aVar, iy.a aVar2, iy.a aVar3, iy.a aVar4, iy.a aVar5) {
        this.f248a = aVar;
        this.f249b = aVar2;
        this.f250c = aVar3;
        this.f251d = aVar4;
        this.f252e = aVar5;
    }

    public static d a(iy.a aVar, iy.a aVar2, iy.a aVar3, iy.a aVar4, iy.a aVar5) {
        return new d(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static c c(Executor executor, v8.d dVar, u uVar, c9.d dVar2, d9.a aVar) {
        return new c(executor, dVar, uVar, dVar2, aVar);
    }

    @Override
    public c get() {
        return c((Executor) this.f248a.get(), (v8.d) this.f249b.get(), (u) this.f250c.get(), (c9.d) this.f251d.get(), (d9.a) this.f252e.get());
    }
}
