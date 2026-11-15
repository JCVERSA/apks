package defpackage;

public final class u9j extends pmj {
    public final e4f c;

    public u9j(v9j v9jVar, w4f w4fVar) {
        super(w4fVar);
        this.c = new e4f();
    }

    @Override
    public final y2f d(int i, y2f y2fVar, boolean z) {
        w4f w4fVar = this.b;
        y2f y2fVarD = w4fVar.d(i, y2fVar, z);
        if (w4fVar.e(y2fVarD.c, this.c, 0L).b()) {
            y2fVarD.i(y2fVar.a, y2fVar.b, y2fVar.c, y2fVar.d, 0L, ewe.e, true);
        } else {
            y2fVarD.f = true;
        }
        return y2fVarD;
    }
}
