package s9;

import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public final class v implements b0 {

    private p1 f71951a;

    private l0 f71952b;

    private i9.e0 f71953c;

    public v(String str) {
        this.f71951a = new p1.b().e0(str).E();
    }

    private void c() {
        com.google.android.exoplayer2.util.a.i(this.f71952b);
        p0.j(this.f71953c);
    }

    @Override
    public void a(l0 l0Var, i9.n nVar, i0.d dVar) {
        this.f71952b = l0Var;
        dVar.a();
        i9.e0 e0VarTrack = nVar.track(dVar.c(), 5);
        this.f71953c = e0VarTrack;
        e0VarTrack.d(this.f71951a);
    }

    @Override
    public void b(com.google.android.exoplayer2.util.d0 d0Var) {
        c();
        long jD = this.f71952b.d();
        long jE = this.f71952b.e();
        if (jD == C.TIME_UNSET || jE == C.TIME_UNSET) {
            return;
        }
        p1 p1Var = this.f71951a;
        if (jE != p1Var.f24905p) {
            p1 p1VarE = p1Var.b().i0(jE).E();
            this.f71951a = p1VarE;
            this.f71953c.d(p1VarE);
        }
        int iA = d0Var.a();
        this.f71953c.c(d0Var, iA);
        this.f71953c.e(jD, 1, iA, 0, null);
    }
}
