package r3;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import k2.s0;

public final class x implements d0 {

    private androidx.media3.common.r f70801a;

    private p0 f70802b;

    private s0 f70803c;

    public x(String str, String str2) {
        this.f70801a = new androidx.media3.common.r.b().U(str2).u0(str).N();
    }

    private void c() {
        androidx.media3.common.util.a.i(this.f70802b);
        a1.i(this.f70803c);
    }

    @Override
    public void a(androidx.media3.common.util.j0 j0Var) {
        c();
        long jE = this.f70802b.e();
        long jF = this.f70802b.f();
        if (jE == C.TIME_UNSET || jF == C.TIME_UNSET) {
            return;
        }
        androidx.media3.common.r rVar = this.f70801a;
        if (jF != rVar.f9854t) {
            androidx.media3.common.r rVarN = rVar.b().y0(jF).N();
            this.f70801a = rVarN;
            this.f70803c.d(rVarN);
        }
        int iA = j0Var.a();
        this.f70803c.c(j0Var, iA);
        this.f70803c.b(jE, 1, iA, 0, null);
    }

    @Override
    public void b(p0 p0Var, k2.t tVar, l0.d dVar) {
        this.f70802b = p0Var;
        dVar.a();
        s0 s0VarTrack = tVar.track(dVar.c(), 5);
        this.f70803c = s0VarTrack;
        s0VarTrack.d(this.f70801a);
    }
}
