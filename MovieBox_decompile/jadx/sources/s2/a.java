package s2;

import java.util.List;
import k2.l0;
import k2.o0;
import k2.q;
import k2.r;
import k2.s;
import k2.t;

public final class a implements r {

    private final r f71457a;

    public a() {
        this(0);
    }

    @Override
    public boolean b(s sVar) {
        return this.f71457a.b(sVar);
    }

    @Override
    public r c() {
        return q.b(this);
    }

    @Override
    public int d(s sVar, l0 l0Var) {
        return this.f71457a.d(sVar, l0Var);
    }

    @Override
    public void e(t tVar) {
        this.f71457a.e(tVar);
    }

    @Override
    public List f() {
        return q.a(this);
    }

    @Override
    public void release() {
        this.f71457a.release();
    }

    @Override
    public void seek(long j10, long j11) {
        this.f71457a.seek(j10, j11);
    }

    public a(int i10) {
        if ((i10 & 1) != 0) {
            this.f71457a = new o0(65496, 2, "image/jpeg");
        } else {
            this.f71457a = new b();
        }
    }
}
