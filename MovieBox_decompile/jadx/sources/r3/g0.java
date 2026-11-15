package r3;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;
import k2.s0;

public final class g0 {

    private final List f70469a;

    private final String f70470b;

    private final s0[] f70471c;

    private final androidx.media3.container.i f70472d = new androidx.media3.container.i(new androidx.media3.container.i.b() {
        @Override
        public final void a(long j10, androidx.media3.common.util.j0 j0Var) {
            this.f70468a.f(j10, j0Var);
        }
    });

    public g0(List list, String str) {
        this.f70469a = list;
        this.f70470b = str;
        this.f70471c = new s0[list.size()];
    }

    public void f(long j10, androidx.media3.common.util.j0 j0Var) {
        k2.g.a(j10, j0Var, this.f70471c);
    }

    public void b() {
        this.f70472d.d();
    }

    public void c(long j10, androidx.media3.common.util.j0 j0Var) {
        this.f70472d.a(j10, j0Var);
    }

    public void d(k2.t tVar, l0.d dVar) {
        for (int i10 = 0; i10 < this.f70471c.length; i10++) {
            dVar.a();
            s0 s0VarTrack = tVar.track(dVar.c(), 3);
            androidx.media3.common.r rVar = (androidx.media3.common.r) this.f70469a.get(i10);
            String str = rVar.f9849o;
            androidx.media3.common.util.a.b(MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str), "Invalid closed caption MIME type provided: " + str);
            String strB = rVar.f9835a;
            if (strB == null) {
                strB = dVar.b();
            }
            s0VarTrack.d(new androidx.media3.common.r.b().f0(strB).U(this.f70470b).u0(str).w0(rVar.f9839e).j0(rVar.f9838d).O(rVar.J).g0(rVar.f9852r).N());
            this.f70471c[i10] = s0VarTrack;
        }
    }

    public void e() {
        this.f70472d.d();
    }

    public void g(int i10) {
        this.f70472d.g(i10);
    }
}
