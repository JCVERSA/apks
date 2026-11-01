package a0;

public final class i0 extends w0.c {

    public final int f49e;

    public final h0.h f50f;

    public i0(h0.h hVar, int i2) {
        this.f49e = i2;
        this.f50f = hVar;
    }

    @Override
    public final void e() {
        o0.a aVar;
        String str;
        if (this.f50f.l()) {
            h0.b[] bVarArr = h0.e.f1084a;
            h0.b bVar = bVarArr[bVarArr.length - 1];
            if ((bVar instanceof j0.c) && (aVar = ((j0.c) bVar).f1154b) != null && (str = aVar.f1288b) != null) {
                aVar.m(str);
            }
        }
        super.e();
    }

    @Override
    public final w0.a.b f() {
        h0.e.b bVarE = h0.e.e(this.f50f, this);
        int i2 = this.f49e;
        return bVarE != null ? new q(i2, bVarE.f1090c) : new q(i2, -1L);
    }

    @Override
    public final int i() {
        return this.f49e;
    }

    @Override
    public final int j() {
        return 3;
    }
}
