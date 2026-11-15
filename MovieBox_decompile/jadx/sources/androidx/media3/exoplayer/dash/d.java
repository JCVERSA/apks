package androidx.media3.exoplayer.dash;

import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.r0;
import androidx.media3.common.y;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import androidx.media3.exoplayer.upstream.m;
import androidx.media3.exoplayer.upstream.p;
import androidx.media3.exoplayer.v2;
import com.google.common.collect.ImmutableMap;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g2.l;
import g2.o;
import h3.s;
import i2.z;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import k2.h;
import w1.n;
import x1.f4;
import y1.g;
import z1.i;
import z1.j;

public class d implements androidx.media3.exoplayer.dash.a {

    private final p f11123a;

    private final y1.b f11124b;

    private final int[] f11125c;

    private final int f11126d;

    private final androidx.media3.datasource.a f11127e;

    private final long f11128f;

    private final int f11129g;

    private final f.c f11130h;

    protected final b[] f11131i;

    private z f11132j;

    private z1.c f11133k;

    private int f11134l;

    private IOException f11135m;

    private boolean f11136n;

    private long f11137o = C.TIME_UNSET;

    public static final class a implements androidx.media3.exoplayer.dash.a.InterfaceC0089a {

        private final androidx.media3.datasource.a.InterfaceC0085a f11138a;

        private final int f11139b;

        private final g2.f.a f11140c;

        public a(androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a) {
            this(interfaceC0085a, 1);
        }

        @Override
        public r d(r rVar) {
            return this.f11140c.d(rVar);
        }

        @Override
        public androidx.media3.exoplayer.dash.a e(p pVar, z1.c cVar, y1.b bVar, int i10, int[] iArr, z zVar, int i11, long j10, boolean z10, List list, f.c cVar2, n nVar, f4 f4Var, androidx.media3.exoplayer.upstream.f fVar) {
            androidx.media3.datasource.a aVarCreateDataSource = this.f11138a.createDataSource();
            if (nVar != null) {
                aVarCreateDataSource.c(nVar);
            }
            return new d(this.f11140c, pVar, cVar, bVar, i10, iArr, zVar, i11, aVarCreateDataSource, j10, this.f11139b, z10, list, cVar2, f4Var, fVar);
        }

        @Override
        public a c(boolean z10) {
            this.f11140c.c(z10);
            return this;
        }

        @Override
        public a b(int i10) {
            this.f11140c.b(i10);
            return this;
        }

        @Override
        public a a(s.a aVar) {
            this.f11140c.a(aVar);
            return this;
        }

        public a(androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a, int i10) {
            this(new g2.d.b(), interfaceC0085a, i10);
        }

        public a(g2.f.a aVar, androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a, int i10) {
            this.f11140c = aVar;
            this.f11138a = interfaceC0085a;
            this.f11139b = i10;
        }
    }

    protected static final class b {

        final g2.f f11141a;

        public final j f11142b;

        public final z1.b f11143c;

        public final y1.e f11144d;

        private final long f11145e;

        private final long f11146f;

        b(long j10, j jVar, z1.b bVar, g2.f fVar, long j11, y1.e eVar) {
            this.f11145e = j10;
            this.f11142b = jVar;
            this.f11143c = bVar;
            this.f11146f = j11;
            this.f11141a = fVar;
            this.f11144d = eVar;
        }

        b b(long j10, j jVar) throws BehindLiveWindowException {
            long jE;
            y1.e eVarK = this.f11142b.k();
            y1.e eVarK2 = jVar.k();
            if (eVarK == null) {
                return new b(j10, jVar, this.f11143c, this.f11141a, this.f11146f, eVarK);
            }
            if (!eVarK.g()) {
                return new b(j10, jVar, this.f11143c, this.f11141a, this.f11146f, eVarK2);
            }
            long jF = eVarK.f(j10);
            if (jF == 0) {
                return new b(j10, jVar, this.f11143c, this.f11141a, this.f11146f, eVarK2);
            }
            androidx.media3.common.util.a.i(eVarK2);
            long jH = eVarK.h();
            long timeUs = eVarK.getTimeUs(jH);
            long jE2 = jF + jH;
            long j11 = jE2 - 1;
            long timeUs2 = eVarK.getTimeUs(j11) + eVarK.a(j11, j10);
            long jH2 = eVarK2.h();
            long timeUs3 = eVarK2.getTimeUs(jH2);
            long j12 = this.f11146f;
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
            return new b(j10, jVar, this.f11143c, this.f11141a, jE, eVarK2);
        }

        b c(y1.e eVar) {
            return new b(this.f11145e, this.f11142b, this.f11143c, this.f11141a, this.f11146f, eVar);
        }

        b d(z1.b bVar) {
            return new b(this.f11145e, this.f11142b, bVar, this.f11141a, this.f11146f, this.f11144d);
        }

        public long e(long j10) {
            return ((y1.e) androidx.media3.common.util.a.i(this.f11144d)).b(this.f11145e, j10) + this.f11146f;
        }

        public long f() {
            return ((y1.e) androidx.media3.common.util.a.i(this.f11144d)).h() + this.f11146f;
        }

        public long g(long j10) {
            return (e(j10) + ((y1.e) androidx.media3.common.util.a.i(this.f11144d)).i(this.f11145e, j10)) - 1;
        }

        public long h() {
            return ((y1.e) androidx.media3.common.util.a.i(this.f11144d)).f(this.f11145e);
        }

        public long i(long j10) {
            return k(j10) + ((y1.e) androidx.media3.common.util.a.i(this.f11144d)).a(j10 - this.f11146f, this.f11145e);
        }

        public long j(long j10) {
            return ((y1.e) androidx.media3.common.util.a.i(this.f11144d)).e(j10, this.f11145e) + this.f11146f;
        }

        public long k(long j10) {
            return ((y1.e) androidx.media3.common.util.a.i(this.f11144d)).getTimeUs(j10 - this.f11146f);
        }

        public i l(long j10) {
            return ((y1.e) androidx.media3.common.util.a.i(this.f11144d)).d(j10 - this.f11146f);
        }

        public boolean m(long j10, long j11) {
            return ((y1.e) androidx.media3.common.util.a.i(this.f11144d)).g() || j11 == C.TIME_UNSET || i(j10) <= j11;
        }
    }

    protected static final class c extends g2.b {

        private final b f11147e;

        private final long f11148f;

        public c(b bVar, long j10, long j11, long j12) {
            super(j10, j11);
            this.f11147e = bVar;
            this.f11148f = j12;
        }

        @Override
        public long a() {
            c();
            return this.f11147e.k(d());
        }

        @Override
        public long b() {
            c();
            return this.f11147e.i(d());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d(g2.f.a aVar, p pVar, z1.c cVar, y1.b bVar, int i10, int[] iArr, z zVar, int i11, androidx.media3.datasource.a aVar2, long j10, int i12, boolean z10, List list, f.c cVar2, f4 f4Var, androidx.media3.exoplayer.upstream.f fVar) {
        this.f11123a = pVar;
        this.f11133k = cVar;
        this.f11124b = bVar;
        this.f11125c = iArr;
        this.f11132j = zVar;
        this.f11126d = i11;
        this.f11127e = aVar2;
        this.f11134l = i10;
        this.f11128f = j10;
        this.f11129g = i12;
        this.f11130h = cVar2;
        long jF = cVar.f(i10);
        ArrayList arrayListL = l();
        this.f11131i = new b[zVar.length()];
        int i13 = 0;
        while (i13 < this.f11131i.length) {
            j jVar = (j) arrayListL.get(zVar.getIndexInTrackGroup(i13));
            z1.b bVarJ = bVar.j(jVar.f76557c);
            int i14 = i13;
            this.f11131i[i14] = new b(jF, jVar, bVarJ == null ? (z1.b) jVar.f76557c.get(0) : bVarJ, aVar.e(i11, jVar.f76556b, z10, list, cVar2, f4Var), 0L, jVar.k());
            i13 = i14 + 1;
        }
    }

    private m.a h(z zVar, List list) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int length = zVar.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (zVar.d(i11, jElapsedRealtime)) {
                i10++;
            }
        }
        int iF = y1.b.f(list);
        return new m.a(iF, iF - this.f11124b.g(list), length, i10);
    }

    private long i(long j10, long j11) {
        if (!this.f11133k.f76508d || this.f11131i[0].h() == 0) {
            return C.TIME_UNSET;
        }
        return Math.max(0L, Math.min(k(j10), this.f11131i[0].i(this.f11131i[0].g(j10))) - j11);
    }

    private Pair j(long j10, i iVar, b bVar) {
        long j11 = j10 + 1;
        if (j11 >= bVar.h()) {
            return null;
        }
        i iVarL = bVar.l(j11);
        String strA = r0.a(iVar.b(bVar.f11143c.f76501a), iVarL.b(bVar.f11143c.f76501a));
        String str = iVarL.f76551a + "-";
        if (iVarL.f76552b != -1) {
            str = str + (iVarL.f76551a + iVarL.f76552b);
        }
        return new Pair(strA, str);
    }

    private long k(long j10) {
        z1.c cVar = this.f11133k;
        long j11 = cVar.f76505a;
        return j11 == C.TIME_UNSET ? C.TIME_UNSET : j10 - a1.R0(j11 + cVar.c(this.f11134l).f76542b);
    }

    private ArrayList l() {
        List list = this.f11133k.c(this.f11134l).f76543c;
        ArrayList arrayList = new ArrayList();
        for (int i10 : this.f11125c) {
            arrayList.addAll(((z1.a) list.get(i10)).f76497c);
        }
        return arrayList;
    }

    private long m(b bVar, g2.m mVar, long j10, long j11, long j12) {
        return mVar != null ? mVar.e() : a1.q(bVar.j(j10), j11, j12);
    }

    private b p(int i10) {
        b bVar = this.f11131i[i10];
        z1.b bVarJ = this.f11124b.j(bVar.f11142b.f76557c);
        if (bVarJ == null || bVarJ.equals(bVar.f11143c)) {
            return bVar;
        }
        b bVarD = bVar.d(bVarJ);
        this.f11131i[i10] = bVarD;
        return bVarD;
    }

    @Override
    public void a(z zVar) {
        this.f11132j = zVar;
    }

    @Override
    public long b(long j10, c4 c4Var) {
        for (b bVar : this.f11131i) {
            if (bVar.f11144d != null) {
                long jH = bVar.h();
                if (jH != 0) {
                    long j11 = bVar.j(j10);
                    long jK = bVar.k(j11);
                    return c4Var.a(j10, jK, (jK >= j10 || (jH != -1 && j11 >= (bVar.f() + jH) - 1)) ? jK : bVar.k(j11 + 1));
                }
            }
        }
        return j10;
    }

    @Override
    public void c(g2.e eVar) {
        h hVarB;
        if (eVar instanceof l) {
            int iE = this.f11132j.e(((l) eVar).f60598d);
            b bVar = this.f11131i[iE];
            if (bVar.f11144d == null && (hVarB = ((g2.f) androidx.media3.common.util.a.i(bVar.f11141a)).b()) != null) {
                this.f11131i[iE] = bVar.c(new g(hVarB, bVar.f11142b.f76558d));
            }
        }
        f.c cVar = this.f11130h;
        if (cVar != null) {
            cVar.j(eVar);
        }
    }

    @Override
    public boolean d(g2.e eVar, boolean z10, m.c cVar, m mVar) {
        m.b bVarD;
        if (!z10) {
            return false;
        }
        f.c cVar2 = this.f11130h;
        if (cVar2 != null && cVar2.k(eVar)) {
            return true;
        }
        if (!this.f11133k.f76508d && (eVar instanceof g2.m)) {
            IOException iOException = cVar.f12700c;
            if ((iOException instanceof HttpDataSource.InvalidResponseCodeException) && ((HttpDataSource.InvalidResponseCodeException) iOException).responseCode == 404) {
                b bVar = this.f11131i[this.f11132j.e(eVar.f60598d)];
                long jH = bVar.h();
                if (jH != -1 && jH != 0) {
                    if (((g2.m) eVar).e() > (bVar.f() + jH) - 1) {
                        this.f11136n = true;
                        return true;
                    }
                }
            }
        }
        b bVar2 = this.f11131i[this.f11132j.e(eVar.f60598d)];
        z1.b bVarJ = this.f11124b.j(bVar2.f11142b.f76557c);
        if (bVarJ != null && !bVar2.f11143c.equals(bVarJ)) {
            return true;
        }
        m.a aVarH = h(this.f11132j, bVar2.f11142b.f76557c);
        if ((!aVarH.a(2) && !aVarH.a(1)) || (bVarD = mVar.d(aVarH, cVar)) == null || !aVarH.a(bVarD.f12696a)) {
            return false;
        }
        int i10 = bVarD.f12696a;
        if (i10 == 2) {
            z zVar = this.f11132j;
            return zVar.g(zVar.e(eVar.f60598d), bVarD.f12697b);
        }
        if (i10 != 1) {
            return false;
        }
        this.f11124b.e(bVar2.f11143c, bVarD.f12697b);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0153  */
    /* JADX WARN: Code duplicated, block: B:54:0x015e  */
    /* JADX WARN: Code duplicated, block: B:56:0x0161  */
    /* JADX WARN: Code duplicated, block: B:58:0x016b  */
    /* JADX WARN: Code duplicated, block: B:60:0x017a  */
    /* JADX WARN: Code duplicated, block: B:61:0x017c  */
    /* JADX WARN: Code duplicated, block: B:65:0x0192  */
    /* JADX WARN: Code duplicated, block: B:67:0x019a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v65 */
    /* JADX WARN: Type inference failed for: r0v66 */
    /* JADX WARN: Type inference failed for: r10v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r13v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    @Override
    public void e(v2 v2Var, long j10, List list, g2.g gVar) {
        boolean z10;
        boolean z11;
        ?? r10;
        ?? r11;
        long jE;
        long jG;
        ?? r12;
        ?? r13;
        long jM;
        long jI;
        ?? r14;
        int i10;
        int i11;
        g2.n[] nVarArr;
        long j11;
        long j12;
        if (this.f11135m != null) {
            return;
        }
        long j13 = v2Var.f12738a;
        long j14 = j10 - j13;
        long jR0 = a1.R0(this.f11133k.f76505a) + a1.R0(this.f11133k.c(this.f11134l).f76542b) + j10;
        f.c cVar = this.f11130h;
        if (cVar == null || !cVar.i(jR0)) {
            long jR1 = a1.R0(a1.h0(this.f11128f));
            long jK = k(jR1);
            g2.m mVar = list.isEmpty() ? null : (g2.m) list.get(list.size() - 1);
            int length = this.f11132j.length();
            g2.n[] nVarArr2 = new g2.n[length];
            int i12 = 0;
            while (i12 < length) {
                b bVar = this.f11131i[i12];
                if (bVar.f11144d == null) {
                    nVarArr2[i12] = g2.n.f60650a;
                    i10 = i12;
                    i11 = length;
                    nVarArr = nVarArr2;
                    j11 = j14;
                    j12 = jR1;
                } else {
                    long jE2 = bVar.e(jR1);
                    long jG2 = bVar.g(jR1);
                    i10 = i12;
                    i11 = length;
                    nVarArr = nVarArr2;
                    j11 = j14;
                    j12 = jR1;
                    long jM2 = m(bVar, mVar, j10, jE2, jG2);
                    if (jM2 < jE2) {
                        nVarArr[i10] = g2.n.f60650a;
                    } else {
                        nVarArr[i10] = new c(p(i10), jM2, jG2, jK);
                    }
                }
                i12 = i10 + 1;
                jR1 = j12;
                length = i11;
                nVarArr2 = nVarArr;
                j14 = j11;
            }
            long j15 = j14;
            long j16 = jR1;
            this.f11132j.f(j13, j15, i(j16, j13), list, nVarArr2);
            int selectedIndex = this.f11132j.getSelectedIndex();
            this.f11137o = SystemClock.elapsedRealtime();
            b bVarP = p(selectedIndex);
            g2.f fVar = bVarP.f11141a;
            if (fVar != null) {
                j jVar = bVarP.f11142b;
                i iVarM = fVar.c() == null ? jVar.m() : null;
                i iVarL = bVarP.f11144d == null ? jVar.l() : null;
                if (iVarM != null || iVarL != null) {
                    gVar.f60604a = n(bVarP, this.f11127e, this.f11132j.getSelectedFormat(), this.f11132j.getSelectionReason(), this.f11132j.getSelectionData(), iVarM, iVarL, null);
                    return;
                }
            }
            long j17 = bVarP.f11145e;
            z1.c cVar2 = this.f11133k;
            if (cVar2.f76508d) {
                z10 = true;
                r10 = 1;
                if (this.f11134l == cVar2.d() - 1) {
                    z11 = true;
                }
                long j18 = C.TIME_UNSET;
                if (z11 || j17 != C.TIME_UNSET) {
                    r11 = r10;
                } else {
                    r11 = 0;
                }
                if (bVarP.h() == 0) {
                    gVar.f60605b = r11;
                    return;
                }
                jE = bVarP.e(j16);
                jG = bVarP.g(j16);
                if (z11) {
                    jI = bVarP.i(jG);
                    if (jI + (jI - bVarP.k(jG)) >= j17) {
                        r12 = r11;
                        r14 = r10;
                    } else {
                        r12 = r11;
                        r14 = 0;
                    }
                    r12 = (r11 == true ? 1 : 0) & r14;
                }
                r12 = r11;
                r13 = r12;
                jM = m(bVarP, mVar, j10, jE, jG);
                if (jM < jE) {
                    this.f11135m = new BehindLiveWindowException();
                }
                if (jM <= jG || (this.f11136n && jM >= jG)) {
                    gVar.f60605b = r13;
                }
                if (r13 != 0 && bVarP.k(jM) >= j17) {
                    gVar.f60605b = r10;
                    return;
                }
                int iMin = (int) Math.min(this.f11129g, (jG - jM) + 1);
                if (j17 != C.TIME_UNSET) {
                    while (iMin > r10 && bVarP.k((((long) iMin) + jM) - 1) >= j17) {
                        iMin--;
                    }
                }
                int i13 = iMin;
                if (list.isEmpty()) {
                    j18 = j10;
                }
                gVar.f60604a = o(bVarP, this.f11127e, this.f11126d, this.f11132j.getSelectedFormat(), this.f11132j.getSelectionReason(), this.f11132j.getSelectionData(), jM, i13, j18, jK, null);
                return;
            }
            z10 = true;
            z11 = false;
            r10 = z10;
            long j19 = C.TIME_UNSET;
            if (z11) {
                r11 = r10;
            } else {
                r11 = r10;
            }
            if (bVarP.h() == 0) {
                gVar.f60605b = r11;
                return;
            }
            jE = bVarP.e(j16);
            jG = bVarP.g(j16);
            if (z11) {
                jI = bVarP.i(jG);
                if (jI + (jI - bVarP.k(jG)) >= j17) {
                    r12 = r11;
                    r14 = r10;
                } else {
                    r12 = r11;
                    r14 = 0;
                }
                r12 = (r11 == true ? 1 : 0) & r14;
            }
            r12 = r11;
            r13 = r12;
            jM = m(bVarP, mVar, j10, jE, jG);
            if (jM < jE) {
                this.f11135m = new BehindLiveWindowException();
            } else {
                if (jM <= jG) {
                }
                gVar.f60605b = r13;
            }
        }
    }

    @Override
    public boolean f(long j10, g2.e eVar, List list) {
        if (this.f11135m != null) {
            return false;
        }
        return this.f11132j.h(j10, eVar, list);
    }

    @Override
    public void g(z1.c cVar, int i10) {
        try {
            this.f11133k = cVar;
            this.f11134l = i10;
            long jF = cVar.f(i10);
            ArrayList arrayListL = l();
            for (int i11 = 0; i11 < this.f11131i.length; i11++) {
                j jVar = (j) arrayListL.get(this.f11132j.getIndexInTrackGroup(i11));
                b[] bVarArr = this.f11131i;
                bVarArr[i11] = bVarArr[i11].b(jF, jVar);
            }
        } catch (BehindLiveWindowException e10) {
            this.f11135m = e10;
        }
    }

    @Override
    public int getPreferredQueueSize(long j10, List list) {
        return (this.f11135m != null || this.f11132j.length() < 2) ? list.size() : this.f11132j.evaluateQueueSize(j10, list);
    }

    @Override
    public void maybeThrowError() throws IOException {
        IOException iOException = this.f11135m;
        if (iOException != null) {
            throw iOException;
        }
        this.f11123a.maybeThrowError();
    }

    protected g2.e n(b bVar, androidx.media3.datasource.a aVar, r rVar, int i10, Object obj, i iVar, i iVar2, androidx.media3.exoplayer.upstream.g.a aVar2) {
        i iVar3 = iVar;
        j jVar = bVar.f11142b;
        if (iVar3 != null) {
            i iVarA = iVar3.a(iVar2, bVar.f11143c.f76501a);
            if (iVarA != null) {
                iVar3 = iVarA;
            }
        } else {
            iVar3 = (i) androidx.media3.common.util.a.e(iVar2);
        }
        return new l(aVar, y1.f.a(jVar, bVar.f11143c.f76501a, iVar3, 0, ImmutableMap.of()), rVar, i10, obj, bVar.f11141a);
    }

    protected g2.e o(b bVar, androidx.media3.datasource.a aVar, int i10, r rVar, int i11, Object obj, long j10, int i12, long j11, long j12, androidx.media3.exoplayer.upstream.g.a aVar2) {
        j jVar = bVar.f11142b;
        long jK = bVar.k(j10);
        i iVarL = bVar.l(j10);
        if (bVar.f11141a == null) {
            return new o(aVar, y1.f.a(jVar, bVar.f11143c.f76501a, iVarL, bVar.m(j10, j12) ? 0 : 8, ImmutableMap.of()), rVar, i11, obj, jK, bVar.i(j10), j10, i10, rVar);
        }
        int i13 = 1;
        int i14 = 1;
        while (i13 < i12) {
            i iVarA = iVarL.a(bVar.l(((long) i13) + j10), bVar.f11143c.f76501a);
            if (iVarA == null) {
                break;
            }
            i14++;
            i13++;
            iVarL = iVarA;
        }
        long j13 = (((long) i14) + j10) - 1;
        long jI = bVar.i(j13);
        long j14 = bVar.f11145e;
        if (j14 == C.TIME_UNSET || j14 > jI) {
            j14 = -9223372036854775807L;
        }
        w1.h hVarA = y1.f.a(jVar, bVar.f11143c.f76501a, iVarL, bVar.m(j13, j12) ? 0 : 8, ImmutableMap.of());
        long j15 = -jVar.f76558d;
        if (y.q(rVar.f9849o)) {
            j15 += jK;
        }
        return new g2.j(aVar, hVarA, rVar, i11, obj, jK, jI, j11, j14, j10, i14, j15, bVar.f11141a);
    }

    @Override
    public void release() {
        for (b bVar : this.f11131i) {
            g2.f fVar = bVar.f11141a;
            if (fVar != null) {
                fVar.release();
            }
        }
    }
}
