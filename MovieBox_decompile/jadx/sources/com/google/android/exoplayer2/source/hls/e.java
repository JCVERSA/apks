package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import android.os.SystemClock;
import android.util.Pair;
import com.google.android.exoplayer2.d3;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.util.n0;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.g3;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g9.u1;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import na.s;
import v9.w;

class e {

    private final g f25289a;

    private final com.google.android.exoplayer2.upstream.k f25290b;

    private final com.google.android.exoplayer2.upstream.k f25291c;

    private final q f25292d;

    private final Uri[] f25293e;

    private final p1[] f25294f;

    private final HlsPlaylistTracker f25295g;

    private final w f25296h;

    private final List f25297i;

    private final u1 f25299k;

    private boolean f25300l;

    private IOException f25302n;

    private Uri f25303o;

    private boolean f25304p;

    private s f25305q;

    private boolean f25307s;

    private final FullSegmentEncryptionKeyCache f25298j = new FullSegmentEncryptionKeyCache(4);

    private byte[] f25301m = p0.f26859f;

    private long f25306r = C.TIME_UNSET;

    private static final class a extends x9.l {

        private byte[] f25308l;

        public a(com.google.android.exoplayer2.upstream.k kVar, com.google.android.exoplayer2.upstream.n nVar, p1 p1Var, int i10, Object obj, byte[] bArr) {
            super(kVar, nVar, 3, p1Var, i10, obj, bArr);
        }

        @Override
        protected void e(byte[] bArr, int i10) {
            this.f25308l = Arrays.copyOf(bArr, i10);
        }

        public byte[] h() {
            return this.f25308l;
        }
    }

    public static final class b {

        public x9.f f25309a;

        public boolean f25310b;

        public Uri f25311c;

        public b() {
            a();
        }

        public void a() {
            this.f25309a = null;
            this.f25310b = false;
            this.f25311c = null;
        }
    }

    static final class c extends x9.b {

        private final List f25312e;

        private final long f25313f;

        private final String f25314g;

        public c(String str, long j10, List list) {
            super(0L, list.size() - 1);
            this.f25314g = str;
            this.f25313f = j10;
            this.f25312e = list;
        }

        @Override
        public long a() {
            c();
            return this.f25313f + ((com.google.android.exoplayer2.source.hls.playlist.d.e) this.f25312e.get((int) d())).f25495e;
        }

        @Override
        public long b() {
            c();
            com.google.android.exoplayer2.source.hls.playlist.d.e eVar = (com.google.android.exoplayer2.source.hls.playlist.d.e) this.f25312e.get((int) d());
            return this.f25313f + eVar.f25495e + eVar.f25493c;
        }
    }

    private static final class d extends na.c {

        private int f25315h;

        public d(w wVar, int[] iArr) {
            super(wVar, iArr);
            this.f25315h = g(wVar.c(iArr[0]));
        }

        @Override
        public void f(long j10, long j11, long j12, List list, x9.o[] oVarArr) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (d(this.f25315h, jElapsedRealtime)) {
                for (int i10 = this.f67009b - 1; i10 >= 0; i10--) {
                    if (!d(i10, jElapsedRealtime)) {
                        this.f25315h = i10;
                        return;
                    }
                }
                throw new IllegalStateException();
            }
        }

        @Override
        public int getSelectedIndex() {
            return this.f25315h;
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

    static final class C0348e {

        public final com.google.android.exoplayer2.source.hls.playlist.d.e f25316a;

        public final long f25317b;

        public final int f25318c;

        public final boolean f25319d;

        public C0348e(com.google.android.exoplayer2.source.hls.playlist.d.e eVar, long j10, int i10) {
            this.f25316a = eVar;
            this.f25317b = j10;
            this.f25318c = i10;
            this.f25319d = (eVar instanceof com.google.android.exoplayer2.source.hls.playlist.d.b) && ((com.google.android.exoplayer2.source.hls.playlist.d.b) eVar).f25485m;
        }
    }

    public e(g gVar, HlsPlaylistTracker hlsPlaylistTracker, Uri[] uriArr, p1[] p1VarArr, f fVar, k0 k0Var, q qVar, List list, u1 u1Var) {
        this.f25289a = gVar;
        this.f25295g = hlsPlaylistTracker;
        this.f25293e = uriArr;
        this.f25294f = p1VarArr;
        this.f25292d = qVar;
        this.f25297i = list;
        this.f25299k = u1Var;
        com.google.android.exoplayer2.upstream.k kVarA = fVar.a(1);
        this.f25290b = kVarA;
        if (k0Var != null) {
            kVarA.e(k0Var);
        }
        this.f25291c = fVar.a(3);
        this.f25296h = new w(p1VarArr);
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < uriArr.length; i10++) {
            if ((p1VarArr[i10].f24894e & 16384) == 0) {
                arrayList.add(Integer.valueOf(i10));
            }
        }
        this.f25305q = new d(this.f25296h, Ints.o(arrayList));
    }

    private static Uri d(com.google.android.exoplayer2.source.hls.playlist.d dVar, com.google.android.exoplayer2.source.hls.playlist.d.e eVar) {
        String str;
        if (eVar == null || (str = eVar.f25497g) == null) {
            return null;
        }
        return n0.e(dVar.f260a, str);
    }

    private Pair f(i iVar, boolean z10, com.google.android.exoplayer2.source.hls.playlist.d dVar, long j10, long j11) {
        int i10 = -1;
        if (iVar != null && !z10) {
            if (!iVar.f()) {
                return new Pair(Long.valueOf(iVar.f75235j), Integer.valueOf(iVar.f25328o));
            }
            Long lValueOf = Long.valueOf(iVar.f25328o == -1 ? iVar.e() : iVar.f75235j);
            int i11 = iVar.f25328o;
            return new Pair(lValueOf, Integer.valueOf(i11 != -1 ? i11 + 1 : -1));
        }
        long j12 = dVar.f25482u + j10;
        if (iVar != null && !this.f25304p) {
            j11 = iVar.f75190g;
        }
        if (!dVar.f25476o && j11 >= j12) {
            return new Pair(Long.valueOf(dVar.f25472k + ((long) dVar.f25479r.size())), -1);
        }
        long j13 = j11 - j10;
        int iG = p0.g(dVar.f25479r, Long.valueOf(j13), true, !this.f25295g.f() || iVar == null);
        long j14 = ((long) iG) + dVar.f25472k;
        if (iG >= 0) {
            com.google.android.exoplayer2.source.hls.playlist.d.C0350d c0350d = (com.google.android.exoplayer2.source.hls.playlist.d.C0350d) dVar.f25479r.get(iG);
            List list = j13 < c0350d.f25495e + c0350d.f25493c ? c0350d.f25490m : dVar.f25480s;
            for (int i12 = 0; i12 < list.size(); i12++) {
                com.google.android.exoplayer2.source.hls.playlist.d.b bVar = (com.google.android.exoplayer2.source.hls.playlist.d.b) list.get(i12);
                if (j13 < bVar.f25495e + bVar.f25493c) {
                    if (!bVar.f25484l) {
                        break;
                    }
                    j14 += list == dVar.f25480s ? 1L : 0L;
                    i10 = i12;
                    break;
                }
            }
        }
        return new Pair(Long.valueOf(j14), Integer.valueOf(i10));
    }

    private static C0348e g(com.google.android.exoplayer2.source.hls.playlist.d dVar, long j10, int i10) {
        int i11 = (int) (j10 - dVar.f25472k);
        if (i11 == dVar.f25479r.size()) {
            if (i10 == -1) {
                i10 = 0;
            }
            if (i10 < dVar.f25480s.size()) {
                return new C0348e((com.google.android.exoplayer2.source.hls.playlist.d.e) dVar.f25480s.get(i10), j10, i10);
            }
            return null;
        }
        com.google.android.exoplayer2.source.hls.playlist.d.C0350d c0350d = (com.google.android.exoplayer2.source.hls.playlist.d.C0350d) dVar.f25479r.get(i11);
        if (i10 == -1) {
            return new C0348e(c0350d, j10, -1);
        }
        if (i10 < c0350d.f25490m.size()) {
            return new C0348e((com.google.android.exoplayer2.source.hls.playlist.d.e) c0350d.f25490m.get(i10), j10, i10);
        }
        int i12 = i11 + 1;
        if (i12 < dVar.f25479r.size()) {
            return new C0348e((com.google.android.exoplayer2.source.hls.playlist.d.e) dVar.f25479r.get(i12), j10 + 1, -1);
        }
        if (dVar.f25480s.isEmpty()) {
            return null;
        }
        return new C0348e((com.google.android.exoplayer2.source.hls.playlist.d.e) dVar.f25480s.get(0), j10 + 1, 0);
    }

    static List i(com.google.android.exoplayer2.source.hls.playlist.d dVar, long j10, int i10) {
        int i11 = (int) (j10 - dVar.f25472k);
        if (i11 < 0 || dVar.f25479r.size() < i11) {
            return ImmutableList.of();
        }
        ArrayList arrayList = new ArrayList();
        if (i11 < dVar.f25479r.size()) {
            if (i10 != -1) {
                com.google.android.exoplayer2.source.hls.playlist.d.C0350d c0350d = (com.google.android.exoplayer2.source.hls.playlist.d.C0350d) dVar.f25479r.get(i11);
                if (i10 == 0) {
                    arrayList.add(c0350d);
                } else if (i10 < c0350d.f25490m.size()) {
                    List list = c0350d.f25490m;
                    arrayList.addAll(list.subList(i10, list.size()));
                }
                i11++;
            }
            List list2 = dVar.f25479r;
            arrayList.addAll(list2.subList(i11, list2.size()));
            i10 = 0;
        }
        if (dVar.f25475n != C.TIME_UNSET) {
            int i12 = i10 != -1 ? i10 : 0;
            if (i12 < dVar.f25480s.size()) {
                List list3 = dVar.f25480s;
                arrayList.addAll(list3.subList(i12, list3.size()));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    private x9.f l(Uri uri, int i10) {
        if (uri == null) {
            return null;
        }
        byte[] bArrC = this.f25298j.c(uri);
        if (bArrC != null) {
            this.f25298j.b(uri, bArrC);
            return null;
        }
        return new a(this.f25291c, new com.google.android.exoplayer2.upstream.n.b().i(uri).b(1).a(), this.f25294f[i10], this.f25305q.getSelectionReason(), this.f25305q.getSelectionData(), this.f25301m);
    }

    private long s(long j10) {
        long j11 = this.f25306r;
        return j11 != C.TIME_UNSET ? j11 - j10 : C.TIME_UNSET;
    }

    private void w(com.google.android.exoplayer2.source.hls.playlist.d dVar) {
        this.f25306r = dVar.f25476o ? C.TIME_UNSET : dVar.d() - this.f25295g.b();
    }

    public x9.o[] a(i iVar, long j10) {
        int i10;
        int iD = iVar == null ? -1 : this.f25296h.d(iVar.f75187d);
        int length = this.f25305q.length();
        x9.o[] oVarArr = new x9.o[length];
        boolean z10 = false;
        int i11 = 0;
        while (i11 < length) {
            int indexInTrackGroup = this.f25305q.getIndexInTrackGroup(i11);
            Uri uri = this.f25293e[indexInTrackGroup];
            if (this.f25295g.e(uri)) {
                com.google.android.exoplayer2.source.hls.playlist.d dVarI = this.f25295g.i(uri, z10);
                com.google.android.exoplayer2.util.a.e(dVarI);
                long jB = dVarI.f25469h - this.f25295g.b();
                i10 = i11;
                Pair pairF = f(iVar, indexInTrackGroup != iD ? true : z10, dVarI, jB, j10);
                oVarArr[i10] = new c(dVarI.f260a, jB, i(dVarI, ((Long) pairF.first).longValue(), ((Integer) pairF.second).intValue()));
            } else {
                oVarArr[i11] = x9.o.f75236a;
                i10 = i11;
            }
            i11 = i10 + 1;
            z10 = false;
        }
        return oVarArr;
    }

    public long b(long j10, d3 d3Var) {
        int selectedIndex = this.f25305q.getSelectedIndex();
        Uri[] uriArr = this.f25293e;
        com.google.android.exoplayer2.source.hls.playlist.d dVarI = (selectedIndex >= uriArr.length || selectedIndex == -1) ? null : this.f25295g.i(uriArr[this.f25305q.getSelectedIndexInTrackGroup()], true);
        if (dVarI == null || dVarI.f25479r.isEmpty() || !dVarI.f262c) {
            return j10;
        }
        long jB = dVarI.f25469h - this.f25295g.b();
        long j11 = j10 - jB;
        int iG = p0.g(dVarI.f25479r, Long.valueOf(j11), true, true);
        long j12 = ((com.google.android.exoplayer2.source.hls.playlist.d.C0350d) dVarI.f25479r.get(iG)).f25495e;
        return d3Var.a(j11, j12, iG != dVarI.f25479r.size() - 1 ? ((com.google.android.exoplayer2.source.hls.playlist.d.C0350d) dVarI.f25479r.get(iG + 1)).f25495e : j12) + jB;
    }

    public int c(i iVar) {
        if (iVar.f25328o == -1) {
            return 1;
        }
        com.google.android.exoplayer2.source.hls.playlist.d dVar = (com.google.android.exoplayer2.source.hls.playlist.d) com.google.android.exoplayer2.util.a.e(this.f25295g.i(this.f25293e[this.f25296h.d(iVar.f75187d)], false));
        int i10 = (int) (iVar.f75235j - dVar.f25472k);
        if (i10 < 0) {
            return 1;
        }
        List list = i10 < dVar.f25479r.size() ? ((com.google.android.exoplayer2.source.hls.playlist.d.C0350d) dVar.f25479r.get(i10)).f25490m : dVar.f25480s;
        if (iVar.f25328o >= list.size()) {
            return 2;
        }
        com.google.android.exoplayer2.source.hls.playlist.d.b bVar = (com.google.android.exoplayer2.source.hls.playlist.d.b) list.get(iVar.f25328o);
        if (bVar.f25485m) {
            return 0;
        }
        return p0.c(Uri.parse(n0.d(dVar.f260a, bVar.f25491a)), iVar.f75185b.f26665a) ? 1 : 2;
    }

    public void e(long j10, long j11, List list, boolean z10, b bVar) {
        com.google.android.exoplayer2.source.hls.playlist.d dVar;
        long jB;
        Uri uri;
        int i10;
        i iVar = list.isEmpty() ? null : (i) g3.g(list);
        int iD = iVar == null ? -1 : this.f25296h.d(iVar.f75187d);
        long jMax = j11 - j10;
        long jS = s(j10);
        if (iVar != null && !this.f25304p) {
            long jB2 = iVar.b();
            jMax = Math.max(0L, jMax - jB2);
            if (jS != C.TIME_UNSET) {
                jS = Math.max(0L, jS - jB2);
            }
        }
        this.f25305q.f(j10, jMax, jS, list, a(iVar, j11));
        int selectedIndexInTrackGroup = this.f25305q.getSelectedIndexInTrackGroup();
        boolean z11 = iD != selectedIndexInTrackGroup;
        Uri uri2 = this.f25293e[selectedIndexInTrackGroup];
        if (!this.f25295g.e(uri2)) {
            bVar.f25311c = uri2;
            this.f25307s &= uri2.equals(this.f25303o);
            this.f25303o = uri2;
            return;
        }
        com.google.android.exoplayer2.source.hls.playlist.d dVarI = this.f25295g.i(uri2, true);
        com.google.android.exoplayer2.util.a.e(dVarI);
        this.f25304p = dVarI.f262c;
        w(dVarI);
        long jB3 = dVarI.f25469h - this.f25295g.b();
        Pair pairF = f(iVar, z11, dVarI, jB3, j11);
        long jLongValue = ((Long) pairF.first).longValue();
        int iIntValue = ((Integer) pairF.second).intValue();
        if (jLongValue >= dVarI.f25472k || iVar == null || !z11) {
            dVar = dVarI;
            jB = jB3;
            uri = uri2;
            i10 = selectedIndexInTrackGroup;
        } else {
            Uri uri3 = this.f25293e[iD];
            com.google.android.exoplayer2.source.hls.playlist.d dVarI2 = this.f25295g.i(uri3, true);
            com.google.android.exoplayer2.util.a.e(dVarI2);
            jB = dVarI2.f25469h - this.f25295g.b();
            Pair pairF2 = f(iVar, false, dVarI2, jB, j11);
            jLongValue = ((Long) pairF2.first).longValue();
            iIntValue = ((Integer) pairF2.second).intValue();
            i10 = iD;
            uri = uri3;
            dVar = dVarI2;
        }
        if (jLongValue < dVar.f25472k) {
            this.f25302n = new BehindLiveWindowException();
            return;
        }
        C0348e c0348eG = g(dVar, jLongValue, iIntValue);
        if (c0348eG == null) {
            if (!dVar.f25476o) {
                bVar.f25311c = uri;
                this.f25307s &= uri.equals(this.f25303o);
                this.f25303o = uri;
                return;
            } else {
                if (z10 || dVar.f25479r.isEmpty()) {
                    bVar.f25310b = true;
                    return;
                }
                c0348eG = new C0348e((com.google.android.exoplayer2.source.hls.playlist.d.e) g3.g(dVar.f25479r), (dVar.f25472k + ((long) dVar.f25479r.size())) - 1, -1);
            }
        }
        this.f25307s = false;
        this.f25303o = null;
        Uri uriD = d(dVar, c0348eG.f25316a.f25492b);
        x9.f fVarL = l(uriD, i10);
        bVar.f25309a = fVarL;
        if (fVarL != null) {
            return;
        }
        Uri uriD2 = d(dVar, c0348eG.f25316a);
        x9.f fVarL2 = l(uriD2, i10);
        bVar.f25309a = fVarL2;
        if (fVarL2 != null) {
            return;
        }
        boolean zU = i.u(iVar, uri, dVar, c0348eG, jB);
        if (zU && c0348eG.f25319d) {
            return;
        }
        bVar.f25309a = i.h(this.f25289a, this.f25290b, this.f25294f[i10], jB, dVar, c0348eG, uri, this.f25297i, this.f25305q.getSelectionReason(), this.f25305q.getSelectionData(), this.f25300l, this.f25292d, iVar, this.f25298j.a(uriD2), this.f25298j.a(uriD), zU, this.f25299k);
    }

    public int h(long j10, List list) {
        return (this.f25302n != null || this.f25305q.length() < 2) ? list.size() : this.f25305q.evaluateQueueSize(j10, list);
    }

    public w j() {
        return this.f25296h;
    }

    public s k() {
        return this.f25305q;
    }

    public boolean m(x9.f fVar, long j10) {
        s sVar = this.f25305q;
        return sVar.blacklist(sVar.indexOf(this.f25296h.d(fVar.f75187d)), j10);
    }

    public void n() throws IOException {
        IOException iOException = this.f25302n;
        if (iOException != null) {
            throw iOException;
        }
        Uri uri = this.f25303o;
        if (uri == null || !this.f25307s) {
            return;
        }
        this.f25295g.a(uri);
    }

    public boolean o(Uri uri) {
        return p0.s(this.f25293e, uri);
    }

    public void p(x9.f fVar) {
        if (fVar instanceof a) {
            a aVar = (a) fVar;
            this.f25301m = aVar.f();
            this.f25298j.b(aVar.f75185b.f26665a, (byte[]) com.google.android.exoplayer2.util.a.e(aVar.h()));
        }
    }

    public boolean q(Uri uri, long j10) {
        int iIndexOf;
        int i10 = 0;
        while (true) {
            Uri[] uriArr = this.f25293e;
            if (i10 >= uriArr.length) {
                i10 = -1;
                break;
            }
            if (uriArr[i10].equals(uri)) {
                break;
            }
            i10++;
        }
        if (i10 == -1 || (iIndexOf = this.f25305q.indexOf(i10)) == -1) {
            return true;
        }
        this.f25307s |= uri.equals(this.f25303o);
        return j10 == C.TIME_UNSET || (this.f25305q.blacklist(iIndexOf, j10) && this.f25295g.g(uri, j10));
    }

    public void r() {
        this.f25302n = null;
    }

    public void t(boolean z10) {
        this.f25300l = z10;
    }

    public void u(s sVar) {
        this.f25305q = sVar;
    }

    public boolean v(long j10, x9.f fVar, List list) {
        if (this.f25302n != null) {
            return false;
        }
        return this.f25305q.e(j10, fVar, list);
    }
}
