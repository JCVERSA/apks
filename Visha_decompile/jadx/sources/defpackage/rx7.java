package defpackage;

import androidx.media3.common.C;
import com.google.android.exoplayer2.k;

public final class rx7 implements ba9 {
    public k a;
    public poa b;
    public fva c;

    public rx7(String str) {
        this.a = new k.b().e0(str).E();
    }

    @Override
    public void a(qw7 qw7Var) {
        c();
        long jD = this.b.d();
        long jE = this.b.e();
        if (jD == C.TIME_UNSET || jE == C.TIME_UNSET) {
            return;
        }
        k kVar = this.a;
        if (jE != kVar.q) {
            k kVarE = kVar.b().i0(jE).E();
            this.a = kVarE;
            this.c.b(kVarE);
        }
        int iA = qw7Var.a();
        this.c.d(qw7Var, iA);
        this.c.e(jD, 1, iA, 0, null);
    }

    @Override
    public void b(poa poaVar, qk3 qk3Var, nab.d dVar) {
        this.b = poaVar;
        dVar.a();
        fva fvaVarTrack = qk3Var.track(dVar.c(), 5);
        this.c = fvaVarTrack;
        fvaVarTrack.b(this.a);
    }

    public final void c() {
        zi.i(this.b);
        blb.j(this.c);
    }
}
