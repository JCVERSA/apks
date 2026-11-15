package com.google.android.datatransport.runtime;

public final class v implements w8.b {

    private final iy.a f23771a;

    private final iy.a f23772b;

    private final iy.a f23773c;

    private final iy.a f23774d;

    private final iy.a f23775e;

    public v(iy.a aVar, iy.a aVar2, iy.a aVar3, iy.a aVar4, iy.a aVar5) {
        this.f23771a = aVar;
        this.f23772b = aVar2;
        this.f23773c = aVar3;
        this.f23774d = aVar4;
        this.f23775e = aVar5;
    }

    public static v a(iy.a aVar, iy.a aVar2, iy.a aVar3, iy.a aVar4, iy.a aVar5) {
        return new v(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static t c(e9.a aVar, e9.a aVar2, a9.e eVar, b9.o oVar, b9.s sVar) {
        return new t(aVar, aVar2, eVar, oVar, sVar);
    }

    @Override
    public t get() {
        return c((e9.a) this.f23771a.get(), (e9.a) this.f23772b.get(), (a9.e) this.f23773c.get(), (b9.o) this.f23774d.get(), (b9.s) this.f23775e.get());
    }
}
