package x9;

import com.google.android.exoplayer2.d3;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.u;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.q1;
import com.google.android.exoplayer2.source.a0;
import com.google.android.exoplayer2.source.b0;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.z;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import v9.s;

public class i implements s, b0, Loader.b, Loader.e {

    public final int f75195a;

    private final int[] f75196b;

    private final p1[] f75197c;

    private final boolean[] f75198d;

    private final j f75199e;

    private final b0.a f75200f;

    private final com.google.android.exoplayer2.source.p.a f75201g;

    private final z f75202h;

    private final Loader f75203i;

    private final h f75204j;

    private final ArrayList f75205k;

    private final List f75206l;

    private final a0 f75207m;

    private final a0[] f75208n;

    private final c f75209o;

    private f f75210p;

    private p1 f75211q;

    private b f75212r;

    private long f75213s;

    private long f75214t;

    private int f75215u;

    private x9.a f75216v;

    boolean f75217w;

    public interface b {
        void a(i iVar);
    }

    public i(int i10, int[] iArr, p1[] p1VarArr, j jVar, b0.a aVar, com.google.android.exoplayer2.upstream.b bVar, long j10, u uVar, com.google.android.exoplayer2.drm.s.a aVar2, z zVar, com.google.android.exoplayer2.source.p.a aVar3) {
        this.f75195a = i10;
        int i11 = 0;
        iArr = iArr == null ? new int[0] : iArr;
        this.f75196b = iArr;
        this.f75197c = p1VarArr == null ? new p1[0] : p1VarArr;
        this.f75199e = jVar;
        this.f75200f = aVar;
        this.f75201g = aVar3;
        this.f75202h = zVar;
        this.f75203i = new Loader("ChunkSampleStream");
        this.f75204j = new h();
        ArrayList arrayList = new ArrayList();
        this.f75205k = arrayList;
        this.f75206l = Collections.unmodifiableList(arrayList);
        int length = iArr.length;
        this.f75208n = new a0[length];
        this.f75198d = new boolean[length];
        int i12 = length + 1;
        int[] iArr2 = new int[i12];
        a0[] a0VarArr = new a0[i12];
        a0 a0VarK = a0.k(bVar, uVar, aVar2);
        this.f75207m = a0VarK;
        iArr2[0] = i10;
        a0VarArr[0] = a0VarK;
        while (i11 < length) {
            a0 a0VarL = a0.l(bVar);
            this.f75208n[i11] = a0VarL;
            int i13 = i11 + 1;
            a0VarArr[i13] = a0VarL;
            iArr2[i13] = this.f75196b[i11];
            i11 = i13;
        }
        this.f75209o = new c(iArr2, a0VarArr);
        this.f75213s = j10;
        this.f75214t = j10;
    }

    private int A(int i10, int i11) {
        do {
            i11++;
            if (i11 >= this.f75205k.size()) {
                return this.f75205k.size() - 1;
            }
        } while (((x9.a) this.f75205k.get(i11)).g(0) <= i10);
        return i11 - 1;
    }

    private void D() {
        this.f75207m.V();
        for (a0 a0Var : this.f75208n) {
            a0Var.V();
        }
    }

    private void m(int i10) {
        int iMin = Math.min(A(i10, 0), this.f75215u);
        if (iMin > 0) {
            p0.M0(this.f75205k, 0, iMin);
            this.f75215u -= iMin;
        }
    }

    private void o(int i10) {
        com.google.android.exoplayer2.util.a.g(!this.f75203i.i());
        int size = this.f75205k.size();
        while (true) {
            if (i10 >= size) {
                i10 = -1;
                break;
            } else if (!s(i10)) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 == -1) {
            return;
        }
        long j10 = r().f75191h;
        x9.a aVarP = p(i10);
        if (this.f75205k.isEmpty()) {
            this.f75213s = this.f75214t;
        }
        this.f75217w = false;
        this.f75201g.D(this.f75195a, aVarP.f75190g, j10);
    }

    private x9.a p(int i10) {
        x9.a aVar = (x9.a) this.f75205k.get(i10);
        ArrayList arrayList = this.f75205k;
        p0.M0(arrayList, i10, arrayList.size());
        this.f75215u = Math.max(this.f75215u, this.f75205k.size());
        int i11 = 0;
        this.f75207m.u(aVar.g(0));
        while (true) {
            a0[] a0VarArr = this.f75208n;
            if (i11 >= a0VarArr.length) {
                return aVar;
            }
            a0 a0Var = a0VarArr[i11];
            i11++;
            a0Var.u(aVar.g(i11));
        }
    }

    private x9.a r() {
        ArrayList arrayList = this.f75205k;
        return (x9.a) arrayList.get(arrayList.size() - 1);
    }

    private boolean s(int i10) {
        int iC;
        x9.a aVar = (x9.a) this.f75205k.get(i10);
        if (this.f75207m.C() > aVar.g(0)) {
            return true;
        }
        int i11 = 0;
        do {
            a0[] a0VarArr = this.f75208n;
            if (i11 >= a0VarArr.length) {
                return false;
            }
            iC = a0VarArr[i11].C();
            i11++;
        } while (iC <= aVar.g(i11));
        return true;
    }

    private boolean t(f fVar) {
        return fVar instanceof x9.a;
    }

    private void v() {
        int iA = A(this.f75207m.C(), this.f75215u - 1);
        while (true) {
            int i10 = this.f75215u;
            if (i10 > iA) {
                return;
            }
            this.f75215u = i10 + 1;
            w(i10);
        }
    }

    private void w(int i10) {
        x9.a aVar = (x9.a) this.f75205k.get(i10);
        p1 p1Var = aVar.f75187d;
        if (!p1Var.equals(this.f75211q)) {
            this.f75201g.i(this.f75195a, p1Var, aVar.f75188e, aVar.f75189f, aVar.f75190g);
        }
        this.f75211q = p1Var;
    }

    public void B() {
        C(null);
    }

    public void C(b bVar) {
        this.f75212r = bVar;
        this.f75207m.R();
        for (a0 a0Var : this.f75208n) {
            a0Var.R();
        }
        this.f75203i.l(this);
    }

    public void E(long j10) {
        x9.a aVar;
        boolean Z;
        this.f75214t = j10;
        if (u()) {
            this.f75213s = j10;
            return;
        }
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i11 < this.f75205k.size()) {
                aVar = (x9.a) this.f75205k.get(i11);
                long j11 = aVar.f75190g;
                if (j11 == j10 && aVar.f75157k == C.TIME_UNSET) {
                    break;
                } else if (j11 <= j10) {
                    i11++;
                }
            }
            aVar = null;
            break;
        }
        if (aVar != null) {
            Z = this.f75207m.Y(aVar.g(0));
        } else {
            Z = this.f75207m.Z(j10, j10 < getNextLoadPositionUs());
        }
        if (Z) {
            this.f75215u = A(this.f75207m.C(), 0);
            a0[] a0VarArr = this.f75208n;
            int length = a0VarArr.length;
            while (i10 < length) {
                a0VarArr[i10].Z(j10, true);
                i10++;
            }
            return;
        }
        this.f75213s = j10;
        this.f75217w = false;
        this.f75205k.clear();
        this.f75215u = 0;
        if (!this.f75203i.i()) {
            this.f75203i.f();
            D();
            return;
        }
        this.f75207m.r();
        a0[] a0VarArr2 = this.f75208n;
        int length2 = a0VarArr2.length;
        while (i10 < length2) {
            a0VarArr2[i10].r();
            i10++;
        }
        this.f75203i.e();
    }

    public a F(long j10, int i10) {
        for (int i11 = 0; i11 < this.f75208n.length; i11++) {
            if (this.f75196b[i11] == i10) {
                com.google.android.exoplayer2.util.a.g(!this.f75198d[i11]);
                this.f75198d[i11] = true;
                this.f75208n[i11].Z(j10, true);
                return new a(this, this.f75208n[i11], i11);
            }
        }
        throw new IllegalStateException();
    }

    @Override
    public int a(q1 q1Var, DecoderInputBuffer decoderInputBuffer, int i10) {
        if (u()) {
            return -3;
        }
        x9.a aVar = this.f75216v;
        if (aVar != null && aVar.g(0) <= this.f75207m.C()) {
            return -3;
        }
        v();
        return this.f75207m.S(q1Var, decoderInputBuffer, i10, this.f75217w);
    }

    public long b(long j10, d3 d3Var) {
        return this.f75199e.b(j10, d3Var);
    }

    @Override
    public boolean continueLoading(long j10) {
        List listEmptyList;
        long j11;
        if (this.f75217w || this.f75203i.i() || this.f75203i.h()) {
            return false;
        }
        boolean zU = u();
        if (zU) {
            listEmptyList = Collections.emptyList();
            j11 = this.f75213s;
        } else {
            listEmptyList = this.f75206l;
            j11 = r().f75191h;
        }
        this.f75199e.g(j10, j11, listEmptyList, this.f75204j);
        h hVar = this.f75204j;
        boolean z10 = hVar.f75194b;
        f fVar = hVar.f75193a;
        hVar.a();
        if (z10) {
            this.f75213s = C.TIME_UNSET;
            this.f75217w = true;
            return true;
        }
        if (fVar == null) {
            return false;
        }
        this.f75210p = fVar;
        if (t(fVar)) {
            x9.a aVar = (x9.a) fVar;
            if (zU) {
                long j12 = aVar.f75190g;
                long j13 = this.f75213s;
                if (j12 != j13) {
                    this.f75207m.b0(j13);
                    for (a0 a0Var : this.f75208n) {
                        a0Var.b0(this.f75213s);
                    }
                }
                this.f75213s = C.TIME_UNSET;
            }
            aVar.i(this.f75209o);
            this.f75205k.add(aVar);
        } else if (fVar instanceof m) {
            ((m) fVar).e(this.f75209o);
        }
        this.f75201g.A(new v9.h(fVar.f75184a, fVar.f75185b, this.f75203i.m(fVar, this, this.f75202h.a(fVar.f75186c))), fVar.f75186c, this.f75195a, fVar.f75187d, fVar.f75188e, fVar.f75189f, fVar.f75190g, fVar.f75191h);
        return true;
    }

    public void discardBuffer(long j10, boolean z10) {
        if (u()) {
            return;
        }
        int iX = this.f75207m.x();
        this.f75207m.q(j10, z10, true);
        int iX2 = this.f75207m.x();
        if (iX2 > iX) {
            long jY = this.f75207m.y();
            int i10 = 0;
            while (true) {
                a0[] a0VarArr = this.f75208n;
                if (i10 >= a0VarArr.length) {
                    break;
                }
                a0VarArr[i10].q(jY, z10, this.f75198d[i10]);
                i10++;
            }
        }
        m(iX2);
    }

    @Override
    public long getBufferedPositionUs() {
        if (this.f75217w) {
            return Long.MIN_VALUE;
        }
        if (u()) {
            return this.f75213s;
        }
        long jMax = this.f75214t;
        x9.a aVarR = r();
        if (!aVarR.f()) {
            if (this.f75205k.size() > 1) {
                ArrayList arrayList = this.f75205k;
                aVarR = (x9.a) arrayList.get(arrayList.size() - 2);
            } else {
                aVarR = null;
            }
        }
        if (aVarR != null) {
            jMax = Math.max(jMax, aVarR.f75191h);
        }
        return Math.max(jMax, this.f75207m.z());
    }

    @Override
    public long getNextLoadPositionUs() {
        if (u()) {
            return this.f75213s;
        }
        if (this.f75217w) {
            return Long.MIN_VALUE;
        }
        return r().f75191h;
    }

    @Override
    public boolean isLoading() {
        return this.f75203i.i();
    }

    @Override
    public boolean isReady() {
        return !u() && this.f75207m.K(this.f75217w);
    }

    @Override
    public void maybeThrowError() throws IOException {
        this.f75203i.maybeThrowError();
        this.f75207m.N();
        if (this.f75203i.i()) {
            return;
        }
        this.f75199e.maybeThrowError();
    }

    @Override
    public void onLoaderReleased() {
        this.f75207m.T();
        for (a0 a0Var : this.f75208n) {
            a0Var.T();
        }
        this.f75199e.release();
        b bVar = this.f75212r;
        if (bVar != null) {
            bVar.a(this);
        }
    }

    public j q() {
        return this.f75199e;
    }

    @Override
    public void reevaluateBuffer(long j10) {
        if (this.f75203i.h() || u()) {
            return;
        }
        if (!this.f75203i.i()) {
            int preferredQueueSize = this.f75199e.getPreferredQueueSize(j10, this.f75206l);
            if (preferredQueueSize < this.f75205k.size()) {
                o(preferredQueueSize);
                return;
            }
            return;
        }
        f fVar = (f) com.google.android.exoplayer2.util.a.e(this.f75210p);
        if (!(t(fVar) && s(this.f75205k.size() - 1)) && this.f75199e.d(j10, fVar, this.f75206l)) {
            this.f75203i.e();
            if (t(fVar)) {
                this.f75216v = (x9.a) fVar;
            }
        }
    }

    @Override
    public int skipData(long j10) {
        if (u()) {
            return 0;
        }
        int iE = this.f75207m.E(j10, this.f75217w);
        x9.a aVar = this.f75216v;
        if (aVar != null) {
            iE = Math.min(iE, aVar.g(0) - this.f75207m.C());
        }
        this.f75207m.e0(iE);
        v();
        return iE;
    }

    boolean u() {
        return this.f75213s != C.TIME_UNSET;
    }

    @Override
    public void j(f fVar, long j10, long j11, boolean z10) {
        this.f75210p = null;
        this.f75216v = null;
        v9.h hVar = new v9.h(fVar.f75184a, fVar.f75185b, fVar.d(), fVar.c(), j10, j11, fVar.a());
        this.f75202h.b(fVar.f75184a);
        this.f75201g.r(hVar, fVar.f75186c, this.f75195a, fVar.f75187d, fVar.f75188e, fVar.f75189f, fVar.f75190g, fVar.f75191h);
        if (z10) {
            return;
        }
        if (u()) {
            D();
        } else if (t(fVar)) {
            p(this.f75205k.size() - 1);
            if (this.f75205k.isEmpty()) {
                this.f75213s = this.f75214t;
            }
        }
        this.f75200f.g(this);
    }

    @Override
    public void l(f fVar, long j10, long j11) {
        this.f75210p = null;
        this.f75199e.h(fVar);
        v9.h hVar = new v9.h(fVar.f75184a, fVar.f75185b, fVar.d(), fVar.c(), j10, j11, fVar.a());
        this.f75202h.b(fVar.f75184a);
        this.f75201g.u(hVar, fVar.f75186c, this.f75195a, fVar.f75187d, fVar.f75188e, fVar.f75189f, fVar.f75190g, fVar.f75191h);
        this.f75200f.g(this);
    }

    @Override
    public Loader.c n(f fVar, long j10, long j11, IOException iOException, int i10) {
        Loader.c cVarG;
        long jA = fVar.a();
        boolean zT = t(fVar);
        int size = this.f75205k.size() - 1;
        boolean z10 = (jA != 0 && zT && s(size)) ? false : true;
        v9.h hVar = new v9.h(fVar.f75184a, fVar.f75185b, fVar.d(), fVar.c(), j10, j11, jA);
        z.c cVar = new z.c(hVar, new v9.i(fVar.f75186c, this.f75195a, fVar.f75187d, fVar.f75188e, fVar.f75189f, p0.e1(fVar.f75190g), p0.e1(fVar.f75191h)), iOException, i10);
        if (!this.f75199e.f(fVar, z10, cVar, this.f75202h)) {
            cVarG = null;
        } else if (z10) {
            cVarG = Loader.f26474f;
            if (zT) {
                com.google.android.exoplayer2.util.a.g(p(size) == fVar);
                if (this.f75205k.isEmpty()) {
                    this.f75213s = this.f75214t;
                }
            }
        } else {
            com.google.android.exoplayer2.util.s.i("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
            cVarG = null;
        }
        if (cVarG == null) {
            long jC = this.f75202h.c(cVar);
            cVarG = jC != C.TIME_UNSET ? Loader.g(false, jC) : Loader.f26475g;
        }
        boolean zC = cVarG.c();
        this.f75201g.w(hVar, fVar.f75186c, this.f75195a, fVar.f75187d, fVar.f75188e, fVar.f75189f, fVar.f75190g, fVar.f75191h, iOException, !zC);
        if (!zC) {
            this.f75210p = null;
            this.f75202h.b(fVar.f75184a);
            this.f75200f.g(this);
        }
        return cVarG;
    }

    public final class a implements s {

        public final i f75218a;

        private final a0 f75219b;

        private final int f75220c;

        private boolean f75221d;

        public a(i iVar, a0 a0Var, int i10) {
            this.f75218a = iVar;
            this.f75219b = a0Var;
            this.f75220c = i10;
        }

        private void b() {
            if (this.f75221d) {
                return;
            }
            i.this.f75201g.i(i.this.f75196b[this.f75220c], i.this.f75197c[this.f75220c], 0, null, i.this.f75214t);
            this.f75221d = true;
        }

        @Override
        public int a(q1 q1Var, DecoderInputBuffer decoderInputBuffer, int i10) {
            if (i.this.u()) {
                return -3;
            }
            if (i.this.f75216v != null && i.this.f75216v.g(this.f75220c + 1) <= this.f75219b.C()) {
                return -3;
            }
            b();
            return this.f75219b.S(q1Var, decoderInputBuffer, i10, i.this.f75217w);
        }

        public void c() {
            com.google.android.exoplayer2.util.a.g(i.this.f75198d[this.f75220c]);
            i.this.f75198d[this.f75220c] = false;
        }

        @Override
        public boolean isReady() {
            return !i.this.u() && this.f75219b.K(i.this.f75217w);
        }

        @Override
        public int skipData(long j10) {
            if (i.this.u()) {
                return 0;
            }
            int iE = this.f75219b.E(j10, i.this.f75217w);
            if (i.this.f75216v != null) {
                iE = Math.min(iE, i.this.f75216v.g(this.f75220c + 1) - this.f75219b.C());
            }
            this.f75219b.e0(iE);
            if (iE > 0) {
                b();
            }
            return iE;
        }

        @Override
        public void maybeThrowError() {
        }
    }
}
