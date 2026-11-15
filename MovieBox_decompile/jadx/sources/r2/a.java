package r2;

import androidx.media3.common.util.j0;
import java.util.List;
import k2.l0;
import k2.o0;
import k2.q;
import k2.r;
import k2.s;
import k2.t;

public final class a implements r {

    private final j0 f70395a = new j0(4);

    private final o0 f70396b = new o0(-1, -1, "image/heif");

    private boolean a(s sVar, int i10) {
        this.f70395a.S(4);
        sVar.peekFully(this.f70395a.e(), 0, 4);
        return this.f70395a.J() == ((long) i10);
    }

    @Override
    public boolean b(s sVar) {
        sVar.advancePeekPosition(4);
        return a(sVar, 1718909296) && a(sVar, 1751476579);
    }

    @Override
    public r c() {
        return q.b(this);
    }

    @Override
    public int d(s sVar, l0 l0Var) {
        return this.f70396b.d(sVar, l0Var);
    }

    @Override
    public void e(t tVar) {
        this.f70396b.e(tVar);
    }

    @Override
    public List f() {
        return q.a(this);
    }

    @Override
    public void seek(long j10, long j11) {
        this.f70396b.seek(j10, j11);
    }

    @Override
    public void release() {
    }
}
