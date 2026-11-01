package a0;

public final class f0 extends w0.c {

    public final int f41e;

    public final h0.h f42f;

    public f0(h0.h hVar, int i2) {
        this.f41e = i2;
        this.f42f = hVar;
    }

    @Override
    public final w0.a.b f() {
        h0.e.a aVarD = h0.e.d(this.f42f);
        if (aVarD != null) {
            return new o(this.f41e, aVarD);
        }
        return null;
    }

    @Override
    public final int i() {
        return this.f41e;
    }

    @Override
    public final int j() {
        return 4;
    }
}
