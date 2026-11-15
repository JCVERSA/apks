package cb;

public final class k extends g {

    private final g f16844a;

    private final float f16845b;

    public k(g gVar, float f10) {
        this.f16844a = gVar;
        this.f16845b = f10;
    }

    @Override
    boolean a() {
        return this.f16844a.a();
    }

    @Override
    public void b(float f10, float f11, float f12, p pVar) {
        this.f16844a.b(f10, f11 - this.f16845b, f12, pVar);
    }
}
