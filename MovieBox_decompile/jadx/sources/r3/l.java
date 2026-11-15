package r3;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;
import java.util.List;
import k2.s0;

public final class l implements m {

    private final List f70571a;

    private final String f70572b;

    private final s0[] f70573c;

    private boolean f70574d;

    private int f70575e;

    private int f70576f;

    private long f70577g = C.TIME_UNSET;

    public l(List list, String str) {
        this.f70571a = list;
        this.f70572b = str;
        this.f70573c = new s0[list.size()];
    }

    private boolean b(androidx.media3.common.util.j0 j0Var, int i10) {
        if (j0Var.a() == 0) {
            return false;
        }
        if (j0Var.H() != i10) {
            this.f70574d = false;
        }
        this.f70575e--;
        return this.f70574d;
    }

    @Override
    public void a(androidx.media3.common.util.j0 j0Var) {
        if (this.f70574d) {
            if (this.f70575e != 2 || b(j0Var, 32)) {
                if (this.f70575e != 1 || b(j0Var, 0)) {
                    int iF = j0Var.f();
                    int iA = j0Var.a();
                    for (s0 s0Var : this.f70573c) {
                        j0Var.W(iF);
                        s0Var.c(j0Var, iA);
                    }
                    this.f70576f += iA;
                }
            }
        }
    }

    @Override
    public void c(long j10, int i10) {
        if ((i10 & 4) == 0) {
            return;
        }
        this.f70574d = true;
        this.f70577g = j10;
        this.f70576f = 0;
        this.f70575e = 2;
    }

    @Override
    public void d(boolean z10) {
        if (this.f70574d) {
            androidx.media3.common.util.a.g(this.f70577g != C.TIME_UNSET);
            for (s0 s0Var : this.f70573c) {
                s0Var.b(this.f70577g, 1, this.f70576f, 0, null);
            }
            this.f70574d = false;
        }
    }

    @Override
    public void e(k2.t tVar, l0.d dVar) {
        for (int i10 = 0; i10 < this.f70573c.length; i10++) {
            l0.a aVar = (l0.a) this.f70571a.get(i10);
            dVar.a();
            s0 s0VarTrack = tVar.track(dVar.c(), 3);
            s0VarTrack.d(new androidx.media3.common.r.b().f0(dVar.b()).U(this.f70572b).u0(MimeTypes.APPLICATION_DVBSUBS).g0(Collections.singletonList(aVar.f70580c)).j0(aVar.f70578a).N());
            this.f70573c[i10] = s0VarTrack;
        }
    }

    @Override
    public void seek() {
        this.f70574d = false;
        this.f70577g = C.TIME_UNSET;
    }
}
