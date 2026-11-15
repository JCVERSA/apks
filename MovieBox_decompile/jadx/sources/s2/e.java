package s2;

import k2.d0;
import k2.m0;
import k2.n0;
import k2.s0;
import k2.t;

public final class e implements t {

    private final long f71475a;

    private final t f71476b;

    class a extends d0 {

        final m0 f71477b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(m0 m0Var, m0 m0Var2) {
            super(m0Var);
            this.f71477b = m0Var2;
        }

        @Override
        public m0.a getSeekPoints(long j10) {
            m0.a seekPoints = this.f71477b.getSeekPoints(j10);
            n0 n0Var = seekPoints.f63651a;
            n0 n0Var2 = new n0(n0Var.f63657a, n0Var.f63658b + e.this.f71475a);
            n0 n0Var3 = seekPoints.f63652b;
            return new m0.a(n0Var2, new n0(n0Var3.f63657a, n0Var3.f63658b + e.this.f71475a));
        }
    }

    public e(long j10, t tVar) {
        this.f71475a = j10;
        this.f71476b = tVar;
    }

    @Override
    public void d(m0 m0Var) {
        this.f71476b.d(new a(m0Var, m0Var));
    }

    @Override
    public void endTracks() {
        this.f71476b.endTracks();
    }

    @Override
    public s0 track(int i10, int i11) {
        return this.f71476b.track(i10, i11);
    }
}
