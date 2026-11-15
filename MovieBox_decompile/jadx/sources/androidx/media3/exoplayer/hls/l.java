package androidx.media3.exoplayer.hls;

import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.common.x;
import androidx.media3.common.y;
import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import androidx.media3.exoplayer.source.f0;
import androidx.media3.exoplayer.v2;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import f2.z;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import x1.f4;

final class l implements androidx.media3.exoplayer.source.q, HlsPlaylistTracker.b {

    private final g f11446a;

    private final HlsPlaylistTracker f11447b;

    private final f f11448c;

    private final w1.n f11449d;

    private final androidx.media3.exoplayer.drm.t f11450e;

    private final androidx.media3.exoplayer.drm.r.a f11451f;

    private final androidx.media3.exoplayer.upstream.m f11452g;

    private final androidx.media3.exoplayer.source.s.a f11453h;

    private final androidx.media3.exoplayer.upstream.b f11454i;

    private final f2.e f11457l;

    private final boolean f11458m;

    private final int f11459n;

    private final boolean f11460o;

    private final f4 f11461p;

    private final long f11463r;

    private androidx.media3.exoplayer.source.q.a f11464s;

    private int f11465t;

    private z f11466u;

    private int f11470y;

    private f0 f11471z;

    private final r.b f11462q = new b();

    private final IdentityHashMap f11455j = new IdentityHashMap();

    private final t f11456k = new t();

    private r[] f11467v = new r[0];

    private r[] f11468w = new r[0];

    private int[][] f11469x = new int[0][];

    private class b implements r.b {
        private b() {
        }

        @Override
        public void h(r rVar) {
            l.this.f11464s.h(l.this);
        }

        @Override
        public void d(Uri uri) {
            l.this.f11447b.d(uri);
        }

        @Override
        public void onPrepared() {
            if (l.h(l.this) > 0) {
                return;
            }
            int i10 = 0;
            for (r rVar : l.this.f11467v) {
                i10 += rVar.getTrackGroups().f59968a;
            }
            androidx.media3.common.f0[] f0VarArr = new androidx.media3.common.f0[i10];
            int i11 = 0;
            for (r rVar2 : l.this.f11467v) {
                int i12 = rVar2.getTrackGroups().f59968a;
                int i13 = 0;
                while (i13 < i12) {
                    f0VarArr[i11] = rVar2.getTrackGroups().b(i13);
                    i13++;
                    i11++;
                }
            }
            l.this.f11466u = new z(f0VarArr);
            l.this.f11464s.g(l.this);
        }
    }

    public l(g gVar, HlsPlaylistTracker hlsPlaylistTracker, f fVar, w1.n nVar, androidx.media3.exoplayer.upstream.f fVar2, androidx.media3.exoplayer.drm.t tVar, androidx.media3.exoplayer.drm.r.a aVar, androidx.media3.exoplayer.upstream.m mVar, androidx.media3.exoplayer.source.s.a aVar2, androidx.media3.exoplayer.upstream.b bVar, f2.e eVar, boolean z10, int i10, boolean z11, f4 f4Var, long j10) {
        this.f11446a = gVar;
        this.f11447b = hlsPlaylistTracker;
        this.f11448c = fVar;
        this.f11449d = nVar;
        this.f11450e = tVar;
        this.f11451f = aVar;
        this.f11452g = mVar;
        this.f11453h = aVar2;
        this.f11454i = bVar;
        this.f11457l = eVar;
        this.f11458m = z10;
        this.f11459n = i10;
        this.f11460o = z11;
        this.f11461p = f4Var;
        this.f11463r = j10;
        this.f11471z = eVar.b();
    }

    static int h(l lVar) {
        int i10 = lVar.f11465t - 1;
        lVar.f11465t = i10;
        return i10;
    }

    private void m(long j10, List list, List list2, List list3, Map map) {
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list.size());
        ArrayList arrayList3 = new ArrayList(list.size());
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < list.size(); i10++) {
            String str = ((androidx.media3.exoplayer.hls.playlist.d.a) list.get(i10)).f11634d;
            if (hashSet.add(str)) {
                arrayList.clear();
                arrayList2.clear();
                arrayList3.clear();
                boolean z10 = true;
                for (int i11 = 0; i11 < list.size(); i11++) {
                    if (Objects.equals(str, ((androidx.media3.exoplayer.hls.playlist.d.a) list.get(i11)).f11634d)) {
                        androidx.media3.exoplayer.hls.playlist.d.a aVar = (androidx.media3.exoplayer.hls.playlist.d.a) list.get(i11);
                        arrayList3.add(Integer.valueOf(i11));
                        arrayList.add(aVar.f11631a);
                        arrayList2.add(aVar.f11632b);
                        z10 &= a1.R(aVar.f11632b.f9845k, 1) == 1;
                    }
                }
                String str2 = "audio:" + str;
                r rVarP = p(str2, 1, (Uri[]) arrayList.toArray((Uri[]) a1.j(new Uri[0])), (androidx.media3.common.r[]) arrayList2.toArray(new androidx.media3.common.r[0]), null, Collections.emptyList(), map, j10);
                list3.add(Ints.o(arrayList3));
                list2.add(rVarP);
                if (this.f11458m && z10) {
                    rVarP.V(new androidx.media3.common.f0[]{new androidx.media3.common.f0(str2, (androidx.media3.common.r[]) arrayList2.toArray(new androidx.media3.common.r[0]))}, 0, new int[0]);
                }
            }
        }
    }

    private void n(androidx.media3.exoplayer.hls.playlist.d dVar, long j10, List list, List list2, Map map) {
        int i10;
        boolean z10;
        boolean z11;
        int size = dVar.f11622e.size();
        int[] iArr = new int[size];
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < dVar.f11622e.size(); i13++) {
            androidx.media3.common.r rVar = ((androidx.media3.exoplayer.hls.playlist.d.b) dVar.f11622e.get(i13)).f11636b;
            if (rVar.f9857w > 0 || a1.S(rVar.f9845k, 2) != null) {
                iArr[i13] = 2;
                i11++;
            } else if (a1.S(rVar.f9845k, 1) != null) {
                iArr[i13] = 1;
                i12++;
            } else {
                iArr[i13] = -1;
            }
        }
        if (i11 > 0) {
            i10 = i11;
            z10 = true;
            z11 = false;
        } else if (i12 < size) {
            i10 = size - i12;
            z11 = true;
            z10 = false;
        } else {
            i10 = size;
            z10 = false;
            z11 = false;
        }
        Uri[] uriArr = new Uri[i10];
        androidx.media3.common.r[] rVarArr = new androidx.media3.common.r[i10];
        int[] iArr2 = new int[i10];
        int i14 = 0;
        for (int i15 = 0; i15 < dVar.f11622e.size(); i15++) {
            if ((!z10 || iArr[i15] == 2) && (!z11 || iArr[i15] != 1)) {
                androidx.media3.exoplayer.hls.playlist.d.b bVar = (androidx.media3.exoplayer.hls.playlist.d.b) dVar.f11622e.get(i15);
                uriArr[i14] = bVar.f11635a;
                rVarArr[i14] = bVar.f11636b;
                iArr2[i14] = i15;
                i14++;
            }
        }
        String str = rVarArr[0].f9845k;
        int iR = a1.R(str, 2);
        int iR2 = a1.R(str, 1);
        boolean z12 = (iR2 == 1 || (iR2 == 0 && dVar.f11624g.isEmpty())) && iR <= 1 && iR2 + iR > 0;
        r rVarP = p("main", (z10 || iR2 <= 0) ? 0 : 1, uriArr, rVarArr, dVar.f11627j, dVar.f11628k, map, j10);
        list.add(rVarP);
        list2.add(iArr2);
        if (this.f11458m && z12) {
            ArrayList arrayList = new ArrayList();
            if (iR > 0) {
                androidx.media3.common.r[] rVarArr2 = new androidx.media3.common.r[i10];
                for (int i16 = 0; i16 < i10; i16++) {
                    rVarArr2[i16] = s(rVarArr[i16]);
                }
                arrayList.add(new androidx.media3.common.f0("main", rVarArr2));
                if (iR2 > 0 && (dVar.f11627j != null || dVar.f11624g.isEmpty())) {
                    arrayList.add(new androidx.media3.common.f0("main:audio", q(rVarArr[0], dVar.f11627j, false)));
                }
                List list3 = dVar.f11628k;
                if (list3 != null) {
                    for (int i17 = 0; i17 < list3.size(); i17++) {
                        arrayList.add(new androidx.media3.common.f0("main:cc:" + i17, this.f11446a.d((androidx.media3.common.r) list3.get(i17))));
                    }
                }
            } else {
                androidx.media3.common.r[] rVarArr3 = new androidx.media3.common.r[i10];
                for (int i18 = 0; i18 < i10; i18++) {
                    rVarArr3[i18] = q(rVarArr[i18], dVar.f11627j, true);
                }
                arrayList.add(new androidx.media3.common.f0("main", rVarArr3));
            }
            androidx.media3.common.f0 f0Var = new androidx.media3.common.f0("main:id3", new androidx.media3.common.r.b().f0("ID3").u0(MimeTypes.APPLICATION_ID3).N());
            arrayList.add(f0Var);
            rVarP.V((androidx.media3.common.f0[]) arrayList.toArray(new androidx.media3.common.f0[0]), 0, arrayList.indexOf(f0Var));
        }
    }

    private void o(long j10) {
        int i10 = 0;
        int i11 = 1;
        androidx.media3.exoplayer.hls.playlist.d dVar = (androidx.media3.exoplayer.hls.playlist.d) androidx.media3.common.util.a.e(this.f11447b.c());
        Map mapR = this.f11460o ? r(dVar.f11630m) : Collections.emptyMap();
        boolean zIsEmpty = dVar.f11622e.isEmpty();
        List list = dVar.f11624g;
        List list2 = dVar.f11625h;
        this.f11465t = 0;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (!zIsEmpty) {
            n(dVar, j10, arrayList, arrayList2, mapR);
        }
        m(j10, list, arrayList, arrayList2, mapR);
        this.f11470y = arrayList.size();
        int i12 = 0;
        while (i12 < list2.size()) {
            androidx.media3.exoplayer.hls.playlist.d.a aVar = (androidx.media3.exoplayer.hls.playlist.d.a) list2.get(i12);
            String str = "subtitle:" + i12 + ":" + aVar.f11634d;
            androidx.media3.common.r rVar = aVar.f11632b;
            Uri[] uriArr = new Uri[i11];
            uriArr[i10] = aVar.f11631a;
            androidx.media3.common.r[] rVarArr = new androidx.media3.common.r[i11];
            rVarArr[i10] = rVar;
            ArrayList arrayList3 = arrayList2;
            int i13 = i12;
            r rVarP = p(str, 3, uriArr, rVarArr, null, Collections.emptyList(), mapR, j10);
            arrayList3.add(new int[]{i13});
            arrayList.add(rVarP);
            rVarP.V(new androidx.media3.common.f0[]{new androidx.media3.common.f0(str, this.f11446a.d(rVar))}, 0, new int[0]);
            i12 = i13 + 1;
            i10 = 0;
            arrayList2 = arrayList3;
            i11 = 1;
        }
        int i14 = i10;
        this.f11467v = (r[]) arrayList.toArray(new r[i14]);
        this.f11469x = (int[][]) arrayList2.toArray(new int[i14][]);
        this.f11465t = this.f11467v.length;
        for (int i15 = i14; i15 < this.f11470y; i15++) {
            this.f11467v[i15].e0(true);
        }
        r[] rVarArr2 = this.f11467v;
        int length = rVarArr2.length;
        for (int i16 = i14; i16 < length; i16++) {
            rVarArr2[i16].r();
        }
        this.f11468w = this.f11467v;
    }

    private r p(String str, int i10, Uri[] uriArr, androidx.media3.common.r[] rVarArr, androidx.media3.common.r rVar, List list, Map map, long j10) {
        return new r(str, i10, this.f11462q, new e(this.f11446a, this.f11447b, uriArr, rVarArr, this.f11448c, this.f11449d, this.f11456k, this.f11463r, list, this.f11461p, null), map, this.f11454i, j10, rVar, this.f11450e, this.f11451f, this.f11452g, this.f11453h, this.f11459n);
    }

    private static androidx.media3.common.r q(androidx.media3.common.r rVar, androidx.media3.common.r rVar2, boolean z10) {
        x xVar;
        int i10;
        String str;
        int i11;
        int i12;
        String str2;
        String str3;
        List list;
        List listOf = ImmutableList.of();
        if (rVar2 != null) {
            str3 = rVar2.f9845k;
            xVar = rVar2.f9846l;
            i11 = rVar2.E;
            i10 = rVar2.f9839e;
            i12 = rVar2.f9840f;
            str = rVar2.f9838d;
            str2 = rVar2.f9836b;
            list = rVar2.f9837c;
        } else {
            String strS = a1.S(rVar.f9845k, 1);
            xVar = rVar.f9846l;
            if (z10) {
                i11 = rVar.E;
                i10 = rVar.f9839e;
                i12 = rVar.f9840f;
                str = rVar.f9838d;
                str2 = rVar.f9836b;
                listOf = rVar.f9837c;
            } else {
                i10 = 0;
                str = null;
                i11 = -1;
                i12 = 0;
                str2 = null;
            }
            List list2 = listOf;
            str3 = strS;
            list = list2;
        }
        return new androidx.media3.common.r.b().f0(rVar.f9835a).h0(str2).i0(list).U(rVar.f9848n).u0(y.g(str3)).S(str3).n0(xVar).Q(z10 ? rVar.f9842h : -1).p0(z10 ? rVar.f9843i : -1).R(i11).w0(i10).s0(i12).j0(str).N();
    }

    private static Map r(List list) {
        ArrayList arrayList = new ArrayList(list);
        HashMap map = new HashMap();
        int i10 = 0;
        while (i10 < arrayList.size()) {
            DrmInitData drmInitDataMerge = (DrmInitData) list.get(i10);
            String str = drmInitDataMerge.schemeType;
            i10++;
            int i11 = i10;
            while (i11 < arrayList.size()) {
                DrmInitData drmInitData = (DrmInitData) arrayList.get(i11);
                if (TextUtils.equals(drmInitData.schemeType, str)) {
                    drmInitDataMerge = drmInitDataMerge.merge(drmInitData);
                    arrayList.remove(i11);
                } else {
                    i11++;
                }
            }
            map.put(str, drmInitDataMerge);
        }
        return map;
    }

    private static androidx.media3.common.r s(androidx.media3.common.r rVar) {
        String strS = a1.S(rVar.f9845k, 2);
        return new androidx.media3.common.r.b().f0(rVar.f9835a).h0(rVar.f9836b).i0(rVar.f9837c).U(rVar.f9848n).u0(y.g(strS)).S(strS).n0(rVar.f9846l).Q(rVar.f9842h).p0(rVar.f9843i).B0(rVar.f9856v).d0(rVar.f9857w).b0(rVar.f9858x).w0(rVar.f9839e).s0(rVar.f9840f).N();
    }

    public static List t(r rVar) {
        return rVar.getTrackGroups().c();
    }

    @Override
    public boolean a(v2 v2Var) {
        if (this.f11466u != null) {
            return this.f11471z.a(v2Var);
        }
        for (r rVar : this.f11467v) {
            rVar.r();
        }
        return false;
    }

    @Override
    public long b(long j10, c4 c4Var) {
        for (r rVar : this.f11468w) {
            if (rVar.H()) {
                return rVar.b(j10, c4Var);
            }
        }
        return j10;
    }

    @Override
    public void c() {
        for (r rVar : this.f11467v) {
            rVar.T();
        }
        this.f11464s.h(this);
    }

    @Override
    public boolean d(Uri uri, androidx.media3.exoplayer.upstream.m.c cVar, boolean z10) {
        boolean zS = true;
        for (r rVar : this.f11467v) {
            zS &= rVar.S(uri, cVar, z10);
        }
        this.f11464s.h(this);
        return zS;
    }

    @Override
    public void discardBuffer(long j10, boolean z10) {
        for (r rVar : this.f11468w) {
            rVar.discardBuffer(j10, z10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:56:0x00df  */
    @Override
    public long e(i2.z[] zVarArr, boolean[] zArr, f2.u[] uVarArr, boolean[] zArr2, long j10) {
        f2.u[] uVarArr2 = uVarArr;
        int[] iArr = new int[zVarArr.length];
        int[] iArr2 = new int[zVarArr.length];
        for (int i10 = 0; i10 < zVarArr.length; i10++) {
            f2.u uVar = uVarArr2[i10];
            iArr[i10] = uVar == null ? -1 : ((Integer) this.f11455j.get(uVar)).intValue();
            iArr2[i10] = -1;
            i2.z zVar = zVarArr[i10];
            if (zVar != null) {
                androidx.media3.common.f0 trackGroup = zVar.getTrackGroup();
                int i11 = 0;
                while (true) {
                    r[] rVarArr = this.f11467v;
                    if (i11 >= rVarArr.length) {
                        break;
                    }
                    if (rVarArr[i11].getTrackGroups().d(trackGroup) != -1) {
                        iArr2[i10] = i11;
                        break;
                    }
                    i11++;
                }
            }
        }
        this.f11455j.clear();
        int length = zVarArr.length;
        f2.u[] uVarArr3 = new f2.u[length];
        f2.u[] uVarArr4 = new f2.u[zVarArr.length];
        i2.z[] zVarArr2 = new i2.z[zVarArr.length];
        r[] rVarArr2 = new r[this.f11467v.length];
        int i12 = 0;
        int i13 = 0;
        boolean z10 = false;
        while (i13 < this.f11467v.length) {
            for (int i14 = 0; i14 < zVarArr.length; i14++) {
                i2.z zVar2 = null;
                uVarArr4[i14] = iArr[i14] == i13 ? uVarArr2[i14] : null;
                if (iArr2[i14] == i13) {
                    zVar2 = zVarArr[i14];
                }
                zVarArr2[i14] = zVar2;
            }
            r rVar = this.f11467v[i13];
            int i15 = i12;
            int i16 = length;
            int i17 = i13;
            i2.z[] zVarArr3 = zVarArr2;
            r[] rVarArr3 = rVarArr2;
            boolean zB0 = rVar.b0(zVarArr2, zArr, uVarArr4, zArr2, j10, z10);
            int i18 = 0;
            boolean z11 = false;
            while (true) {
                if (i18 >= zVarArr.length) {
                    break;
                }
                f2.u uVar2 = uVarArr4[i18];
                if (iArr2[i18] == i17) {
                    androidx.media3.common.util.a.e(uVar2);
                    uVarArr3[i18] = uVar2;
                    this.f11455j.put(uVar2, Integer.valueOf(i17));
                    z11 = true;
                } else if (iArr[i18] == i17) {
                    androidx.media3.common.util.a.g(uVar2 == null);
                }
                i18++;
            }
            if (z11) {
                rVarArr3[i15] = rVar;
                i12 = i15 + 1;
                if (i15 == 0) {
                    rVar.e0(true);
                    if (zB0) {
                        this.f11456k.b();
                        z10 = true;
                    } else {
                        r[] rVarArr4 = this.f11468w;
                        if (rVarArr4.length == 0 || rVar != rVarArr4[0]) {
                            this.f11456k.b();
                            z10 = true;
                        }
                    }
                } else {
                    rVar.e0(i17 < this.f11470y);
                }
            } else {
                i12 = i15;
            }
            i13 = i17 + 1;
            uVarArr2 = uVarArr;
            rVarArr2 = rVarArr3;
            length = i16;
            zVarArr2 = zVarArr3;
        }
        System.arraycopy(uVarArr3, 0, uVarArr2, 0, length);
        r[] rVarArr5 = (r[]) a1.X0(rVarArr2, i12);
        this.f11468w = rVarArr5;
        ImmutableList immutableListCopyOf = ImmutableList.copyOf(rVarArr5);
        this.f11471z = this.f11457l.a(immutableListCopyOf, Lists.o(immutableListCopyOf, new com.google.common.base.f() {
            @Override
            public final Object apply(Object obj) {
                return l.t((r) obj);
            }
        }));
        return j10;
    }

    @Override
    public void f(androidx.media3.exoplayer.source.q.a aVar, long j10) {
        this.f11464s = aVar;
        this.f11447b.n(this);
        o(j10);
    }

    @Override
    public long getBufferedPositionUs() {
        return this.f11471z.getBufferedPositionUs();
    }

    @Override
    public long getNextLoadPositionUs() {
        return this.f11471z.getNextLoadPositionUs();
    }

    @Override
    public z getTrackGroups() {
        return (z) androidx.media3.common.util.a.e(this.f11466u);
    }

    @Override
    public boolean isLoading() {
        return this.f11471z.isLoading();
    }

    @Override
    public void maybeThrowPrepareError() throws ParserException {
        for (r rVar : this.f11467v) {
            rVar.maybeThrowPrepareError();
        }
    }

    @Override
    public long readDiscontinuity() {
        return C.TIME_UNSET;
    }

    @Override
    public void reevaluateBuffer(long j10) {
        this.f11471z.reevaluateBuffer(j10);
    }

    @Override
    public long seekToUs(long j10) {
        r[] rVarArr = this.f11468w;
        if (rVarArr.length > 0) {
            boolean zA0 = rVarArr[0].a0(j10, false);
            int i10 = 1;
            while (true) {
                r[] rVarArr2 = this.f11468w;
                if (i10 >= rVarArr2.length) {
                    break;
                }
                rVarArr2[i10].a0(j10, zA0);
                i10++;
            }
            if (zA0) {
                this.f11456k.b();
            }
        }
        return j10;
    }

    public void u() {
        this.f11447b.m(this);
        for (r rVar : this.f11467v) {
            rVar.X();
        }
        this.f11464s = null;
    }
}
