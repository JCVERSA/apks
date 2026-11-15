package c9;

public final class n0 implements w8.b {

    private final iy.a f16749a;

    private final iy.a f16750b;

    private final iy.a f16751c;

    private final iy.a f16752d;

    private final iy.a f16753e;

    public n0(iy.a aVar, iy.a aVar2, iy.a aVar3, iy.a aVar4, iy.a aVar5) {
        this.f16749a = aVar;
        this.f16750b = aVar2;
        this.f16751c = aVar3;
        this.f16752d = aVar4;
        this.f16753e = aVar5;
    }

    public static n0 a(iy.a aVar, iy.a aVar2, iy.a aVar3, iy.a aVar4, iy.a aVar5) {
        return new n0(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static m0 c(e9.a aVar, e9.a aVar2, Object obj, Object obj2, iy.a aVar3) {
        return new m0(aVar, aVar2, (e) obj, (v0) obj2, aVar3);
    }

    @Override
    public m0 get() {
        return c((e9.a) this.f16749a.get(), (e9.a) this.f16750b.get(), this.f16751c.get(), this.f16752d.get(), this.f16753e);
    }
}
