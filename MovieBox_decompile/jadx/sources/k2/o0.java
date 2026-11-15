package k2;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.List;

public final class o0 implements r {

    private final int f63662a;

    private final int f63663b;

    private final String f63664c;

    private int f63665d;

    private int f63666e;

    private t f63667f;

    private s0 f63668g;

    public o0(int i10, int i11, String str) {
        this.f63662a = i10;
        this.f63663b = i11;
        this.f63664c = str;
    }

    private void a(String str) {
        s0 s0VarTrack = this.f63667f.track(1024, 4);
        this.f63668g = s0VarTrack;
        s0VarTrack.d(new androidx.media3.common.r.b().U(str).u0(str).N());
        this.f63667f.endTracks();
        this.f63667f.d(new p0(C.TIME_UNSET));
        this.f63666e = 1;
    }

    private void g(s sVar) {
        int iE = ((s0) androidx.media3.common.util.a.e(this.f63668g)).e(sVar, 1024, true);
        if (iE != -1) {
            this.f63665d += iE;
            return;
        }
        this.f63666e = 2;
        this.f63668g.b(0L, 1, this.f63665d, 0, null);
        this.f63665d = 0;
    }

    @Override
    public boolean b(s sVar) {
        androidx.media3.common.util.a.g((this.f63662a == -1 || this.f63663b == -1) ? false : true);
        androidx.media3.common.util.j0 j0Var = new androidx.media3.common.util.j0(this.f63663b);
        sVar.peekFully(j0Var.e(), 0, this.f63663b);
        return j0Var.P() == this.f63662a;
    }

    @Override
    public r c() {
        return q.b(this);
    }

    @Override
    public int d(s sVar, l0 l0Var) {
        int i10 = this.f63666e;
        if (i10 == 1) {
            g(sVar);
            return 0;
        }
        if (i10 == 2) {
            return -1;
        }
        throw new IllegalStateException();
    }

    @Override
    public void e(t tVar) {
        this.f63667f = tVar;
        a(this.f63664c);
    }

    @Override
    public List f() {
        return q.a(this);
    }

    @Override
    public void seek(long j10, long j11) {
        if (j10 == 0 || this.f63666e == 1) {
            this.f63666e = 1;
            this.f63665d = 0;
        }
    }

    @Override
    public void release() {
    }
}
