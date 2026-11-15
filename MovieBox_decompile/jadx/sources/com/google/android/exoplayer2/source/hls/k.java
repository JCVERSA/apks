package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.d3;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.drm.u;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.source.b0;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.upstream.z;
import com.google.android.exoplayer2.util.p0;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import g9.u1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import v9.w;
import v9.y;

public final class k implements com.google.android.exoplayer2.source.n, p.b, HlsPlaylistTracker.b {

    private final g f25340a;

    private final HlsPlaylistTracker f25341b;

    private final f f25342c;

    private final k0 f25343d;

    private final u f25344e;

    private final s.a f25345f;

    private final z f25346g;

    private final com.google.android.exoplayer2.source.p.a f25347h;

    private final com.google.android.exoplayer2.upstream.b f25348i;

    private final v9.d f25351l;

    private final boolean f25352m;

    private final int f25353n;

    private final boolean f25354o;

    private final u1 f25355p;

    private com.google.android.exoplayer2.source.n.a f25356q;

    private int f25357r;

    private y f25358s;

    private int f25362w;

    private b0 f25363x;

    private final IdentityHashMap f25349j = new IdentityHashMap();

    private final q f25350k = new q();

    private p[] f25359t = new p[0];

    private p[] f25360u = new p[0];

    private int[][] f25361v = new int[0][];

    public k(g gVar, HlsPlaylistTracker hlsPlaylistTracker, f fVar, k0 k0Var, u uVar, s.a aVar, z zVar, com.google.android.exoplayer2.source.p.a aVar2, com.google.android.exoplayer2.upstream.b bVar, v9.d dVar, boolean z10, int i10, boolean z11, u1 u1Var) {
        this.f25340a = gVar;
        this.f25341b = hlsPlaylistTracker;
        this.f25342c = fVar;
        this.f25343d = k0Var;
        this.f25344e = uVar;
        this.f25345f = aVar;
        this.f25346g = zVar;
        this.f25347h = aVar2;
        this.f25348i = bVar;
        this.f25351l = dVar;
        this.f25352m = z10;
        this.f25353n = i10;
        this.f25354o = z11;
        this.f25355p = u1Var;
        this.f25363x = dVar.a(new b0[0]);
    }

    private void i(long j10, List list, List list2, List list3, Map map) {
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list.size());
        ArrayList arrayList3 = new ArrayList(list.size());
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < list.size(); i10++) {
            String str = ((com.google.android.exoplayer2.source.hls.playlist.e.a) list.get(i10)).f25521d;
            if (hashSet.add(str)) {
                arrayList.clear();
                arrayList2.clear();
                arrayList3.clear();
                boolean z10 = true;
                for (int i11 = 0; i11 < list.size(); i11++) {
                    if (p0.c(str, ((com.google.android.exoplayer2.source.hls.playlist.e.a) list.get(i11)).f25521d)) {
                        com.google.android.exoplayer2.source.hls.playlist.e.a aVar = (com.google.android.exoplayer2.source.hls.playlist.e.a) list.get(i11);
                        arrayList3.add(Integer.valueOf(i11));
                        arrayList.add(aVar.f25518a);
                        arrayList2.add(aVar.f25519b);
                        z10 &= p0.K(aVar.f25519b.f24898i, 1) == 1;
                    }
                }
                String str2 = "audio:" + str;
                p pVarL = l(str2, 1, (Uri[]) arrayList.toArray((Uri[]) p0.k(new Uri[0])), (p1[]) arrayList2.toArray(new p1[0]), null, Collections.emptyList(), map, j10);
                list3.add(Ints.o(arrayList3));
                list2.add(pVarL);
                if (this.f25352m && z10) {
                    pVarL.Q(new w[]{new w(str2, (p1[]) arrayList2.toArray(new p1[0]))}, 0, new int[0]);
                }
            }
        }
    }

    private void j(com.google.android.exoplayer2.source.hls.playlist.e eVar, long j10, List list, List list2, Map map) {
        boolean z10;
        boolean z11;
        int size = eVar.f25509e.size();
        int[] iArr = new int[size];
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < eVar.f25509e.size(); i12++) {
            p1 p1Var = ((com.google.android.exoplayer2.source.hls.playlist.e.b) eVar.f25509e.get(i12)).f25523b;
            if (p1Var.f24907r > 0 || p0.L(p1Var.f24898i, 2) != null) {
                iArr[i12] = 2;
                i10++;
            } else if (p0.L(p1Var.f24898i, 1) != null) {
                iArr[i12] = 1;
                i11++;
            } else {
                iArr[i12] = -1;
            }
        }
        if (i10 > 0) {
            z10 = true;
            size = i10;
            z11 = false;
        } else if (i11 < size) {
            size -= i11;
            z11 = true;
            z10 = false;
        } else {
            z10 = false;
            z11 = false;
        }
        Uri[] uriArr = new Uri[size];
        p1[] p1VarArr = new p1[size];
        int[] iArr2 = new int[size];
        int i13 = 0;
        for (int i14 = 0; i14 < eVar.f25509e.size(); i14++) {
            if ((!z10 || iArr[i14] == 2) && (!z11 || iArr[i14] != 1)) {
                com.google.android.exoplayer2.source.hls.playlist.e.b bVar = (com.google.android.exoplayer2.source.hls.playlist.e.b) eVar.f25509e.get(i14);
                uriArr[i13] = bVar.f25522a;
                p1VarArr[i13] = bVar.f25523b;
                iArr2[i13] = i14;
                i13++;
            }
        }
        String str = p1VarArr[0].f24898i;
        int iK = p0.K(str, 2);
        int iK2 = p0.K(str, 1);
        boolean z12 = (iK2 == 1 || (iK2 == 0 && eVar.f25511g.isEmpty())) && iK <= 1 && iK2 + iK > 0;
        p pVarL = l("main", (z10 || iK2 <= 0) ? 0 : 1, uriArr, p1VarArr, eVar.f25514j, eVar.f25515k, map, j10);
        list.add(pVarL);
        list2.add(iArr2);
        if (this.f25352m && z12) {
            ArrayList arrayList = new ArrayList();
            if (iK > 0) {
                p1[] p1VarArr2 = new p1[size];
                for (int i15 = 0; i15 < size; i15++) {
                    p1VarArr2[i15] = o(p1VarArr[i15]);
                }
                arrayList.add(new w("main", p1VarArr2));
                if (iK2 > 0 && (eVar.f25514j != null || eVar.f25511g.isEmpty())) {
                    arrayList.add(new w("main:audio", m(p1VarArr[0], eVar.f25514j, false)));
                }
                List list3 = eVar.f25515k;
                if (list3 != null) {
                    for (int i16 = 0; i16 < list3.size(); i16++) {
                        arrayList.add(new w("main:cc:" + i16, (p1) list3.get(i16)));
                    }
                }
            } else {
                p1[] p1VarArr3 = new p1[size];
                for (int i17 = 0; i17 < size; i17++) {
                    p1VarArr3[i17] = m(p1VarArr[i17], eVar.f25514j, true);
                }
                arrayList.add(new w("main", p1VarArr3));
            }
            w wVar = new w("main:id3", new p1.b().S("ID3").e0(MimeTypes.APPLICATION_ID3).E());
            arrayList.add(wVar);
            pVarL.Q((w[]) arrayList.toArray(new w[0]), 0, arrayList.indexOf(wVar));
        }
    }

    private void k(long j10) {
        int i10 = 0;
        int i11 = 1;
        com.google.android.exoplayer2.source.hls.playlist.e eVar = (com.google.android.exoplayer2.source.hls.playlist.e) com.google.android.exoplayer2.util.a.e(this.f25341b.c());
        Map mapN = this.f25354o ? n(eVar.f25517m) : Collections.emptyMap();
        boolean zIsEmpty = eVar.f25509e.isEmpty();
        List list = eVar.f25511g;
        List list2 = eVar.f25512h;
        this.f25357r = 0;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (!zIsEmpty) {
            j(eVar, j10, arrayList, arrayList2, mapN);
        }
        i(j10, list, arrayList, arrayList2, mapN);
        this.f25362w = arrayList.size();
        int i12 = 0;
        while (i12 < list2.size()) {
            com.google.android.exoplayer2.source.hls.playlist.e.a aVar = (com.google.android.exoplayer2.source.hls.playlist.e.a) list2.get(i12);
            String str = "subtitle:" + i12 + ":" + aVar.f25521d;
            Uri[] uriArr = new Uri[i11];
            uriArr[i10] = aVar.f25518a;
            p1[] p1VarArr = new p1[i11];
            p1VarArr[i10] = aVar.f25519b;
            ArrayList arrayList3 = arrayList2;
            int i13 = i12;
            p pVarL = l(str, 3, uriArr, p1VarArr, null, Collections.emptyList(), mapN, j10);
            arrayList3.add(new int[]{i13});
            arrayList.add(pVarL);
            pVarL.Q(new w[]{new w(str, aVar.f25519b)}, 0, new int[0]);
            i12 = i13 + 1;
            i10 = 0;
            arrayList2 = arrayList3;
            i11 = 1;
        }
        int i14 = i10;
        this.f25359t = (p[]) arrayList.toArray(new p[i14]);
        this.f25361v = (int[][]) arrayList2.toArray(new int[i14][]);
        this.f25357r = this.f25359t.length;
        for (int i15 = i14; i15 < this.f25362w; i15++) {
            this.f25359t[i15].Z(true);
        }
        p[] pVarArr = this.f25359t;
        int length = pVarArr.length;
        for (int i16 = i14; i16 < length; i16++) {
            pVarArr[i16].o();
        }
        this.f25360u = this.f25359t;
    }

    private p l(String str, int i10, Uri[] uriArr, p1[] p1VarArr, p1 p1Var, List list, Map map, long j10) {
        return new p(str, i10, this, new e(this.f25340a, this.f25341b, uriArr, p1VarArr, this.f25342c, this.f25343d, this.f25350k, list, this.f25355p), map, this.f25348i, j10, p1Var, this.f25344e, this.f25345f, this.f25346g, this.f25347h, this.f25353n);
    }

    private static p1 m(p1 p1Var, p1 p1Var2, boolean z10) {
        String strL;
        Metadata metadata;
        int i10;
        String str;
        int i11;
        int i12;
        String str2;
        if (p1Var2 != null) {
            strL = p1Var2.f24898i;
            metadata = p1Var2.f24899j;
            i11 = p1Var2.f24914y;
            i10 = p1Var2.f24893d;
            i12 = p1Var2.f24894e;
            str = p1Var2.f24892c;
            str2 = p1Var2.f24891b;
        } else {
            strL = p0.L(p1Var.f24898i, 1);
            metadata = p1Var.f24899j;
            if (z10) {
                i11 = p1Var.f24914y;
                i10 = p1Var.f24893d;
                i12 = p1Var.f24894e;
                str = p1Var.f24892c;
                str2 = p1Var.f24891b;
            } else {
                i10 = 0;
                str = null;
                i11 = -1;
                i12 = 0;
                str2 = null;
            }
        }
        return new p1.b().S(p1Var.f24890a).U(str2).K(p1Var.f24900k).e0(com.google.android.exoplayer2.util.w.g(strL)).I(strL).X(metadata).G(z10 ? p1Var.f24895f : -1).Z(z10 ? p1Var.f24896g : -1).H(i11).g0(i10).c0(i12).V(str).E();
    }

    private static Map n(List list) {
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

    private static p1 o(p1 p1Var) {
        String strL = p0.L(p1Var.f24898i, 2);
        return new p1.b().S(p1Var.f24890a).U(p1Var.f24891b).K(p1Var.f24900k).e0(com.google.android.exoplayer2.util.w.g(strL)).I(strL).X(p1Var.f24899j).G(p1Var.f24895f).Z(p1Var.f24896g).j0(p1Var.f24906q).Q(p1Var.f24907r).P(p1Var.f24908s).g0(p1Var.f24893d).c0(p1Var.f24894e).E();
    }

    @Override
    public boolean a(Uri uri, z.c cVar, boolean z10) {
        boolean zN = true;
        for (p pVar : this.f25359t) {
            zN &= pVar.N(uri, cVar, z10);
        }
        this.f25356q.g(this);
        return zN;
    }

    @Override
    public long b(long j10, d3 d3Var) {
        for (p pVar : this.f25360u) {
            if (pVar.E()) {
                return pVar.b(j10, d3Var);
            }
        }
        return j10;
    }

    @Override
    public void c() {
        for (p pVar : this.f25359t) {
            pVar.O();
        }
        this.f25356q.g(this);
    }

    @Override
    public boolean continueLoading(long j10) {
        if (this.f25358s != null) {
            return this.f25363x.continueLoading(j10);
        }
        for (p pVar : this.f25359t) {
            pVar.o();
        }
        return false;
    }

    @Override
    public void d(Uri uri) {
        this.f25341b.d(uri);
    }

    @Override
    public void discardBuffer(long j10, boolean z10) {
        for (p pVar : this.f25360u) {
            pVar.discardBuffer(j10, z10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:56:0x00df  */
    @Override
    public long e(na.s[] sVarArr, boolean[] zArr, v9.s[] sVarArr2, boolean[] zArr2, long j10) {
        v9.s[] sVarArr3 = sVarArr2;
        int[] iArr = new int[sVarArr.length];
        int[] iArr2 = new int[sVarArr.length];
        for (int i10 = 0; i10 < sVarArr.length; i10++) {
            v9.s sVar = sVarArr3[i10];
            iArr[i10] = sVar == null ? -1 : ((Integer) this.f25349j.get(sVar)).intValue();
            iArr2[i10] = -1;
            na.s sVar2 = sVarArr[i10];
            if (sVar2 != null) {
                w trackGroup = sVar2.getTrackGroup();
                int i11 = 0;
                while (true) {
                    p[] pVarArr = this.f25359t;
                    if (i11 >= pVarArr.length) {
                        break;
                    }
                    if (pVarArr[i11].getTrackGroups().c(trackGroup) != -1) {
                        iArr2[i10] = i11;
                        break;
                    }
                    i11++;
                }
            }
        }
        this.f25349j.clear();
        int length = sVarArr.length;
        v9.s[] sVarArr4 = new v9.s[length];
        v9.s[] sVarArr5 = new v9.s[sVarArr.length];
        na.s[] sVarArr6 = new na.s[sVarArr.length];
        p[] pVarArr2 = new p[this.f25359t.length];
        int i12 = 0;
        int i13 = 0;
        boolean z10 = false;
        while (i13 < this.f25359t.length) {
            for (int i14 = 0; i14 < sVarArr.length; i14++) {
                na.s sVar3 = null;
                sVarArr5[i14] = iArr[i14] == i13 ? sVarArr3[i14] : null;
                if (iArr2[i14] == i13) {
                    sVar3 = sVarArr[i14];
                }
                sVarArr6[i14] = sVar3;
            }
            p pVar = this.f25359t[i13];
            int i15 = i12;
            int i16 = length;
            int i17 = i13;
            na.s[] sVarArr7 = sVarArr6;
            p[] pVarArr3 = pVarArr2;
            boolean zW = pVar.W(sVarArr6, zArr, sVarArr5, zArr2, j10, z10);
            int i18 = 0;
            boolean z11 = false;
            while (true) {
                if (i18 >= sVarArr.length) {
                    break;
                }
                v9.s sVar4 = sVarArr5[i18];
                if (iArr2[i18] == i17) {
                    com.google.android.exoplayer2.util.a.e(sVar4);
                    sVarArr4[i18] = sVar4;
                    this.f25349j.put(sVar4, Integer.valueOf(i17));
                    z11 = true;
                } else if (iArr[i18] == i17) {
                    com.google.android.exoplayer2.util.a.g(sVar4 == null);
                }
                i18++;
            }
            if (z11) {
                pVarArr3[i15] = pVar;
                i12 = i15 + 1;
                if (i15 == 0) {
                    pVar.Z(true);
                    if (zW) {
                        this.f25350k.b();
                        z10 = true;
                    } else {
                        p[] pVarArr4 = this.f25360u;
                        if (pVarArr4.length == 0 || pVar != pVarArr4[0]) {
                            this.f25350k.b();
                            z10 = true;
                        }
                    }
                } else {
                    pVar.Z(i17 < this.f25362w);
                }
            } else {
                i12 = i15;
            }
            i13 = i17 + 1;
            sVarArr3 = sVarArr2;
            pVarArr2 = pVarArr3;
            length = i16;
            sVarArr6 = sVarArr7;
        }
        System.arraycopy(sVarArr4, 0, sVarArr3, 0, length);
        p[] pVarArr5 = (p[]) p0.G0(pVarArr2, i12);
        this.f25360u = pVarArr5;
        this.f25363x = this.f25351l.a(pVarArr5);
        return j10;
    }

    @Override
    public void f(com.google.android.exoplayer2.source.n.a aVar, long j10) {
        this.f25356q = aVar;
        this.f25341b.m(this);
        k(j10);
    }

    @Override
    public long getBufferedPositionUs() {
        return this.f25363x.getBufferedPositionUs();
    }

    @Override
    public long getNextLoadPositionUs() {
        return this.f25363x.getNextLoadPositionUs();
    }

    @Override
    public y getTrackGroups() {
        return (y) com.google.android.exoplayer2.util.a.e(this.f25358s);
    }

    @Override
    public boolean isLoading() {
        return this.f25363x.isLoading();
    }

    @Override
    public void maybeThrowPrepareError() throws ParserException {
        for (p pVar : this.f25359t) {
            pVar.maybeThrowPrepareError();
        }
    }

    @Override
    public void onPrepared() {
        int i10 = this.f25357r - 1;
        this.f25357r = i10;
        if (i10 > 0) {
            return;
        }
        int i11 = 0;
        for (p pVar : this.f25359t) {
            i11 += pVar.getTrackGroups().f73561a;
        }
        w[] wVarArr = new w[i11];
        int i12 = 0;
        for (p pVar2 : this.f25359t) {
            int i13 = pVar2.getTrackGroups().f73561a;
            int i14 = 0;
            while (i14 < i13) {
                wVarArr[i12] = pVar2.getTrackGroups().b(i14);
                i14++;
                i12++;
            }
        }
        this.f25358s = new y(wVarArr);
        this.f25356q.h(this);
    }

    @Override
    public void g(p pVar) {
        this.f25356q.g(this);
    }

    public void q() {
        this.f25341b.k(this);
        for (p pVar : this.f25359t) {
            pVar.S();
        }
        this.f25356q = null;
    }

    @Override
    public long readDiscontinuity() {
        return C.TIME_UNSET;
    }

    @Override
    public void reevaluateBuffer(long j10) {
        this.f25363x.reevaluateBuffer(j10);
    }

    @Override
    public long seekToUs(long j10) {
        p[] pVarArr = this.f25360u;
        if (pVarArr.length > 0) {
            boolean zV = pVarArr[0].V(j10, false);
            int i10 = 1;
            while (true) {
                p[] pVarArr2 = this.f25360u;
                if (i10 >= pVarArr2.length) {
                    break;
                }
                pVarArr2[i10].V(j10, zV);
                i10++;
            }
            if (zV) {
                this.f25350k.b();
            }
        }
        return j10;
    }
}
