package x9;

import android.util.SparseArray;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.w;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g9.u1;
import i9.a0;
import i9.b0;
import i9.d0;
import i9.e0;
import java.util.List;

public final class e implements i9.n, g {

    public static final g.a f75166j = new g.a() {
        @Override
        public final g a(int i10, p1 p1Var, boolean z10, List list, e0 e0Var, u1 u1Var) {
            return e.f(i10, p1Var, z10, list, e0Var, u1Var);
        }
    };

    private static final a0 f75167k = new a0();

    private final i9.l f75168a;

    private final int f75169b;

    private final p1 f75170c;

    private final SparseArray f75171d = new SparseArray();

    private boolean f75172e;

    private g.b f75173f;

    private long f75174g;

    private b0 f75175h;

    private p1[] f75176i;

    private static final class a implements e0 {

        private final int f75177a;

        private final int f75178b;

        private final p1 f75179c;

        private final i9.k f75180d = new i9.k();

        public p1 f75181e;

        private e0 f75182f;

        private long f75183g;

        public a(int i10, int i11, p1 p1Var) {
            this.f75177a = i10;
            this.f75178b = i11;
            this.f75179c = p1Var;
        }

        @Override
        public int a(com.google.android.exoplayer2.upstream.g gVar, int i10, boolean z10, int i11) {
            return ((e0) p0.j(this.f75182f)).b(gVar, i10, z10);
        }

        @Override
        public int b(com.google.android.exoplayer2.upstream.g gVar, int i10, boolean z10) {
            return d0.a(this, gVar, i10, z10);
        }

        @Override
        public void c(com.google.android.exoplayer2.util.d0 d0Var, int i10) {
            d0.b(this, d0Var, i10);
        }

        @Override
        public void d(p1 p1Var) {
            p1 p1Var2 = this.f75179c;
            if (p1Var2 != null) {
                p1Var = p1Var.j(p1Var2);
            }
            this.f75181e = p1Var;
            ((e0) p0.j(this.f75182f)).d(this.f75181e);
        }

        @Override
        public void e(long j10, int i10, int i11, int i12, e0.a aVar) {
            long j11 = this.f75183g;
            if (j11 != C.TIME_UNSET && j10 >= j11) {
                this.f75182f = this.f75180d;
            }
            ((e0) p0.j(this.f75182f)).e(j10, i10, i11, i12, aVar);
        }

        @Override
        public void f(com.google.android.exoplayer2.util.d0 d0Var, int i10, int i11) {
            ((e0) p0.j(this.f75182f)).c(d0Var, i10);
        }

        public void g(g.b bVar, long j10) {
            if (bVar == null) {
                this.f75182f = this.f75180d;
                return;
            }
            this.f75183g = j10;
            e0 e0VarTrack = bVar.track(this.f75177a, this.f75178b);
            this.f75182f = e0VarTrack;
            p1 p1Var = this.f75181e;
            if (p1Var != null) {
                e0VarTrack.d(p1Var);
            }
        }
    }

    public e(i9.l lVar, int i10, p1 p1Var) {
        this.f75168a = lVar;
        this.f75169b = i10;
        this.f75170c = p1Var;
    }

    public static g f(int i10, p1 p1Var, boolean z10, List list, e0 e0Var, u1 u1Var) {
        i9.l gVar;
        String str = p1Var.f24900k;
        if (w.r(str)) {
            return null;
        }
        if (w.q(str)) {
            gVar = new o9.e(1);
        } else {
            gVar = new q9.g(z10 ? 4 : 0, null, null, list, e0Var);
        }
        return new e(gVar, i10, p1Var);
    }

    @Override
    public boolean a(i9.m mVar) {
        int iD = this.f75168a.d(mVar, f75167k);
        com.google.android.exoplayer2.util.a.g(iD != 1);
        return iD == 0;
    }

    @Override
    public i9.d b() {
        b0 b0Var = this.f75175h;
        if (b0Var instanceof i9.d) {
            return (i9.d) b0Var;
        }
        return null;
    }

    @Override
    public p1[] c() {
        return this.f75176i;
    }

    @Override
    public void d(g.b bVar, long j10, long j11) {
        this.f75173f = bVar;
        this.f75174g = j11;
        if (!this.f75172e) {
            this.f75168a.b(this);
            if (j10 != C.TIME_UNSET) {
                this.f75168a.seek(0L, j10);
            }
            this.f75172e = true;
            return;
        }
        i9.l lVar = this.f75168a;
        if (j10 == C.TIME_UNSET) {
            j10 = 0;
        }
        lVar.seek(0L, j10);
        for (int i10 = 0; i10 < this.f75171d.size(); i10++) {
            ((a) this.f75171d.valueAt(i10)).g(bVar, j11);
        }
    }

    @Override
    public void endTracks() {
        p1[] p1VarArr = new p1[this.f75171d.size()];
        for (int i10 = 0; i10 < this.f75171d.size(); i10++) {
            p1VarArr[i10] = (p1) com.google.android.exoplayer2.util.a.i(((a) this.f75171d.valueAt(i10)).f75181e);
        }
        this.f75176i = p1VarArr;
    }

    @Override
    public void g(b0 b0Var) {
        this.f75175h = b0Var;
    }

    @Override
    public void release() {
        this.f75168a.release();
    }

    @Override
    public e0 track(int i10, int i11) {
        a aVar = (a) this.f75171d.get(i10);
        if (aVar == null) {
            com.google.android.exoplayer2.util.a.g(this.f75176i == null);
            aVar = new a(i10, i11, i11 == this.f75169b ? this.f75170c : null);
            aVar.g(this.f75173f, this.f75174g);
            this.f75171d.put(i10, aVar);
        }
        return aVar;
    }
}
