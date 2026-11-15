package r3;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;
import k2.s0;

final class n0 {

    private final List f70614a;

    private final String f70615b;

    private final s0[] f70616c;

    public n0(List list, String str) {
        this.f70614a = list;
        this.f70615b = str;
        this.f70616c = new s0[list.size()];
    }

    public void a(long j10, androidx.media3.common.util.j0 j0Var) {
        if (j0Var.a() < 9) {
            return;
        }
        int iQ = j0Var.q();
        int iQ2 = j0Var.q();
        int iH = j0Var.H();
        if (iQ == 434 && iQ2 == 1195456820 && iH == 3) {
            k2.g.b(j10, j0Var, this.f70616c);
        }
    }

    public void b(k2.t tVar, l0.d dVar) {
        for (int i10 = 0; i10 < this.f70616c.length; i10++) {
            dVar.a();
            s0 s0VarTrack = tVar.track(dVar.c(), 3);
            androidx.media3.common.r rVar = (androidx.media3.common.r) this.f70614a.get(i10);
            String str = rVar.f9849o;
            androidx.media3.common.util.a.b(MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str), "Invalid closed caption MIME type provided: " + str);
            s0VarTrack.d(new androidx.media3.common.r.b().f0(dVar.b()).U(this.f70615b).u0(str).w0(rVar.f9839e).j0(rVar.f9838d).O(rVar.J).g0(rVar.f9852r).N());
            this.f70616c[i10] = s0VarTrack;
        }
    }
}
