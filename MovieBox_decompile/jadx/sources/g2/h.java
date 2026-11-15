package g2;

import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.y;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.drm.t;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.source.e0;
import androidx.media3.exoplayer.source.f0;
import androidx.media3.exoplayer.source.s;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.v2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import f2.u;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class h implements u, f0, Loader.b, Loader.e {

    public final int f60606a;

    private final int[] f60607b;

    private final r[] f60608c;

    private final boolean[] f60609d;

    private final i f60610e;

    private final f0.a f60611f;

    private final s.a f60612g;

    private final androidx.media3.exoplayer.upstream.m f60613h;

    private final Loader f60614i;

    private final g f60615j;

    private final ArrayList f60616k;

    private final List f60617l;

    private final e0 f60618m;

    private final e0[] f60619n;

    private final c f60620o;

    private e f60621p;

    private r f60622q;

    private b f60623r;

    private long f60624s;

    private long f60625t;

    private int f60626u;

    private g2.a f60627v;

    private boolean f60628w;

    private boolean f60629x;

    boolean f60630y;

    public interface b {
        void c(h hVar);
    }

    public h(int i10, int[] iArr, r[] rVarArr, i iVar, f0.a aVar, androidx.media3.exoplayer.upstream.b bVar, long j10, t tVar, androidx.media3.exoplayer.drm.r.a aVar2, androidx.media3.exoplayer.upstream.m mVar, s.a aVar3, boolean z10, androidx.media3.exoplayer.util.c cVar) {
        this.f60606a = i10;
        int i11 = 0;
        iArr = iArr == null ? new int[0] : iArr;
        this.f60607b = iArr;
        this.f60608c = rVarArr == null ? new r[0] : rVarArr;
        this.f60610e = iVar;
        this.f60611f = aVar;
        this.f60612g = aVar3;
        this.f60613h = mVar;
        this.f60628w = z10;
        this.f60614i = cVar != null ? new Loader(cVar) : new Loader("ChunkSampleStream");
        this.f60615j = new g();
        ArrayList arrayList = new ArrayList();
        this.f60616k = arrayList;
        this.f60617l = Collections.unmodifiableList(arrayList);
        int length = iArr.length;
        this.f60619n = new e0[length];
        this.f60609d = new boolean[length];
        int i12 = length + 1;
        int[] iArr2 = new int[i12];
        e0[] e0VarArr = new e0[i12];
        e0 e0VarL = e0.l(bVar, tVar, aVar2);
        this.f60618m = e0VarL;
        iArr2[0] = i10;
        e0VarArr[0] = e0VarL;
        while (i11 < length) {
            e0 e0VarM = e0.m(bVar);
            this.f60619n[i11] = e0VarM;
            int i13 = i11 + 1;
            e0VarArr[i13] = e0VarM;
            iArr2[i13] = this.f60607b[i11];
            i11 = i13;
        }
        this.f60620o = new c(iArr2, e0VarArr);
        this.f60624s = j10;
        this.f60625t = j10;
    }

    private void A(int i10) {
        g2.a aVar = (g2.a) this.f60616k.get(i10);
        r rVar = aVar.f60598d;
        if (!rVar.equals(this.f60622q)) {
            this.f60612g.j(this.f60606a, rVar, aVar.f60599e, aVar.f60600f, aVar.f60601g);
        }
        this.f60622q = rVar;
    }

    private int F(int i10, int i11) {
        do {
            i11++;
            if (i11 >= this.f60616k.size()) {
                return this.f60616k.size() - 1;
            }
        } while (((g2.a) this.f60616k.get(i11)).g(0) <= i10);
        return i11 - 1;
    }

    private void H() {
        this.f60618m.Y();
        for (e0 e0Var : this.f60619n) {
            e0Var.Y();
        }
    }

    private void n(int i10) {
        int iMin = Math.min(F(i10, 0), this.f60626u);
        if (iMin > 0) {
            a1.c1(this.f60616k, 0, iMin);
            this.f60626u -= iMin;
        }
    }

    private void r(int i10) {
        androidx.media3.common.util.a.g(!this.f60614i.i());
        int size = this.f60616k.size();
        while (true) {
            if (i10 >= size) {
                i10 = -1;
                break;
            } else if (!w(i10)) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 == -1) {
            return;
        }
        long j10 = v().f60602h;
        g2.a aVarS = s(i10);
        if (this.f60616k.isEmpty()) {
            this.f60624s = this.f60625t;
        }
        this.f60630y = false;
        this.f60612g.F(this.f60606a, aVarS.f60601g, j10);
    }

    private g2.a s(int i10) {
        g2.a aVar = (g2.a) this.f60616k.get(i10);
        ArrayList arrayList = this.f60616k;
        a1.c1(arrayList, i10, arrayList.size());
        this.f60626u = Math.max(this.f60626u, this.f60616k.size());
        int i11 = 0;
        this.f60618m.w(aVar.g(0));
        while (true) {
            e0[] e0VarArr = this.f60619n;
            if (i11 >= e0VarArr.length) {
                return aVar;
            }
            e0 e0Var = e0VarArr[i11];
            i11++;
            e0Var.w(aVar.g(i11));
        }
    }

    private g2.a v() {
        ArrayList arrayList = this.f60616k;
        return (g2.a) arrayList.get(arrayList.size() - 1);
    }

    private boolean w(int i10) {
        int iF;
        g2.a aVar = (g2.a) this.f60616k.get(i10);
        if (this.f60618m.F() > aVar.g(0)) {
            return true;
        }
        int i11 = 0;
        do {
            e0[] e0VarArr = this.f60619n;
            if (i11 >= e0VarArr.length) {
                return false;
            }
            iF = e0VarArr[i11].F();
            i11++;
        } while (iF <= aVar.g(i11));
        return true;
    }

    private boolean x(e eVar) {
        return eVar instanceof g2.a;
    }

    private void z() {
        int iF = F(this.f60618m.F(), this.f60626u - 1);
        while (true) {
            int i10 = this.f60626u;
            if (i10 > iF) {
                return;
            }
            this.f60626u = i10 + 1;
            A(i10);
        }
    }

    @Override
    public void q(e eVar, long j10, long j11, boolean z10) {
        this.f60621p = null;
        this.f60627v = null;
        f2.i iVar = new f2.i(eVar.f60595a, eVar.f60596b, eVar.d(), eVar.c(), j10, j11, eVar.a());
        this.f60613h.b(eVar.f60595a);
        this.f60612g.t(iVar, eVar.f60597c, this.f60606a, eVar.f60598d, eVar.f60599e, eVar.f60600f, eVar.f60601g, eVar.f60602h);
        if (z10) {
            return;
        }
        if (y()) {
            H();
        } else if (x(eVar)) {
            s(this.f60616k.size() - 1);
            if (this.f60616k.isEmpty()) {
                this.f60624s = this.f60625t;
            }
        }
        this.f60611f.h(this);
    }

    @Override
    public void p(e eVar, long j10, long j11) {
        this.f60621p = null;
        this.f60610e.c(eVar);
        f2.i iVar = new f2.i(eVar.f60595a, eVar.f60596b, eVar.d(), eVar.c(), j10, j11, eVar.a());
        this.f60613h.b(eVar.f60595a);
        this.f60612g.w(iVar, eVar.f60597c, this.f60606a, eVar.f60598d, eVar.f60599e, eVar.f60600f, eVar.f60601g, eVar.f60602h);
        this.f60611f.h(this);
    }

    @Override
    public Loader.c k(e eVar, long j10, long j11, IOException iOException, int i10) {
        Loader.c cVarG;
        long jA = eVar.a();
        boolean zX = x(eVar);
        int size = this.f60616k.size() - 1;
        boolean z10 = (jA != 0 && zX && w(size)) ? false : true;
        f2.i iVar = new f2.i(eVar.f60595a, eVar.f60596b, eVar.d(), eVar.c(), j10, j11, jA);
        androidx.media3.exoplayer.upstream.m.c cVar = new androidx.media3.exoplayer.upstream.m.c(iVar, new f2.j(eVar.f60597c, this.f60606a, eVar.f60598d, eVar.f60599e, eVar.f60600f, a1.y1(eVar.f60601g), a1.y1(eVar.f60602h)), iOException, i10);
        if (!this.f60610e.d(eVar, z10, cVar, this.f60613h)) {
            cVarG = null;
        } else if (z10) {
            cVarG = Loader.f12637f;
            if (zX) {
                androidx.media3.common.util.a.g(s(size) == eVar);
                if (this.f60616k.isEmpty()) {
                    this.f60624s = this.f60625t;
                }
            }
        } else {
            androidx.media3.common.util.u.h("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
            cVarG = null;
        }
        if (cVarG == null) {
            long jC = this.f60613h.c(cVar);
            cVarG = jC != C.TIME_UNSET ? Loader.g(false, jC) : Loader.f12638g;
        }
        boolean zC = cVarG.c();
        this.f60612g.y(iVar, eVar.f60597c, this.f60606a, eVar.f60598d, eVar.f60599e, eVar.f60600f, eVar.f60601g, eVar.f60602h, iOException, !zC);
        if (!zC) {
            this.f60621p = null;
            this.f60613h.b(eVar.f60595a);
            this.f60611f.h(this);
        }
        return cVarG;
    }

    @Override
    public void o(e eVar, long j10, long j11, int i10) {
        this.f60612g.C(i10 == 0 ? new f2.i(eVar.f60595a, eVar.f60596b, j10) : new f2.i(eVar.f60595a, eVar.f60596b, eVar.d(), eVar.c(), j10, j11, eVar.a()), eVar.f60597c, this.f60606a, eVar.f60598d, eVar.f60599e, eVar.f60600f, eVar.f60601g, eVar.f60602h, i10);
    }

    public void G(b bVar) {
        this.f60623r = bVar;
        this.f60618m.U();
        for (e0 e0Var : this.f60619n) {
            e0Var.U();
        }
        this.f60614i.l(this);
    }

    public void I(long j10) {
        g2.a aVar;
        boolean zC0;
        this.f60625t = j10;
        int i10 = 0;
        this.f60628w = false;
        if (y()) {
            this.f60624s = j10;
            return;
        }
        int i11 = 0;
        while (true) {
            if (i11 < this.f60616k.size()) {
                aVar = (g2.a) this.f60616k.get(i11);
                long j11 = aVar.f60601g;
                if (j11 == j10 && aVar.f60565k == C.TIME_UNSET) {
                    break;
                } else if (j11 <= j10) {
                    i11++;
                }
            }
            aVar = null;
            break;
        }
        if (aVar != null) {
            zC0 = this.f60618m.b0(aVar.g(0));
        } else {
            zC0 = this.f60618m.c0(j10, j10 < getNextLoadPositionUs());
        }
        if (zC0) {
            this.f60626u = F(this.f60618m.F(), 0);
            e0[] e0VarArr = this.f60619n;
            int length = e0VarArr.length;
            while (i10 < length) {
                e0VarArr[i10].c0(j10, true);
                i10++;
            }
            return;
        }
        this.f60624s = j10;
        this.f60630y = false;
        this.f60616k.clear();
        this.f60626u = 0;
        if (!this.f60614i.i()) {
            this.f60614i.f();
            H();
            return;
        }
        this.f60618m.s();
        e0[] e0VarArr2 = this.f60619n;
        int length2 = e0VarArr2.length;
        while (i10 < length2) {
            e0VarArr2[i10].s();
            i10++;
        }
        this.f60614i.e();
    }

    public a J(long j10, int i10) {
        for (int i11 = 0; i11 < this.f60619n.length; i11++) {
            if (this.f60607b[i11] == i10) {
                androidx.media3.common.util.a.g(!this.f60609d[i11]);
                this.f60609d[i11] = true;
                this.f60619n[i11].c0(j10, true);
                return new a(this, this.f60619n[i11], i11);
            }
        }
        throw new IllegalStateException();
    }

    @Override
    public boolean a(v2 v2Var) {
        List listEmptyList;
        long j10;
        if (this.f60630y || this.f60614i.i() || this.f60614i.h()) {
            return false;
        }
        boolean zY = y();
        if (zY) {
            listEmptyList = Collections.emptyList();
            j10 = this.f60624s;
        } else {
            listEmptyList = this.f60617l;
            j10 = v().f60602h;
        }
        this.f60610e.e(v2Var, j10, listEmptyList, this.f60615j);
        g gVar = this.f60615j;
        boolean z10 = gVar.f60605b;
        e eVar = gVar.f60604a;
        gVar.a();
        if (z10) {
            this.f60624s = C.TIME_UNSET;
            this.f60630y = true;
            return true;
        }
        if (eVar == null) {
            return false;
        }
        this.f60621p = eVar;
        if (x(eVar)) {
            g2.a aVar = (g2.a) eVar;
            if (zY) {
                long j11 = aVar.f60601g;
                long j12 = this.f60624s;
                if (j11 < j12) {
                    this.f60618m.e0(j12);
                    for (e0 e0Var : this.f60619n) {
                        e0Var.e0(this.f60624s);
                    }
                    if (this.f60628w) {
                        r rVar = aVar.f60598d;
                        this.f60629x = !y.a(rVar.f9849o, rVar.f9845k);
                    }
                }
                this.f60628w = false;
                this.f60624s = C.TIME_UNSET;
            }
            aVar.i(this.f60620o);
            this.f60616k.add(aVar);
        } else if (eVar instanceof l) {
            ((l) eVar).e(this.f60620o);
        }
        this.f60614i.m(eVar, this, this.f60613h.a(eVar.f60597c));
        return true;
    }

    public long b(long j10, c4 c4Var) {
        return this.f60610e.b(j10, c4Var);
    }

    @Override
    public int c(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i10) {
        if (y()) {
            return -3;
        }
        g2.a aVar = this.f60627v;
        if (aVar != null && aVar.g(0) <= this.f60618m.F()) {
            return -3;
        }
        z();
        return this.f60618m.V(s2Var, decoderInputBuffer, i10, this.f60630y);
    }

    public void discardBuffer(long j10, boolean z10) {
        if (y()) {
            return;
        }
        int iA = this.f60618m.A();
        this.f60618m.r(j10, z10, true);
        int iA2 = this.f60618m.A();
        if (iA2 > iA) {
            long jB = this.f60618m.B();
            int i10 = 0;
            while (true) {
                e0[] e0VarArr = this.f60619n;
                if (i10 >= e0VarArr.length) {
                    break;
                }
                e0VarArr[i10].r(jB, z10, this.f60609d[i10]);
                i10++;
            }
        }
        n(iA2);
    }

    @Override
    public long getBufferedPositionUs() {
        if (this.f60630y) {
            return Long.MIN_VALUE;
        }
        if (y()) {
            return this.f60624s;
        }
        long jMax = this.f60625t;
        g2.a aVarV = v();
        if (!aVarV.f()) {
            if (this.f60616k.size() > 1) {
                ArrayList arrayList = this.f60616k;
                aVarV = (g2.a) arrayList.get(arrayList.size() - 2);
            } else {
                aVarV = null;
            }
        }
        if (aVarV != null) {
            jMax = Math.max(jMax, aVarV.f60602h);
        }
        return Math.max(jMax, this.f60618m.C());
    }

    @Override
    public long getNextLoadPositionUs() {
        if (y()) {
            return this.f60624s;
        }
        if (this.f60630y) {
            return Long.MIN_VALUE;
        }
        return v().f60602h;
    }

    @Override
    public boolean isLoading() {
        return this.f60614i.i();
    }

    @Override
    public boolean isReady() {
        return !y() && this.f60618m.N(this.f60630y);
    }

    public boolean m() {
        try {
            return this.f60629x;
        } finally {
            this.f60629x = false;
        }
    }

    @Override
    public void maybeThrowError() throws IOException {
        this.f60614i.maybeThrowError();
        this.f60618m.Q();
        if (this.f60614i.i()) {
            return;
        }
        this.f60610e.maybeThrowError();
    }

    @Override
    public void onLoaderReleased() {
        this.f60618m.W();
        for (e0 e0Var : this.f60619n) {
            e0Var.W();
        }
        this.f60610e.release();
        b bVar = this.f60623r;
        if (bVar != null) {
            bVar.c(this);
        }
    }

    @Override
    public void reevaluateBuffer(long j10) {
        if (this.f60614i.h() || y()) {
            return;
        }
        if (!this.f60614i.i()) {
            int preferredQueueSize = this.f60610e.getPreferredQueueSize(j10, this.f60617l);
            if (preferredQueueSize < this.f60616k.size()) {
                r(preferredQueueSize);
                return;
            }
            return;
        }
        e eVar = (e) androidx.media3.common.util.a.e(this.f60621p);
        if (!(x(eVar) && w(this.f60616k.size() - 1)) && this.f60610e.f(j10, eVar, this.f60617l)) {
            this.f60614i.e();
            if (x(eVar)) {
                this.f60627v = (g2.a) eVar;
            }
        }
    }

    @Override
    public int skipData(long j10) {
        if (y()) {
            return 0;
        }
        int iH = this.f60618m.H(j10, this.f60630y);
        g2.a aVar = this.f60627v;
        if (aVar != null) {
            iH = Math.min(iH, aVar.g(0) - this.f60618m.F());
        }
        this.f60618m.h0(iH);
        z();
        return iH;
    }

    public void t(long j10) {
        androidx.media3.common.util.a.g(!this.f60614i.i());
        if (y() || j10 == C.TIME_UNSET || this.f60616k.isEmpty()) {
            return;
        }
        g2.a aVarV = v();
        long j11 = aVarV.f60566l;
        if (j11 == C.TIME_UNSET) {
            j11 = aVarV.f60602h;
        }
        if (j11 <= j10) {
            return;
        }
        long jC = this.f60618m.C();
        if (jC <= j10) {
            return;
        }
        this.f60618m.u(j10);
        for (e0 e0Var : this.f60619n) {
            e0Var.u(j10);
        }
        this.f60612g.F(this.f60606a, j10, jC);
    }

    public i u() {
        return this.f60610e;
    }

    boolean y() {
        return this.f60624s != C.TIME_UNSET;
    }

    public final class a implements u {

        public final h f60631a;

        private final e0 f60632b;

        private final int f60633c;

        private boolean f60634d;

        public a(h hVar, e0 e0Var, int i10) {
            this.f60631a = hVar;
            this.f60632b = e0Var;
            this.f60633c = i10;
        }

        private void a() {
            if (this.f60634d) {
                return;
            }
            h.this.f60612g.j(h.this.f60607b[this.f60633c], h.this.f60608c[this.f60633c], 0, null, h.this.f60625t);
            this.f60634d = true;
        }

        public void b() {
            androidx.media3.common.util.a.g(h.this.f60609d[this.f60633c]);
            h.this.f60609d[this.f60633c] = false;
        }

        @Override
        public int c(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i10) {
            if (h.this.y()) {
                return -3;
            }
            if (h.this.f60627v != null && h.this.f60627v.g(this.f60633c + 1) <= this.f60632b.F()) {
                return -3;
            }
            a();
            return this.f60632b.V(s2Var, decoderInputBuffer, i10, h.this.f60630y);
        }

        @Override
        public boolean isReady() {
            return !h.this.y() && this.f60632b.N(h.this.f60630y);
        }

        @Override
        public int skipData(long j10) {
            if (h.this.y()) {
                return 0;
            }
            int iH = this.f60632b.H(j10, h.this.f60630y);
            if (h.this.f60627v != null) {
                iH = Math.min(iH, h.this.f60627v.g(this.f60633c + 1) - this.f60632b.F());
            }
            this.f60632b.h0(iH);
            if (iH > 0) {
                a();
            }
            return iH;
        }

        @Override
        public void maybeThrowError() {
        }
    }
}
