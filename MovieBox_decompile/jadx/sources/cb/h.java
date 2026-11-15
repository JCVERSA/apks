package cb;

public final class h extends g {

    private final float f16793a;

    public h(float f10) {
        this.f16793a = f10 - 0.001f;
    }

    @Override
    boolean a() {
        return true;
    }

    @Override
    public void b(float f10, float f11, float f12, p pVar) {
        float fSqrt = (float) ((((double) this.f16793a) * Math.sqrt(2.0d)) / 2.0d);
        float fSqrt2 = (float) Math.sqrt(Math.pow(this.f16793a, 2.0d) - Math.pow(fSqrt, 2.0d));
        pVar.n(f11 - fSqrt, ((float) (-((((double) this.f16793a) * Math.sqrt(2.0d)) - ((double) this.f16793a)))) + fSqrt2);
        pVar.m(f11, (float) (-((((double) this.f16793a) * Math.sqrt(2.0d)) - ((double) this.f16793a))));
        pVar.m(f11 + fSqrt, ((float) (-((((double) this.f16793a) * Math.sqrt(2.0d)) - ((double) this.f16793a)))) + fSqrt2);
    }
}
