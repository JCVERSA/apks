package t3;

import androidx.media3.common.util.j0;
import java.util.List;
import k2.l0;
import k2.o0;
import k2.q;
import k2.r;
import k2.s;
import k2.t;

public final class a implements r {

    private final j0 f72468a = new j0(4);

    private final o0 f72469b = new o0(-1, -1, "image/webp");

    @Override
    public boolean b(s sVar) {
        this.f72468a.S(4);
        sVar.peekFully(this.f72468a.e(), 0, 4);
        if (this.f72468a.J() != 1380533830) {
            return false;
        }
        sVar.advancePeekPosition(4);
        this.f72468a.S(4);
        sVar.peekFully(this.f72468a.e(), 0, 4);
        return this.f72468a.J() == 1464156752;
    }

    @Override
    public r c() {
        return q.b(this);
    }

    @Override
    public int d(s sVar, l0 l0Var) {
        return this.f72469b.d(sVar, l0Var);
    }

    @Override
    public void e(t tVar) {
        this.f72469b.e(tVar);
    }

    @Override
    public List f() {
        return q.a(this);
    }

    @Override
    public void seek(long j10, long j11) {
        this.f72469b.seek(j10, j11);
    }

    @Override
    public void release() {
    }
}
