package s9;

import com.google.android.exoplayer2.p1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;
import java.util.List;

public final class l implements m {

    private final List f71777a;

    private final i9.e0[] f71778b;

    private boolean f71779c;

    private int f71780d;

    private int f71781e;

    private long f71782f = C.TIME_UNSET;

    public l(List list) {
        this.f71777a = list;
        this.f71778b = new i9.e0[list.size()];
    }

    private boolean a(com.google.android.exoplayer2.util.d0 d0Var, int i10) {
        if (d0Var.a() == 0) {
            return false;
        }
        if (d0Var.D() != i10) {
            this.f71779c = false;
        }
        this.f71780d--;
        return this.f71779c;
    }

    @Override
    public void b(com.google.android.exoplayer2.util.d0 d0Var) {
        if (this.f71779c) {
            if (this.f71780d != 2 || a(d0Var, 32)) {
                if (this.f71780d != 1 || a(d0Var, 0)) {
                    int iE = d0Var.e();
                    int iA = d0Var.a();
                    for (i9.e0 e0Var : this.f71778b) {
                        d0Var.P(iE);
                        e0Var.c(d0Var, iA);
                    }
                    this.f71781e += iA;
                }
            }
        }
    }

    @Override
    public void c(long j10, int i10) {
        if ((i10 & 4) == 0) {
            return;
        }
        this.f71779c = true;
        if (j10 != C.TIME_UNSET) {
            this.f71782f = j10;
        }
        this.f71781e = 0;
        this.f71780d = 2;
    }

    @Override
    public void d(i9.n nVar, i0.d dVar) {
        for (int i10 = 0; i10 < this.f71778b.length; i10++) {
            i0.a aVar = (i0.a) this.f71777a.get(i10);
            dVar.a();
            i9.e0 e0VarTrack = nVar.track(dVar.c(), 3);
            e0VarTrack.d(new p1.b().S(dVar.b()).e0(MimeTypes.APPLICATION_DVBSUBS).T(Collections.singletonList(aVar.f71752c)).V(aVar.f71750a).E());
            this.f71778b[i10] = e0VarTrack;
        }
    }

    @Override
    public void packetFinished() {
        if (this.f71779c) {
            if (this.f71782f != C.TIME_UNSET) {
                for (i9.e0 e0Var : this.f71778b) {
                    e0Var.e(this.f71782f, 1, this.f71781e, 0, null);
                }
            }
            this.f71779c = false;
        }
    }

    @Override
    public void seek() {
        this.f71779c = false;
        this.f71782f = C.TIME_UNSET;
    }
}
