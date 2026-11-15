package androidx.media3.exoplayer.hls;

import android.net.Uri;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.f0;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.r0;
import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import androidx.media3.exoplayer.v2;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.g3;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i2.z;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import x1.f4;

class e {

    private final g f11395a;

    private final androidx.media3.datasource.a f11396b;

    private final androidx.media3.datasource.a f11397c;

    private final t f11398d;

    private final Uri[] f11399e;

    private final androidx.media3.common.r[] f11400f;

    private final HlsPlaylistTracker f11401g;

    private final f0 f11402h;

    private final List f11403i;

    private final f4 f11405k;

    private final long f11406l;

    private boolean f11407m;

    private IOException f11409o;

    private Uri f11410p;

    private boolean f11411q;

    private z f11412r;

    private boolean f11414t;

    private long f11415u = C.TIME_UNSET;

    private final FullSegmentEncryptionKeyCache f11404j = new FullSegmentEncryptionKeyCache(4);

    private byte[] f11408n = a1.f10043f;

    private long f11413s = C.TIME_UNSET;

    private static final class a extends g2.k {

        private byte[] f11416l;

        public a(androidx.media3.datasource.a aVar, w1.h hVar, androidx.media3.common.r rVar, int i10, Object obj, byte[] bArr) {
            super(aVar, hVar, 3, rVar, i10, obj, bArr);
        }

        @Override
        protected void e(byte[] bArr, int i10) {
            this.f11416l = Arrays.copyOf(bArr, i10);
        }

        public byte[] h() {
            return this.f11416l;
        }
    }

    public static final class b {

        public g2.e f11417a;

        public boolean f11418b;

        public Uri f11419c;

        public b() {
            a();
        }

        public void a() {
            this.f11417a = null;
            this.f11418b = false;
            this.f11419c = null;
        }
    }

    static final class c extends g2.b {

        private final List f11420e;

        private final long f11421f;

        private final String f11422g;

        public c(String str, long j10, List list) {
            super(0L, list.size() - 1);
            this.f11422g = str;
            this.f11421f = j10;
            this.f11420e = list;
        }

        @Override
        public long a() {
            c();
            return this.f11421f + ((androidx.media3.exoplayer.hls.playlist.c.g) this.f11420e.get((int) d())).f11608e;
        }

        @Override
        public long b() {
            c();
            androidx.media3.exoplayer.hls.playlist.c.g gVar = (androidx.media3.exoplayer.hls.playlist.c.g) this.f11420e.get((int) d());
            return this.f11421f + gVar.f11608e + gVar.f11606c;
        }
    }

    private static final class d extends i2.c {

        private int f11423i;

        public d(f0 f0Var, int[] iArr) {
            super(f0Var, iArr);
            this.f11423i = e(f0Var.a(iArr[0]));
        }

        @Override
        public void f(long j10, long j11, long j12, List list, g2.n[] nVarArr) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (d(this.f11423i, jElapsedRealtime)) {
                for (int i10 = this.f61634b - 1; i10 >= 0; i10--) {
                    if (!d(i10, jElapsedRealtime)) {
                        this.f11423i = i10;
                        return;
                    }
                }
                throw new IllegalStateException();
            }
        }

        @Override
        public int getSelectedIndex() {
            return this.f11423i;
        }

        @Override
        public Object getSelectionData() {
            return null;
        }

        @Override
        public int getSelectionReason() {
            return 0;
        }
    }

    static final class C0091e {

        public final androidx.media3.exoplayer.hls.playlist.c.g f11424a;

        public final long f11425b;

        public final int f11426c;

        public final boolean f11427d;

        public C0091e(androidx.media3.exoplayer.hls.playlist.c.g gVar, long j10, int i10) {
            this.f11424a = gVar;
            this.f11425b = j10;
            this.f11426c = i10;
            this.f11427d = (gVar instanceof androidx.media3.exoplayer.hls.playlist.c.d) && ((androidx.media3.exoplayer.hls.playlist.c.d) gVar).f11598m;
        }
    }

    public e(g gVar, HlsPlaylistTracker hlsPlaylistTracker, Uri[] uriArr, androidx.media3.common.r[] rVarArr, f fVar, w1.n nVar, t tVar, long j10, List list, f4 f4Var, androidx.media3.exoplayer.upstream.f fVar2) {
        this.f11395a = gVar;
        this.f11401g = hlsPlaylistTracker;
        this.f11399e = uriArr;
        this.f11400f = rVarArr;
        this.f11398d = tVar;
        this.f11406l = j10;
        this.f11403i = list;
        this.f11405k = f4Var;
        androidx.media3.datasource.a aVarA = fVar.a(1);
        this.f11396b = aVarA;
        if (nVar != null) {
            aVarA.c(nVar);
        }
        this.f11397c = fVar.a(3);
        this.f11402h = new f0(rVarArr);
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < uriArr.length; i10++) {
            if ((rVarArr[i10].f9840f & 16384) == 0) {
                arrayList.add(Integer.valueOf(i10));
            }
        }
        this.f11412r = new d(this.f11402h, Ints.o(arrayList));
    }

    private void b() {
        this.f11401g.l(this.f11399e[this.f11412r.getSelectedIndexInTrackGroup()]);
    }

    private static Uri e(androidx.media3.exoplayer.hls.playlist.c cVar, androidx.media3.exoplayer.hls.playlist.c.g gVar) {
        String str;
        if (gVar == null || (str = gVar.f11610g) == null) {
            return null;
        }
        return r0.f(cVar.f15504a, str);
    }

    private Pair g(i iVar, boolean z10, androidx.media3.exoplayer.hls.playlist.c cVar, long j10, long j11) {
        int i10 = -1;
        if (iVar != null && !z10) {
            if (!iVar.f()) {
                return new Pair(Long.valueOf(iVar.f60649j), Integer.valueOf(iVar.f11434o));
            }
            Long lValueOf = Long.valueOf(iVar.f11434o == -1 ? iVar.e() : iVar.f60649j);
            int i11 = iVar.f11434o;
            return new Pair(lValueOf, Integer.valueOf(i11 != -1 ? i11 + 1 : -1));
        }
        long j12 = cVar.f11576u + j10;
        if (iVar != null && !this.f11411q) {
            j11 = iVar.f60601g;
        }
        if (!cVar.f11570o && j11 >= j12) {
            return new Pair(Long.valueOf(cVar.f11566k + ((long) cVar.f11573r.size())), -1);
        }
        long j13 = j11 - j10;
        int iF = a1.f(cVar.f11573r, Long.valueOf(j13), true, !this.f11401g.f() || iVar == null);
        long j14 = ((long) iF) + cVar.f11566k;
        if (iF >= 0) {
            androidx.media3.exoplayer.hls.playlist.c.f fVar = (androidx.media3.exoplayer.hls.playlist.c.f) cVar.f11573r.get(iF);
            List list = j13 < fVar.f11608e + fVar.f11606c ? fVar.f11603m : cVar.f11574s;
            for (int i12 = 0; i12 < list.size(); i12++) {
                androidx.media3.exoplayer.hls.playlist.c.d dVar = (androidx.media3.exoplayer.hls.playlist.c.d) list.get(i12);
                if (j13 < dVar.f11608e + dVar.f11606c) {
                    if (!dVar.f11597l) {
                        break;
                    }
                    j14 += list == cVar.f11574s ? 1L : 0L;
                    i10 = i12;
                    break;
                }
            }
        }
        return new Pair(Long.valueOf(j14), Integer.valueOf(i10));
    }

    private static C0091e h(androidx.media3.exoplayer.hls.playlist.c cVar, long j10, int i10) {
        int i11 = (int) (j10 - cVar.f11566k);
        if (i11 == cVar.f11573r.size()) {
            if (i10 == -1) {
                i10 = 0;
            }
            if (i10 < cVar.f11574s.size()) {
                return new C0091e((androidx.media3.exoplayer.hls.playlist.c.g) cVar.f11574s.get(i10), j10, i10);
            }
            return null;
        }
        androidx.media3.exoplayer.hls.playlist.c.f fVar = (androidx.media3.exoplayer.hls.playlist.c.f) cVar.f11573r.get(i11);
        if (i10 == -1) {
            return new C0091e(fVar, j10, -1);
        }
        if (i10 < fVar.f11603m.size()) {
            return new C0091e((androidx.media3.exoplayer.hls.playlist.c.g) fVar.f11603m.get(i10), j10, i10);
        }
        int i12 = i11 + 1;
        if (i12 < cVar.f11573r.size()) {
            return new C0091e((androidx.media3.exoplayer.hls.playlist.c.g) cVar.f11573r.get(i12), j10 + 1, -1);
        }
        if (cVar.f11574s.isEmpty()) {
            return null;
        }
        return new C0091e((androidx.media3.exoplayer.hls.playlist.c.g) cVar.f11574s.get(0), j10 + 1, 0);
    }

    static List j(androidx.media3.exoplayer.hls.playlist.c cVar, long j10, int i10) {
        int i11 = (int) (j10 - cVar.f11566k);
        if (i11 < 0 || cVar.f11573r.size() < i11) {
            return ImmutableList.of();
        }
        ArrayList arrayList = new ArrayList();
        if (i11 < cVar.f11573r.size()) {
            if (i10 != -1) {
                androidx.media3.exoplayer.hls.playlist.c.f fVar = (androidx.media3.exoplayer.hls.playlist.c.f) cVar.f11573r.get(i11);
                if (i10 == 0) {
                    arrayList.add(fVar);
                } else if (i10 < fVar.f11603m.size()) {
                    List list = fVar.f11603m;
                    arrayList.addAll(list.subList(i10, list.size()));
                }
                i11++;
            }
            List list2 = cVar.f11573r;
            arrayList.addAll(list2.subList(i11, list2.size()));
            i10 = 0;
        }
        if (cVar.f11569n != C.TIME_UNSET) {
            int i12 = i10 != -1 ? i10 : 0;
            if (i12 < cVar.f11574s.size()) {
                List list3 = cVar.f11574s;
                arrayList.addAll(list3.subList(i12, list3.size()));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    private g2.e n(Uri uri, int i10, boolean z10, androidx.media3.exoplayer.upstream.g.a aVar) {
        if (uri == null) {
            return null;
        }
        byte[] bArrC = this.f11404j.c(uri);
        if (bArrC != null) {
            this.f11404j.b(uri, bArrC);
            return null;
        }
        return new a(this.f11397c, new w1.h.b().i(uri).b(1).a(), this.f11400f[i10], this.f11412r.getSelectionReason(), this.f11412r.getSelectionData(), this.f11408n);
    }

    private long u(long j10) {
        long j11 = this.f11413s;
        return j11 != C.TIME_UNSET ? j11 - j10 : C.TIME_UNSET;
    }

    private void y(androidx.media3.exoplayer.hls.playlist.c cVar) {
        this.f11413s = cVar.f11570o ? C.TIME_UNSET : cVar.d() - this.f11401g.b();
    }

    public g2.n[] a(i iVar, long j10) {
        int i10;
        int iB = iVar == null ? -1 : this.f11402h.b(iVar.f60598d);
        int length = this.f11412r.length();
        g2.n[] nVarArr = new g2.n[length];
        boolean z10 = false;
        int i11 = 0;
        while (i11 < length) {
            int indexInTrackGroup = this.f11412r.getIndexInTrackGroup(i11);
            Uri uri = this.f11399e[indexInTrackGroup];
            if (this.f11401g.e(uri)) {
                androidx.media3.exoplayer.hls.playlist.c cVarI = this.f11401g.i(uri, z10);
                androidx.media3.common.util.a.e(cVarI);
                long jB = cVarI.f11563h - this.f11401g.b();
                i10 = i11;
                Pair pairG = g(iVar, indexInTrackGroup != iB ? true : z10, cVarI, jB, j10);
                nVarArr[i10] = new c(cVarI.f15504a, jB, j(cVarI, ((Long) pairG.first).longValue(), ((Integer) pairG.second).intValue()));
            } else {
                nVarArr[i11] = g2.n.f60650a;
                i10 = i11;
            }
            i11 = i10 + 1;
            z10 = false;
        }
        return nVarArr;
    }

    public long c(long j10, c4 c4Var) {
        int selectedIndex = this.f11412r.getSelectedIndex();
        Uri[] uriArr = this.f11399e;
        androidx.media3.exoplayer.hls.playlist.c cVarI = (selectedIndex >= uriArr.length || selectedIndex == -1) ? null : this.f11401g.i(uriArr[this.f11412r.getSelectedIndexInTrackGroup()], true);
        if (cVarI == null || cVarI.f11573r.isEmpty()) {
            return j10;
        }
        long jB = cVarI.f11563h - this.f11401g.b();
        long j11 = j10 - jB;
        int iF = a1.f(cVarI.f11573r, Long.valueOf(j11), true, true);
        long j12 = ((androidx.media3.exoplayer.hls.playlist.c.f) cVarI.f11573r.get(iF)).f11608e;
        return c4Var.a(j11, j12, (!cVarI.f15506c || iF == cVarI.f11573r.size() - 1) ? j12 : ((androidx.media3.exoplayer.hls.playlist.c.f) cVarI.f11573r.get(iF + 1)).f11608e) + jB;
    }

    public int d(i iVar) {
        if (iVar.f11434o == -1) {
            return 1;
        }
        androidx.media3.exoplayer.hls.playlist.c cVar = (androidx.media3.exoplayer.hls.playlist.c) androidx.media3.common.util.a.e(this.f11401g.i(this.f11399e[this.f11402h.b(iVar.f60598d)], false));
        int i10 = (int) (iVar.f60649j - cVar.f11566k);
        if (i10 < 0) {
            return 1;
        }
        List list = i10 < cVar.f11573r.size() ? ((androidx.media3.exoplayer.hls.playlist.c.f) cVar.f11573r.get(i10)).f11603m : cVar.f11574s;
        if (iVar.f11434o >= list.size()) {
            return 2;
        }
        androidx.media3.exoplayer.hls.playlist.c.d dVar = (androidx.media3.exoplayer.hls.playlist.c.d) list.get(iVar.f11434o);
        if (dVar.f11598m) {
            return 0;
        }
        return Objects.equals(Uri.parse(r0.e(cVar.f15504a, dVar.f11604a)), iVar.f60596b.f74097a) ? 1 : 2;
    }

    public void f(v2 v2Var, long j10, List list, boolean z10, b bVar) {
        androidx.media3.exoplayer.hls.playlist.c cVar;
        long jB;
        i iVar = list.isEmpty() ? null : (i) g3.g(list);
        int iB = iVar == null ? -1 : this.f11402h.b(iVar.f60598d);
        long j11 = v2Var.f12738a;
        long jMax = j10 - j11;
        long jU = u(j11);
        if (iVar != null && !this.f11411q) {
            long jB2 = iVar.b();
            jMax = Math.max(0L, jMax - jB2);
            if (jU != C.TIME_UNSET) {
                jU = Math.max(0L, jU - jB2);
            }
        }
        this.f11412r.f(j11, jMax, jU, list, a(iVar, j10));
        int selectedIndexInTrackGroup = this.f11412r.getSelectedIndexInTrackGroup();
        boolean z11 = iB != selectedIndexInTrackGroup;
        Uri uri = this.f11399e[selectedIndexInTrackGroup];
        if (!this.f11401g.e(uri)) {
            bVar.f11419c = uri;
            this.f11414t &= uri.equals(this.f11410p);
            this.f11410p = uri;
            return;
        }
        androidx.media3.exoplayer.hls.playlist.c cVarI = this.f11401g.i(uri, true);
        androidx.media3.common.util.a.e(cVarI);
        this.f11411q = cVarI.f15506c;
        y(cVarI);
        long jB3 = cVarI.f11563h - this.f11401g.b();
        Uri uri2 = uri;
        Pair pairG = g(iVar, z11, cVarI, jB3, j10);
        long jLongValue = ((Long) pairG.first).longValue();
        int iIntValue = ((Integer) pairG.second).intValue();
        if (jLongValue >= cVarI.f11566k || iVar == null || !z11) {
            cVar = cVarI;
            jB = jB3;
        } else {
            uri2 = this.f11399e[iB];
            androidx.media3.exoplayer.hls.playlist.c cVarI2 = this.f11401g.i(uri2, true);
            androidx.media3.common.util.a.e(cVarI2);
            jB = cVarI2.f11563h - this.f11401g.b();
            Pair pairG2 = g(iVar, false, cVarI2, jB, j10);
            jLongValue = ((Long) pairG2.first).longValue();
            iIntValue = ((Integer) pairG2.second).intValue();
            cVar = cVarI2;
            selectedIndexInTrackGroup = iB;
        }
        if (selectedIndexInTrackGroup != iB && iB != -1) {
            this.f11401g.l(this.f11399e[iB]);
        }
        if (jLongValue < cVar.f11566k) {
            this.f11409o = new BehindLiveWindowException();
            return;
        }
        C0091e c0091eH = h(cVar, jLongValue, iIntValue);
        if (c0091eH == null) {
            if (!cVar.f11570o) {
                bVar.f11419c = uri2;
                this.f11414t &= uri2.equals(this.f11410p);
                this.f11410p = uri2;
                return;
            } else {
                if (z10 || cVar.f11573r.isEmpty()) {
                    bVar.f11418b = true;
                    return;
                }
                c0091eH = new C0091e((androidx.media3.exoplayer.hls.playlist.c.g) g3.g(cVar.f11573r), (cVar.f11566k + ((long) cVar.f11573r.size())) - 1, -1);
            }
        }
        this.f11414t = false;
        this.f11410p = null;
        this.f11415u = SystemClock.elapsedRealtime();
        Uri uriE = e(cVar, c0091eH.f11424a.f11605b);
        g2.e eVarN = n(uriE, selectedIndexInTrackGroup, true, null);
        bVar.f11417a = eVarN;
        if (eVarN != null) {
            return;
        }
        Uri uriE2 = e(cVar, c0091eH.f11424a);
        g2.e eVarN2 = n(uriE2, selectedIndexInTrackGroup, false, null);
        bVar.f11417a = eVarN2;
        if (eVarN2 != null) {
            return;
        }
        boolean zU = i.u(iVar, uri2, cVar, c0091eH, jB);
        if (zU && c0091eH.f11427d) {
            return;
        }
        bVar.f11417a = i.h(this.f11395a, this.f11396b, this.f11400f[selectedIndexInTrackGroup], jB, cVar, c0091eH, uri2, this.f11403i, this.f11412r.getSelectionReason(), this.f11412r.getSelectionData(), this.f11407m, this.f11398d, this.f11406l, iVar, this.f11404j.a(uriE2), this.f11404j.a(uriE), zU, this.f11405k, null);
    }

    public int i(long j10, List list) {
        return (this.f11409o != null || this.f11412r.length() < 2) ? list.size() : this.f11412r.evaluateQueueSize(j10, list);
    }

    public f0 k() {
        return this.f11402h;
    }

    public z l() {
        return this.f11412r;
    }

    public boolean m() {
        return this.f11411q;
    }

    public boolean o(g2.e eVar, long j10) {
        z zVar = this.f11412r;
        return zVar.g(zVar.indexOf(this.f11402h.b(eVar.f60598d)), j10);
    }

    public void p() throws IOException {
        IOException iOException = this.f11409o;
        if (iOException != null) {
            throw iOException;
        }
        Uri uri = this.f11410p;
        if (uri == null || !this.f11414t) {
            return;
        }
        this.f11401g.a(uri);
    }

    public boolean q(Uri uri) {
        return a1.s(this.f11399e, uri);
    }

    public void r(g2.e eVar) {
        if (eVar instanceof a) {
            a aVar = (a) eVar;
            this.f11408n = aVar.f();
            this.f11404j.b(aVar.f60596b.f74097a, (byte[]) androidx.media3.common.util.a.e(aVar.h()));
        }
    }

    public boolean s(Uri uri, long j10) {
        int iIndexOf;
        int i10 = 0;
        while (true) {
            Uri[] uriArr = this.f11399e;
            if (i10 >= uriArr.length) {
                i10 = -1;
                break;
            }
            if (uriArr[i10].equals(uri)) {
                break;
            }
            i10++;
        }
        if (i10 == -1 || (iIndexOf = this.f11412r.indexOf(i10)) == -1) {
            return true;
        }
        this.f11414t |= uri.equals(this.f11410p);
        return j10 == C.TIME_UNSET || (this.f11412r.g(iIndexOf, j10) && this.f11401g.g(uri, j10));
    }

    public void t() {
        b();
        this.f11409o = null;
    }

    public void v(boolean z10) {
        this.f11407m = z10;
    }

    public void w(z zVar) {
        b();
        this.f11412r = zVar;
    }

    public boolean x(long j10, g2.e eVar, List list) {
        if (this.f11409o != null) {
            return false;
        }
        return this.f11412r.h(j10, eVar, list);
    }
}
