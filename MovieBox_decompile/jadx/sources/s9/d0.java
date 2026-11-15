package s9;

import com.google.android.exoplayer2.p1;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;

public final class d0 {

    private final List f71656a;

    private final i9.e0[] f71657b;

    public d0(List list) {
        this.f71656a = list;
        this.f71657b = new i9.e0[list.size()];
    }

    public void a(long j10, com.google.android.exoplayer2.util.d0 d0Var) {
        i9.c.a(j10, d0Var, this.f71657b);
    }

    public void b(i9.n nVar, i0.d dVar) {
        for (int i10 = 0; i10 < this.f71657b.length; i10++) {
            dVar.a();
            i9.e0 e0VarTrack = nVar.track(dVar.c(), 3);
            p1 p1Var = (p1) this.f71656a.get(i10);
            String str = p1Var.f24901l;
            com.google.android.exoplayer2.util.a.b(MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str), "Invalid closed caption mime type provided: " + str);
            String strB = p1Var.f24890a;
            if (strB == null) {
                strB = dVar.b();
            }
            e0VarTrack.d(new p1.b().S(strB).e0(str).g0(p1Var.f24893d).V(p1Var.f24892c).F(p1Var.D).T(p1Var.f24903n).E());
            this.f71657b[i10] = e0VarTrack;
        }
    }
}
