package g2;

import android.util.SparseArray;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.y;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import h3.s;
import java.util.List;
import java.util.Objects;
import k2.l0;
import k2.m0;
import k2.r;
import k2.r0;
import k2.s0;
import k2.t;
import x1.f4;

public final class d implements t, f {

    public static final b f60574j = new b();

    private static final l0 f60575k = new l0();

    private final r f60576a;

    private final int f60577b;

    private final androidx.media3.common.r f60578c;

    private final SparseArray f60579d = new SparseArray();

    private boolean f60580e;

    private f.b f60581f;

    private long f60582g;

    private m0 f60583h;

    private androidx.media3.common.r[] f60584i;

    private static final class a implements s0 {

        private final int f60585a;

        private final int f60586b;

        private final androidx.media3.common.r f60587c;

        private final k2.n f60588d = new k2.n();

        public androidx.media3.common.r f60589e;

        private s0 f60590f;

        private long f60591g;

        public a(int i10, int i11, androidx.media3.common.r rVar) {
            this.f60585a = i10;
            this.f60586b = i11;
            this.f60587c = rVar;
        }

        @Override
        public void a(j0 j0Var, int i10, int i11) {
            ((s0) a1.i(this.f60590f)).c(j0Var, i10);
        }

        @Override
        public void b(long j10, int i10, int i11, int i12, s0.a aVar) {
            long j11 = this.f60591g;
            if (j11 != C.TIME_UNSET && j10 >= j11) {
                this.f60590f = this.f60588d;
            }
            ((s0) a1.i(this.f60590f)).b(j10, i10, i11, i12, aVar);
        }

        @Override
        public void c(j0 j0Var, int i10) {
            r0.c(this, j0Var, i10);
        }

        @Override
        public void d(androidx.media3.common.r rVar) {
            androidx.media3.common.r rVar2 = this.f60587c;
            if (rVar2 != null) {
                rVar = rVar.j(rVar2);
            }
            this.f60589e = rVar;
            ((s0) a1.i(this.f60590f)).d(this.f60589e);
        }

        @Override
        public int e(androidx.media3.common.j jVar, int i10, boolean z10) {
            return r0.b(this, jVar, i10, z10);
        }

        @Override
        public void f(long j10) {
            r0.a(this, j10);
        }

        @Override
        public int g(androidx.media3.common.j jVar, int i10, boolean z10, int i11) {
            return ((s0) a1.i(this.f60590f)).e(jVar, i10, z10);
        }

        public void h(f.b bVar, long j10) {
            if (bVar == null) {
                this.f60590f = this.f60588d;
                return;
            }
            this.f60591g = j10;
            s0 s0VarTrack = bVar.track(this.f60585a, this.f60586b);
            this.f60590f = s0VarTrack;
            androidx.media3.common.r rVar = this.f60589e;
            if (rVar != null) {
                s0VarTrack.d(rVar);
            }
        }
    }

    public static final class b implements f.a {

        private s.a f60592a = new h3.h();

        private boolean f60593b;

        private int f60594c;

        @Override
        public androidx.media3.common.r d(androidx.media3.common.r rVar) {
            String str;
            if (!this.f60593b || !this.f60592a.a(rVar)) {
                return rVar;
            }
            androidx.media3.common.r.b bVarW = rVar.b().u0("application/x-media3-cues").W(this.f60592a.b(rVar));
            StringBuilder sb2 = new StringBuilder();
            sb2.append(rVar.f9849o);
            if (rVar.f9845k != null) {
                str = " " + rVar.f9845k;
            } else {
                str = "";
            }
            sb2.append(str);
            return bVarW.S(sb2.toString()).y0(Long.MAX_VALUE).N();
        }

        @Override
        public f e(int i10, androidx.media3.common.r rVar, boolean z10, List list, s0 s0Var, f4 f4Var) {
            r hVar;
            String str = rVar.f9848n;
            if (!y.s(str)) {
                if (y.r(str)) {
                    hVar = new c3.e(this.f60592a, this.f60593b ? 1 : 3);
                } else if (Objects.equals(str, "image/jpeg")) {
                    hVar = new s2.a(1);
                } else if (Objects.equals(str, "image/png")) {
                    hVar = new g3.a();
                } else {
                    int i11 = z10 ? 4 : 0;
                    if (!this.f60593b) {
                        i11 |= 32;
                    }
                    hVar = new e3.h(this.f60592a, i11 | e3.h.j(this.f60594c), null, null, list, s0Var);
                }
            } else {
                if (!this.f60593b) {
                    return null;
                }
                hVar = new h3.n(this.f60592a.c(rVar), rVar);
            }
            return new d(hVar, i10, rVar);
        }

        @Override
        public b c(boolean z10) {
            this.f60593b = z10;
            return this;
        }

        @Override
        public b b(int i10) {
            this.f60594c = i10;
            return this;
        }

        @Override
        public b a(s.a aVar) {
            this.f60592a = (s.a) androidx.media3.common.util.a.e(aVar);
            return this;
        }
    }

    public d(r rVar, int i10, androidx.media3.common.r rVar2) {
        this.f60576a = rVar;
        this.f60577b = i10;
        this.f60578c = rVar2;
    }

    @Override
    public boolean a(k2.s sVar) {
        int iD = this.f60576a.d(sVar, f60575k);
        androidx.media3.common.util.a.g(iD != 1);
        return iD == 0;
    }

    @Override
    public k2.h b() {
        m0 m0Var = this.f60583h;
        if (m0Var instanceof k2.h) {
            return (k2.h) m0Var;
        }
        return null;
    }

    @Override
    public androidx.media3.common.r[] c() {
        return this.f60584i;
    }

    @Override
    public void d(m0 m0Var) {
        this.f60583h = m0Var;
    }

    @Override
    public void e(f.b bVar, long j10, long j11) {
        this.f60581f = bVar;
        this.f60582g = j11;
        if (!this.f60580e) {
            this.f60576a.e(this);
            if (j10 != C.TIME_UNSET) {
                this.f60576a.seek(0L, j10);
            }
            this.f60580e = true;
            return;
        }
        r rVar = this.f60576a;
        if (j10 == C.TIME_UNSET) {
            j10 = 0;
        }
        rVar.seek(0L, j10);
        for (int i10 = 0; i10 < this.f60579d.size(); i10++) {
            ((a) this.f60579d.valueAt(i10)).h(bVar, j11);
        }
    }

    @Override
    public void endTracks() {
        androidx.media3.common.r[] rVarArr = new androidx.media3.common.r[this.f60579d.size()];
        for (int i10 = 0; i10 < this.f60579d.size(); i10++) {
            rVarArr[i10] = (androidx.media3.common.r) androidx.media3.common.util.a.i(((a) this.f60579d.valueAt(i10)).f60589e);
        }
        this.f60584i = rVarArr;
    }

    @Override
    public void release() {
        this.f60576a.release();
    }

    @Override
    public s0 track(int i10, int i11) {
        a aVar = (a) this.f60579d.get(i10);
        if (aVar == null) {
            androidx.media3.common.util.a.g(this.f60584i == null);
            aVar = new a(i10, i11, i11 == this.f60577b ? this.f60578c : null);
            aVar.h(this.f60581f, this.f60582g);
            this.f60579d.put(i10, aVar);
        }
        return aVar;
    }
}
