package s9;

import com.google.android.exoplayer2.p1;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;

final class k0 {

    private final List f71775a;

    private final i9.e0[] f71776b;

    public k0(List list) {
        this.f71775a = list;
        this.f71776b = new i9.e0[list.size()];
    }

    public void a(long j10, com.google.android.exoplayer2.util.d0 d0Var) {
        if (d0Var.a() < 9) {
            return;
        }
        int iN = d0Var.n();
        int iN2 = d0Var.n();
        int iD = d0Var.D();
        if (iN == 434 && iN2 == 1195456820 && iD == 3) {
            i9.c.b(j10, d0Var, this.f71776b);
        }
    }

    public void b(i9.n nVar, i0.d dVar) {
        for (int i10 = 0; i10 < this.f71776b.length; i10++) {
            dVar.a();
            i9.e0 e0VarTrack = nVar.track(dVar.c(), 3);
            p1 p1Var = (p1) this.f71775a.get(i10);
            String str = p1Var.f24901l;
            com.google.android.exoplayer2.util.a.b(MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str), "Invalid closed caption mime type provided: " + str);
            e0VarTrack.d(new p1.b().S(dVar.b()).e0(str).g0(p1Var.f24893d).V(p1Var.f24892c).F(p1Var.D).T(p1Var.f24903n).E());
            this.f71776b[i10] = e0VarTrack;
        }
    }
}
