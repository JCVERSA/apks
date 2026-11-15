package f2;

import androidx.media3.common.e0;

public final class x extends androidx.media3.exoplayer.source.m {

    private final androidx.media3.common.t f59965f;

    public x(e0 e0Var, androidx.media3.common.t tVar) {
        super(e0Var);
        this.f59965f = tVar;
    }

    @Override
    public e0.c o(int i10, e0.c cVar, long j10) {
        super.o(i10, cVar, j10);
        androidx.media3.common.t tVar = this.f59965f;
        cVar.f9641c = tVar;
        androidx.media3.common.t.h hVar = tVar.f9899b;
        cVar.f9640b = hVar != null ? hVar.f9998h : null;
        return cVar;
    }
}
