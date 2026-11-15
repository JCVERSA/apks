package defpackage;

import androidx.media3.common.C;

public final class vmj extends w4f {
    public final cme b;

    public vmj(cme cmeVar) {
        this.b = cmeVar;
    }

    @Override
    public final int a(Object obj) {
        return obj == umj.e ? 0 : -1;
    }

    @Override
    public final int b() {
        return 1;
    }

    @Override
    public final int c() {
        return 1;
    }

    @Override
    public final y2f d(int i, y2f y2fVar, boolean z) {
        y2fVar.i(z ? 0 : null, z ? umj.e : null, 0, C.TIME_UNSET, 0L, ewe.e, true);
        return y2fVar;
    }

    @Override
    public final e4f e(int i, e4f e4fVar, long j) {
        e4fVar.a(e4f.o, this.b, null, C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, false, true, null, 0L, C.TIME_UNSET, 0, 0, 0L);
        e4fVar.j = true;
        return e4fVar;
    }

    @Override
    public final Object f(int i) {
        return umj.e;
    }
}
