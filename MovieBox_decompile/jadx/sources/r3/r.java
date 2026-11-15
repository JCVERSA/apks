package r3;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import k2.s0;

public final class r implements m {

    private final String f70723a;

    private s0 f70725c;

    private boolean f70726d;

    private int f70728f;

    private int f70729g;

    private final androidx.media3.common.util.j0 f70724b = new androidx.media3.common.util.j0(10);

    private long f70727e = C.TIME_UNSET;

    public r(String str) {
        this.f70723a = str;
    }

    @Override
    public void a(androidx.media3.common.util.j0 j0Var) {
        androidx.media3.common.util.a.i(this.f70725c);
        if (this.f70726d) {
            int iA = j0Var.a();
            int i10 = this.f70729g;
            if (i10 < 10) {
                int iMin = Math.min(iA, 10 - i10);
                System.arraycopy(j0Var.e(), j0Var.f(), this.f70724b.e(), this.f70729g, iMin);
                if (this.f70729g + iMin == 10) {
                    this.f70724b.W(0);
                    if (73 != this.f70724b.H() || 68 != this.f70724b.H() || 51 != this.f70724b.H()) {
                        androidx.media3.common.util.u.h("Id3Reader", "Discarding invalid ID3 tag");
                        this.f70726d = false;
                        return;
                    } else {
                        this.f70724b.X(3);
                        this.f70728f = this.f70724b.G() + 10;
                    }
                }
            }
            int iMin2 = Math.min(iA, this.f70728f - this.f70729g);
            this.f70725c.c(j0Var, iMin2);
            this.f70729g += iMin2;
        }
    }

    @Override
    public void c(long j10, int i10) {
        if ((i10 & 4) == 0) {
            return;
        }
        this.f70726d = true;
        this.f70727e = j10;
        this.f70728f = 0;
        this.f70729g = 0;
    }

    @Override
    public void d(boolean z10) {
        int i10;
        androidx.media3.common.util.a.i(this.f70725c);
        if (this.f70726d && (i10 = this.f70728f) != 0 && this.f70729g == i10) {
            androidx.media3.common.util.a.g(this.f70727e != C.TIME_UNSET);
            this.f70725c.b(this.f70727e, 1, this.f70728f, 0, null);
            this.f70726d = false;
        }
    }

    @Override
    public void e(k2.t tVar, l0.d dVar) {
        dVar.a();
        s0 s0VarTrack = tVar.track(dVar.c(), 5);
        this.f70725c = s0VarTrack;
        s0VarTrack.d(new androidx.media3.common.r.b().f0(dVar.b()).U(this.f70723a).u0(MimeTypes.APPLICATION_ID3).N());
    }

    @Override
    public void seek() {
        this.f70726d = false;
        this.f70727e = C.TIME_UNSET;
    }
}
