package com.google.android.exoplayer2.source.dash;

import android.os.SystemClock;
import com.google.android.exoplayer2.d3;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.upstream.HttpDataSource$InvalidResponseCodeException;
import com.google.android.exoplayer2.upstream.a0;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.upstream.z;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g9.u1;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import na.s;
import x9.f;
import x9.g;
import x9.h;
import x9.m;
import x9.n;
import x9.o;
import x9.p;
import z9.i;
import z9.j;

public class c implements com.google.android.exoplayer2.source.dash.a {

    private final a0 f25190a;

    private final y9.b f25191b;

    private final int[] f25192c;

    private final int f25193d;

    private final k f25194e;

    private final long f25195f;

    private final int f25196g;

    private final e.c f25197h;

    protected final b[] f25198i;

    private s f25199j;

    private z9.c f25200k;

    private int f25201l;

    private IOException f25202m;

    private boolean f25203n;

    public static final class a implements com.google.android.exoplayer2.source.dash.a.InterfaceC0346a {

        private final k.a f25204a;

        private final int f25205b;

        private final g.a f25206c;

        public a(k.a aVar) {
            this(aVar, 1);
        }

        @Override
        public com.google.android.exoplayer2.source.dash.a a(a0 a0Var, z9.c cVar, y9.b bVar, int i10, int[] iArr, s sVar, int i11, long j10, boolean z10, List list, e.c cVar2, k0 k0Var, u1 u1Var) {
            k kVarCreateDataSource = this.f25204a.createDataSource();
            if (k0Var != null) {
                kVarCreateDataSource.e(k0Var);
            }
            return new c(this.f25206c, a0Var, cVar, bVar, i10, iArr, sVar, i11, kVarCreateDataSource, j10, this.f25205b, z10, list, cVar2, u1Var);
        }

        public a(k.a aVar, int i10) {
            this(x9.e.f75166j, aVar, i10);
        }

        public a(g.a aVar, k.a aVar2, int i10) {
            this.f25206c = aVar;
            this.f25204a = aVar2;
            this.f25205b = i10;
        }
    }

    protected static final class b {

        final g f25207a;

        public final j f25208b;

        public final z9.b f25209c;

        public final y9.e f25210d;

        private final long f25211e;

        private final long f25212f;

        b(long j10, j jVar, z9.b bVar, g gVar, long j11, y9.e eVar) {
            this.f25211e = j10;
            this.f25208b = jVar;
            this.f25209c = bVar;
            this.f25212f = j11;
            this.f25207a = gVar;
            this.f25210d = eVar;
        }

        b b(long j10, j jVar) throws BehindLiveWindowException {
            long jE;
            y9.e eVarK = this.f25208b.k();
            y9.e eVarK2 = jVar.k();
            if (eVarK == null) {
                return new b(j10, jVar, this.f25209c, this.f25207a, this.f25212f, eVarK);
            }
            if (!eVarK.g()) {
                return new b(j10, jVar, this.f25209c, this.f25207a, this.f25212f, eVarK2);
            }
            long jF = eVarK.f(j10);
            if (jF == 0) {
                return new b(j10, jVar, this.f25209c, this.f25207a, this.f25212f, eVarK2);
            }
            long jH = eVarK.h();
            long timeUs = eVarK.getTimeUs(jH);
            long jE2 = jF + jH;
            long j11 = jE2 - 1;
            long timeUs2 = eVarK.getTimeUs(j11) + eVarK.a(j11, j10);
            long jH2 = eVarK2.h();
            long timeUs3 = eVarK2.getTimeUs(jH2);
            long j12 = this.f25212f;
            if (timeUs2 == timeUs3) {
                jE = j12 + (jE2 - jH2);
            } else {
                if (timeUs2 < timeUs3) {
                    throw new BehindLiveWindowException();
                }
                if (timeUs3 < timeUs) {
                    jE = j12 - (eVarK2.e(timeUs, j10) - jH);
                } else {
                    jE2 = eVarK.e(timeUs3, j10);
                    jE = j12 + (jE2 - jH2);
                }
            }
            return new b(j10, jVar, this.f25209c, this.f25207a, jE, eVarK2);
        }

        b c(y9.e eVar) {
            return new b(this.f25211e, this.f25208b, this.f25209c, this.f25207a, this.f25212f, eVar);
        }

        b d(z9.b bVar) {
            return new b(this.f25211e, this.f25208b, bVar, this.f25207a, this.f25212f, this.f25210d);
        }

        public long e(long j10) {
            return this.f25210d.b(this.f25211e, j10) + this.f25212f;
        }

        public long f() {
            return this.f25210d.h() + this.f25212f;
        }

        public long g(long j10) {
            return (e(j10) + this.f25210d.i(this.f25211e, j10)) - 1;
        }

        public long h() {
            return this.f25210d.f(this.f25211e);
        }

        public long i(long j10) {
            return k(j10) + this.f25210d.a(j10 - this.f25212f, this.f25211e);
        }

        public long j(long j10) {
            return this.f25210d.e(j10, this.f25211e) + this.f25212f;
        }

        public long k(long j10) {
            return this.f25210d.getTimeUs(j10 - this.f25212f);
        }

        public i l(long j10) {
            return this.f25210d.d(j10 - this.f25212f);
        }

        public boolean m(long j10, long j11) {
            return this.f25210d.g() || j11 == C.TIME_UNSET || i(j10) <= j11;
        }
    }

    protected static final class C0347c extends x9.b {

        private final b f25213e;

        private final long f25214f;

        public C0347c(b bVar, long j10, long j11, long j12) {
            super(j10, j11);
            this.f25213e = bVar;
            this.f25214f = j12;
        }

        @Override
        public long a() {
            c();
            return this.f25213e.k(d());
        }

        @Override
        public long b() {
            c();
            return this.f25213e.i(d());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(g.a aVar, a0 a0Var, z9.c cVar, y9.b bVar, int i10, int[] iArr, s sVar, int i11, k kVar, long j10, int i12, boolean z10, List list, e.c cVar2, u1 u1Var) {
        this.f25190a = a0Var;
        this.f25200k = cVar;
        this.f25191b = bVar;
        this.f25192c = iArr;
        this.f25199j = sVar;
        this.f25193d = i11;
        this.f25194e = kVar;
        this.f25201l = i10;
        this.f25195f = j10;
        this.f25196g = i12;
        this.f25197h = cVar2;
        long jF = cVar.f(i10);
        ArrayList arrayListL = l();
        this.f25198i = new b[sVar.length()];
        int i13 = 0;
        while (i13 < this.f25198i.length) {
            j jVar = (j) arrayListL.get(sVar.getIndexInTrackGroup(i13));
            z9.b bVarJ = bVar.j(jVar.f76690c);
            int i14 = i13;
            this.f25198i[i14] = new b(jF, jVar, bVarJ == null ? (z9.b) jVar.f76690c.get(0) : bVarJ, aVar.a(i11, jVar.f76689b, z10, list, cVar2, u1Var), 0L, jVar.k());
            i13 = i14 + 1;
        }
    }

    private z.a i(s sVar, List list) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int length = sVar.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (sVar.d(i11, jElapsedRealtime)) {
                i10++;
            }
        }
        int iF = y9.b.f(list);
        return new z.a(iF, iF - this.f25191b.g(list), length, i10);
    }

    private long j(long j10, long j11) {
        if (!this.f25200k.f76642d) {
            return C.TIME_UNSET;
        }
        return Math.max(0L, Math.min(k(j10), this.f25198i[0].i(this.f25198i[0].g(j10))) - j11);
    }

    private long k(long j10) {
        z9.c cVar = this.f25200k;
        long j11 = cVar.f76639a;
        return j11 == C.TIME_UNSET ? C.TIME_UNSET : j10 - p0.B0(j11 + cVar.c(this.f25201l).f76675b);
    }

    private ArrayList l() {
        List list = this.f25200k.c(this.f25201l).f76676c;
        ArrayList arrayList = new ArrayList();
        for (int i10 : this.f25192c) {
            arrayList.addAll(((z9.a) list.get(i10)).f76631c);
        }
        return arrayList;
    }

    private long m(b bVar, n nVar, long j10, long j11, long j12) {
        return nVar != null ? nVar.e() : p0.r(bVar.j(j10), j11, j12);
    }

    private b p(int i10) {
        b bVar = this.f25198i[i10];
        z9.b bVarJ = this.f25191b.j(bVar.f25208b.f76690c);
        if (bVarJ == null || bVarJ.equals(bVar.f25209c)) {
            return bVar;
        }
        b bVarD = bVar.d(bVarJ);
        this.f25198i[i10] = bVarD;
        return bVarD;
    }

    @Override
    public void a(s sVar) {
        this.f25199j = sVar;
    }

    @Override
    public long b(long j10, d3 d3Var) {
        for (b bVar : this.f25198i) {
            if (bVar.f25210d != null) {
                long j11 = bVar.j(j10);
                long jK = bVar.k(j11);
                long jH = bVar.h();
                return d3Var.a(j10, jK, (jK >= j10 || (jH != -1 && j11 >= (bVar.f() + jH) - 1)) ? jK : bVar.k(j11 + 1));
            }
        }
        return j10;
    }

    @Override
    public boolean d(long j10, f fVar, List list) {
        if (this.f25202m != null) {
            return false;
        }
        return this.f25199j.e(j10, fVar, list);
    }

    @Override
    public void e(z9.c cVar, int i10) {
        try {
            this.f25200k = cVar;
            this.f25201l = i10;
            long jF = cVar.f(i10);
            ArrayList arrayListL = l();
            for (int i11 = 0; i11 < this.f25198i.length; i11++) {
                j jVar = (j) arrayListL.get(this.f25199j.getIndexInTrackGroup(i11));
                b[] bVarArr = this.f25198i;
                bVarArr[i11] = bVarArr[i11].b(jF, jVar);
            }
        } catch (BehindLiveWindowException e10) {
            this.f25202m = e10;
        }
    }

    @Override
    public boolean f(f fVar, boolean z10, z.c cVar, z zVar) {
        z.b bVarD;
        if (!z10) {
            return false;
        }
        e.c cVar2 = this.f25197h;
        if (cVar2 != null && cVar2.j(fVar)) {
            return true;
        }
        if (!this.f25200k.f76642d && (fVar instanceof n)) {
            IOException iOException = cVar.f26772c;
            if ((iOException instanceof HttpDataSource$InvalidResponseCodeException) && ((HttpDataSource$InvalidResponseCodeException) iOException).responseCode == 404) {
                b bVar = this.f25198i[this.f25199j.g(fVar.f75187d)];
                long jH = bVar.h();
                if (jH != -1 && jH != 0) {
                    if (((n) fVar).e() > (bVar.f() + jH) - 1) {
                        this.f25203n = true;
                        return true;
                    }
                }
            }
        }
        b bVar2 = this.f25198i[this.f25199j.g(fVar.f75187d)];
        z9.b bVarJ = this.f25191b.j(bVar2.f25208b.f76690c);
        if (bVarJ != null && !bVar2.f25209c.equals(bVarJ)) {
            return true;
        }
        z.a aVarI = i(this.f25199j, bVar2.f25208b.f76690c);
        if ((!aVarI.a(2) && !aVarI.a(1)) || (bVarD = zVar.d(aVarI, cVar)) == null || !aVarI.a(bVarD.f26768a)) {
            return false;
        }
        int i10 = bVarD.f26768a;
        if (i10 == 2) {
            s sVar = this.f25199j;
            return sVar.blacklist(sVar.g(fVar.f75187d), bVarD.f26769b);
        }
        if (i10 != 1) {
            return false;
        }
        this.f25191b.e(bVar2.f25209c, bVarD.f26769b);
        return true;
    }

    @Override
    public void g(long j10, long j11, List list, h hVar) {
        int i10;
        int i11;
        o[] oVarArr;
        long j12;
        long j13;
        if (this.f25202m != null) {
            return;
        }
        long j14 = j11 - j10;
        long jB0 = p0.B0(this.f25200k.f76639a) + p0.B0(this.f25200k.c(this.f25201l).f76675b) + j11;
        e.c cVar = this.f25197h;
        if (cVar == null || !cVar.h(jB0)) {
            long jB1 = p0.B0(p0.b0(this.f25195f));
            long jK = k(jB1);
            n nVar = list.isEmpty() ? null : (n) list.get(list.size() - 1);
            int length = this.f25199j.length();
            o[] oVarArr2 = new o[length];
            int i12 = 0;
            while (i12 < length) {
                b bVar = this.f25198i[i12];
                if (bVar.f25210d == null) {
                    oVarArr2[i12] = o.f75236a;
                    i10 = i12;
                    i11 = length;
                    oVarArr = oVarArr2;
                    j12 = j14;
                    j13 = jB1;
                } else {
                    long jE = bVar.e(jB1);
                    long jG = bVar.g(jB1);
                    i10 = i12;
                    i11 = length;
                    oVarArr = oVarArr2;
                    j12 = j14;
                    j13 = jB1;
                    long jM = m(bVar, nVar, j11, jE, jG);
                    if (jM < jE) {
                        oVarArr[i10] = o.f75236a;
                    } else {
                        oVarArr[i10] = new C0347c(p(i10), jM, jG, jK);
                    }
                }
                i12 = i10 + 1;
                jB1 = j13;
                length = i11;
                oVarArr2 = oVarArr;
                j14 = j12;
            }
            long j15 = j14;
            long j16 = jB1;
            this.f25199j.f(j10, j15, j(j16, j10), list, oVarArr2);
            b bVarP = p(this.f25199j.getSelectedIndex());
            g gVar = bVarP.f25207a;
            if (gVar != null) {
                j jVar = bVarP.f25208b;
                i iVarM = gVar.c() == null ? jVar.m() : null;
                i iVarL = bVarP.f25210d == null ? jVar.l() : null;
                if (iVarM != null || iVarL != null) {
                    hVar.f75193a = n(bVarP, this.f25194e, this.f25199j.getSelectedFormat(), this.f25199j.getSelectionReason(), this.f25199j.getSelectionData(), iVarM, iVarL);
                    return;
                }
            }
            long j17 = bVarP.f25211e;
            long j18 = C.TIME_UNSET;
            boolean z10 = j17 != C.TIME_UNSET;
            if (bVarP.h() == 0) {
                hVar.f75194b = z10;
                return;
            }
            long jE2 = bVarP.e(j16);
            long jG2 = bVarP.g(j16);
            long jM2 = m(bVarP, nVar, j11, jE2, jG2);
            if (jM2 < jE2) {
                this.f25202m = new BehindLiveWindowException();
                return;
            }
            if (jM2 > jG2 || (this.f25203n && jM2 >= jG2)) {
                hVar.f75194b = z10;
                return;
            }
            if (z10 && bVarP.k(jM2) >= j17) {
                hVar.f75194b = true;
                return;
            }
            int iMin = (int) Math.min(this.f25196g, (jG2 - jM2) + 1);
            if (j17 != C.TIME_UNSET) {
                while (iMin > 1 && bVarP.k((((long) iMin) + jM2) - 1) >= j17) {
                    iMin--;
                }
            }
            int i13 = iMin;
            if (list.isEmpty()) {
                j18 = j11;
            }
            hVar.f75193a = o(bVarP, this.f25194e, this.f25193d, this.f25199j.getSelectedFormat(), this.f25199j.getSelectionReason(), this.f25199j.getSelectionData(), jM2, i13, j18, jK);
        }
    }

    @Override
    public int getPreferredQueueSize(long j10, List list) {
        return (this.f25202m != null || this.f25199j.length() < 2) ? list.size() : this.f25199j.evaluateQueueSize(j10, list);
    }

    @Override
    public void h(f fVar) {
        i9.d dVarB;
        if (fVar instanceof m) {
            int iG = this.f25199j.g(((m) fVar).f75187d);
            b bVar = this.f25198i[iG];
            if (bVar.f25210d == null && (dVarB = bVar.f25207a.b()) != null) {
                this.f25198i[iG] = bVar.c(new y9.g(dVarB, bVar.f25208b.f76691d));
            }
        }
        e.c cVar = this.f25197h;
        if (cVar != null) {
            cVar.i(fVar);
        }
    }

    @Override
    public void maybeThrowError() throws IOException {
        IOException iOException = this.f25202m;
        if (iOException != null) {
            throw iOException;
        }
        this.f25190a.maybeThrowError();
    }

    protected f n(b bVar, k kVar, p1 p1Var, int i10, Object obj, i iVar, i iVar2) {
        i iVar3 = iVar;
        j jVar = bVar.f25208b;
        if (iVar3 != null) {
            i iVarA = iVar3.a(iVar2, bVar.f25209c.f76635a);
            if (iVarA != null) {
                iVar3 = iVarA;
            }
        } else {
            iVar3 = iVar2;
        }
        return new m(kVar, y9.f.a(jVar, bVar.f25209c.f76635a, iVar3, 0), p1Var, i10, obj, bVar.f25207a);
    }

    protected f o(b bVar, k kVar, int i10, p1 p1Var, int i11, Object obj, long j10, int i12, long j11, long j12) {
        j jVar = bVar.f25208b;
        long jK = bVar.k(j10);
        i iVarL = bVar.l(j10);
        if (bVar.f25207a == null) {
            return new p(kVar, y9.f.a(jVar, bVar.f25209c.f76635a, iVarL, bVar.m(j10, j12) ? 0 : 8), p1Var, i11, obj, jK, bVar.i(j10), j10, i10, p1Var);
        }
        int i13 = 1;
        int i14 = 1;
        while (i13 < i12) {
            i iVarA = iVarL.a(bVar.l(((long) i13) + j10), bVar.f25209c.f76635a);
            if (iVarA == null) {
                break;
            }
            i14++;
            i13++;
            iVarL = iVarA;
        }
        long j13 = (((long) i14) + j10) - 1;
        long jI = bVar.i(j13);
        long j14 = bVar.f25211e;
        return new x9.k(kVar, y9.f.a(jVar, bVar.f25209c.f76635a, iVarL, bVar.m(j13, j12) ? 0 : 8), p1Var, i11, obj, jK, jI, j11, (j14 == C.TIME_UNSET || j14 > jI) ? -9223372036854775807L : j14, j10, i14, -jVar.f76691d, bVar.f25207a);
    }

    @Override
    public void release() {
        for (b bVar : this.f25198i) {
            g gVar = bVar.f25207a;
            if (gVar != null) {
                gVar.release();
            }
        }
    }
}
