package com.google.android.exoplayer2.source.dash;

import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseIntArray;
import com.google.android.exoplayer2.d3;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.drm.u;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.source.b0;
import com.google.android.exoplayer2.source.n;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.upstream.a0;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.upstream.z;
import com.google.android.exoplayer2.util.p0;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import g9.u1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import v9.w;
import v9.y;
import x9.i;
import z9.f;
import z9.g;
import z9.j;

final class b implements n, b0.a, i.b {

    private static final Pattern f25157y = Pattern.compile("CC([1-4])=(.+)");

    private static final Pattern f25158z = Pattern.compile("([1-4])=lang:(\\w+)(,.+)?");

    final int f25159a;

    private final com.google.android.exoplayer2.source.dash.a.InterfaceC0346a f25160b;

    private final k0 f25161c;

    private final u f25162d;

    private final z f25163e;

    private final y9.b f25164f;

    private final long f25165g;

    private final a0 f25166h;

    private final com.google.android.exoplayer2.upstream.b f25167i;

    private final y f25168j;

    private final a[] f25169k;

    private final v9.d f25170l;

    private final e f25171m;

    private final p.a f25173o;

    private final s.a f25174p;

    private final u1 f25175q;

    private n.a f25176r;

    private b0 f25179u;

    private z9.c f25180v;

    private int f25181w;

    private List f25182x;

    private i[] f25177s = u(0);

    private d[] f25178t = new d[0];

    private final IdentityHashMap f25172n = new IdentityHashMap();

    private static final class a {

        public final int[] f25183a;

        public final int f25184b;

        public final int f25185c;

        public final int f25186d;

        public final int f25187e;

        public final int f25188f;

        public final int f25189g;

        private a(int i10, int i11, int[] iArr, int i12, int i13, int i14, int i15) {
            this.f25184b = i10;
            this.f25183a = iArr;
            this.f25185c = i11;
            this.f25187e = i12;
            this.f25188f = i13;
            this.f25189g = i14;
            this.f25186d = i15;
        }

        public static a a(int[] iArr, int i10) {
            return new a(3, 1, iArr, i10, -1, -1, -1);
        }

        public static a b(int[] iArr, int i10) {
            return new a(5, 1, iArr, i10, -1, -1, -1);
        }

        public static a c(int i10) {
            return new a(5, 2, new int[0], -1, -1, -1, i10);
        }

        public static a d(int i10, int[] iArr, int i11, int i12, int i13) {
            return new a(i10, 0, iArr, i11, i12, i13, -1);
        }
    }

    public b(int i10, z9.c cVar, y9.b bVar, int i11, com.google.android.exoplayer2.source.dash.a.InterfaceC0346a interfaceC0346a, k0 k0Var, u uVar, s.a aVar, z zVar, p.a aVar2, long j10, a0 a0Var, com.google.android.exoplayer2.upstream.b bVar2, v9.d dVar, e.b bVar3, u1 u1Var) {
        this.f25159a = i10;
        this.f25180v = cVar;
        this.f25164f = bVar;
        this.f25181w = i11;
        this.f25160b = interfaceC0346a;
        this.f25161c = k0Var;
        this.f25162d = uVar;
        this.f25174p = aVar;
        this.f25163e = zVar;
        this.f25173o = aVar2;
        this.f25165g = j10;
        this.f25166h = a0Var;
        this.f25167i = bVar2;
        this.f25170l = dVar;
        this.f25175q = u1Var;
        this.f25171m = new e(cVar, bVar3, bVar2);
        this.f25179u = dVar.a(this.f25177s);
        g gVarC = cVar.c(i11);
        List list = gVarC.f76677d;
        this.f25182x = list;
        Pair pairK = k(uVar, gVarC.f76676c, list);
        this.f25168j = (y) pairK.first;
        this.f25169k = (a[]) pairK.second;
    }

    private void A(na.s[] sVarArr, v9.s[] sVarArr2, boolean[] zArr, long j10, int[] iArr) {
        for (int i10 = 0; i10 < sVarArr.length; i10++) {
            na.s sVar = sVarArr[i10];
            if (sVar != null) {
                v9.s sVar2 = sVarArr2[i10];
                if (sVar2 == null) {
                    zArr[i10] = true;
                    a aVar = this.f25169k[iArr[i10]];
                    int i11 = aVar.f25185c;
                    if (i11 == 0) {
                        sVarArr2[i10] = j(aVar, sVar, j10);
                    } else if (i11 == 2) {
                        sVarArr2[i10] = new d((f) this.f25182x.get(aVar.f25186d), sVar.getTrackGroup().c(0), this.f25180v.f76642d);
                    }
                } else if (sVar2 instanceof i) {
                    ((com.google.android.exoplayer2.source.dash.a) ((i) sVar2).q()).a(sVar);
                }
            }
        }
        for (int i12 = 0; i12 < sVarArr.length; i12++) {
            if (sVarArr2[i12] == null && sVarArr[i12] != null) {
                a aVar2 = this.f25169k[iArr[i12]];
                if (aVar2.f25185c == 1) {
                    int iQ = q(i12, iArr);
                    if (iQ == -1) {
                        sVarArr2[i12] = new v9.g();
                    } else {
                        sVarArr2[i12] = ((i) sVarArr2[iQ]).F(j10, aVar2.f25184b);
                    }
                }
            }
        }
    }

    private static void c(List list, w[] wVarArr, a[] aVarArr, int i10) {
        int i11 = 0;
        while (i11 < list.size()) {
            f fVar = (f) list.get(i11);
            wVarArr[i10] = new w(fVar.a() + ":" + i11, new p1.b().S(fVar.a()).e0(MimeTypes.APPLICATION_EMSG).E());
            aVarArr[i10] = a.c(i11);
            i11++;
            i10++;
        }
    }

    private static int i(u uVar, List list, int[][] iArr, int i10, boolean[] zArr, p1[][] p1VarArr, w[] wVarArr, a[] aVarArr) {
        int i11;
        int i12;
        int i13;
        int i14 = 0;
        int i15 = 0;
        while (i14 < i10) {
            int[] iArr2 = iArr[i14];
            ArrayList arrayList = new ArrayList();
            for (int i16 : iArr2) {
                arrayList.addAll(((z9.a) list.get(i16)).f76631c);
            }
            int size = arrayList.size();
            p1[] p1VarArr2 = new p1[size];
            for (int i17 = 0; i17 < size; i17++) {
                p1 p1Var = ((j) arrayList.get(i17)).f76689b;
                p1VarArr2[i17] = p1Var.c(uVar.a(p1Var));
            }
            z9.a aVar = (z9.a) list.get(iArr2[0]);
            int i18 = aVar.f76629a;
            String string = i18 != -1 ? Integer.toString(i18) : "unset:" + i14;
            int i19 = i15 + 1;
            if (zArr[i14]) {
                i11 = i15 + 2;
            } else {
                i11 = i19;
                i19 = -1;
            }
            if (p1VarArr[i14].length != 0) {
                i12 = i11 + 1;
            } else {
                i12 = i11;
                i11 = -1;
            }
            wVarArr[i15] = new w(string, p1VarArr2);
            aVarArr[i15] = a.d(aVar.f76630b, iArr2, i15, i19, i11);
            if (i19 != -1) {
                String str = string + ":emsg";
                wVarArr[i19] = new w(str, new p1.b().S(str).e0(MimeTypes.APPLICATION_EMSG).E());
                aVarArr[i19] = a.b(iArr2, i15);
                i13 = -1;
            } else {
                i13 = -1;
            }
            if (i11 != i13) {
                wVarArr[i11] = new w(string + ":cc", p1VarArr[i14]);
                aVarArr[i11] = a.a(iArr2, i15);
            }
            i14++;
            i15 = i12;
        }
        return i15;
    }

    private i j(a aVar, na.s sVar, long j10) {
        int i10;
        w wVarB;
        w wVarB2;
        int i11;
        int i12 = aVar.f25188f;
        boolean z10 = i12 != -1;
        e.c cVarK = null;
        if (z10) {
            wVarB = this.f25168j.b(i12);
            i10 = 1;
        } else {
            i10 = 0;
            wVarB = null;
        }
        int i13 = aVar.f25189g;
        boolean z11 = i13 != -1;
        if (z11) {
            wVarB2 = this.f25168j.b(i13);
            i10 += wVarB2.f73554a;
        } else {
            wVarB2 = null;
        }
        p1[] p1VarArr = new p1[i10];
        int[] iArr = new int[i10];
        if (z10) {
            p1VarArr[0] = wVarB.c(0);
            iArr[0] = 5;
            i11 = 1;
        } else {
            i11 = 0;
        }
        ArrayList arrayList = new ArrayList();
        if (z11) {
            for (int i14 = 0; i14 < wVarB2.f73554a; i14++) {
                p1 p1VarC = wVarB2.c(i14);
                p1VarArr[i11] = p1VarC;
                iArr[i11] = 3;
                arrayList.add(p1VarC);
                i11++;
            }
        }
        if (this.f25180v.f76642d && z10) {
            cVarK = this.f25171m.k();
        }
        e.c cVar = cVarK;
        i iVar = new i(aVar.f25184b, iArr, p1VarArr, this.f25160b.a(this.f25166h, this.f25180v, this.f25164f, this.f25181w, aVar.f25183a, sVar, aVar.f25184b, this.f25165g, z10, arrayList, cVar, this.f25161c, this.f25175q), this, this.f25167i, j10, this.f25162d, this.f25174p, this.f25163e, this.f25173o);
        synchronized (this) {
            this.f25172n.put(iVar, cVar);
        }
        return iVar;
    }

    private static Pair k(u uVar, List list, List list2) {
        int[][] iArrP = p(list);
        int length = iArrP.length;
        boolean[] zArr = new boolean[length];
        p1[][] p1VarArr = new p1[length][];
        int iT = t(length, list, iArrP, zArr, p1VarArr) + length + list2.size();
        w[] wVarArr = new w[iT];
        a[] aVarArr = new a[iT];
        c(list2, wVarArr, aVarArr, i(uVar, list, iArrP, length, zArr, p1VarArr, wVarArr, aVarArr));
        return Pair.create(new y(wVarArr), aVarArr);
    }

    private static z9.e l(List list) {
        return m(list, "urn:mpeg:dash:adaptation-set-switching:2016");
    }

    private static z9.e m(List list, String str) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            z9.e eVar = (z9.e) list.get(i10);
            if (str.equals(eVar.f76666a)) {
                return eVar;
            }
        }
        return null;
    }

    private static z9.e n(List list) {
        return m(list, "http://dashif.org/guidelines/trickmode");
    }

    private static p1[] o(List list, int[] iArr) {
        for (int i10 : iArr) {
            z9.a aVar = (z9.a) list.get(i10);
            List list2 = ((z9.a) list.get(i10)).f76632d;
            for (int i11 = 0; i11 < list2.size(); i11++) {
                z9.e eVar = (z9.e) list2.get(i11);
                if ("urn:scte:dash:cc:cea-608:2015".equals(eVar.f76666a)) {
                    return w(eVar, f25157y, new p1.b().e0(MimeTypes.APPLICATION_CEA608).S(aVar.f76629a + ":cea608").E());
                }
                if ("urn:scte:dash:cc:cea-708:2015".equals(eVar.f76666a)) {
                    return w(eVar, f25158z, new p1.b().e0(MimeTypes.APPLICATION_CEA708).S(aVar.f76629a + ":cea708").E());
                }
            }
        }
        return new p1[0];
    }

    private static int[][] p(List list) {
        int iMin;
        z9.e eVarL;
        int size = list.size();
        SparseIntArray sparseIntArray = new SparseIntArray(size);
        ArrayList arrayList = new ArrayList(size);
        SparseArray sparseArray = new SparseArray(size);
        for (int i10 = 0; i10 < size; i10++) {
            sparseIntArray.put(((z9.a) list.get(i10)).f76629a, i10);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(Integer.valueOf(i10));
            arrayList.add(arrayList2);
            sparseArray.put(i10, arrayList2);
        }
        for (int i11 = 0; i11 < size; i11++) {
            z9.a aVar = (z9.a) list.get(i11);
            z9.e eVarN = n(aVar.f76633e);
            if (eVarN == null) {
                eVarN = n(aVar.f76634f);
            }
            if (eVarN == null || (iMin = sparseIntArray.get(Integer.parseInt(eVarN.f76667b), -1)) == -1) {
                iMin = i11;
            }
            if (iMin == i11 && (eVarL = l(aVar.f76634f)) != null) {
                for (String str : p0.S0(eVarL.f76667b, ",")) {
                    int i12 = sparseIntArray.get(Integer.parseInt(str), -1);
                    if (i12 != -1) {
                        iMin = Math.min(iMin, i12);
                    }
                }
            }
            if (iMin != i11) {
                List list2 = (List) sparseArray.get(i11);
                List list3 = (List) sparseArray.get(iMin);
                list3.addAll(list2);
                sparseArray.put(i11, list3);
                arrayList.remove(list2);
            }
        }
        int size2 = arrayList.size();
        int[][] iArr = new int[size2][];
        for (int i13 = 0; i13 < size2; i13++) {
            int[] iArrO = Ints.o((Collection) arrayList.get(i13));
            iArr[i13] = iArrO;
            Arrays.sort(iArrO);
        }
        return iArr;
    }

    private int q(int i10, int[] iArr) {
        int i11 = iArr[i10];
        if (i11 == -1) {
            return -1;
        }
        int i12 = this.f25169k[i11].f25187e;
        for (int i13 = 0; i13 < iArr.length; i13++) {
            int i14 = iArr[i13];
            if (i14 == i12 && this.f25169k[i14].f25185c == 0) {
                return i13;
            }
        }
        return -1;
    }

    private int[] r(na.s[] sVarArr) {
        int[] iArr = new int[sVarArr.length];
        for (int i10 = 0; i10 < sVarArr.length; i10++) {
            na.s sVar = sVarArr[i10];
            if (sVar != null) {
                iArr[i10] = this.f25168j.c(sVar.getTrackGroup());
            } else {
                iArr[i10] = -1;
            }
        }
        return iArr;
    }

    private static boolean s(List list, int[] iArr) {
        for (int i10 : iArr) {
            List list2 = ((z9.a) list.get(i10)).f76631c;
            for (int i11 = 0; i11 < list2.size(); i11++) {
                if (!((j) list2.get(i11)).f76692e.isEmpty()) {
                    return true;
                }
            }
        }
        return false;
    }

    private static int t(int i10, List list, int[][] iArr, boolean[] zArr, p1[][] p1VarArr) {
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            if (s(list, iArr[i12])) {
                zArr[i12] = true;
                i11++;
            }
            p1[] p1VarArrO = o(list, iArr[i12]);
            p1VarArr[i12] = p1VarArrO;
            if (p1VarArrO.length != 0) {
                i11++;
            }
        }
        return i11;
    }

    private static i[] u(int i10) {
        return new i[i10];
    }

    private static p1[] w(z9.e eVar, Pattern pattern, p1 p1Var) {
        String str = eVar.f76667b;
        if (str == null) {
            return new p1[]{p1Var};
        }
        String[] strArrS0 = p0.S0(str, ";");
        p1[] p1VarArr = new p1[strArrS0.length];
        for (int i10 = 0; i10 < strArrS0.length; i10++) {
            Matcher matcher = pattern.matcher(strArrS0[i10]);
            if (!matcher.matches()) {
                return new p1[]{p1Var};
            }
            int i11 = Integer.parseInt(matcher.group(1));
            p1VarArr[i10] = p1Var.b().S(p1Var.f24890a + ":" + i11).F(i11).V(matcher.group(2)).E();
        }
        return p1VarArr;
    }

    private void y(na.s[] sVarArr, boolean[] zArr, v9.s[] sVarArr2) {
        for (int i10 = 0; i10 < sVarArr.length; i10++) {
            if (sVarArr[i10] == null || !zArr[i10]) {
                v9.s sVar = sVarArr2[i10];
                if (sVar instanceof i) {
                    ((i) sVar).C(this);
                } else if (sVar instanceof i.a) {
                    ((i.a) sVar).c();
                }
                sVarArr2[i10] = null;
            }
        }
    }

    private void z(na.s[] sVarArr, v9.s[] sVarArr2, int[] iArr) {
        boolean z10;
        for (int i10 = 0; i10 < sVarArr.length; i10++) {
            v9.s sVar = sVarArr2[i10];
            if ((sVar instanceof v9.g) || (sVar instanceof i.a)) {
                int iQ = q(i10, iArr);
                if (iQ == -1) {
                    z10 = sVarArr2[i10] instanceof v9.g;
                } else {
                    v9.s sVar2 = sVarArr2[i10];
                    z10 = (sVar2 instanceof i.a) && ((i.a) sVar2).f75218a == sVarArr2[iQ];
                }
                if (!z10) {
                    v9.s sVar3 = sVarArr2[i10];
                    if (sVar3 instanceof i.a) {
                        ((i.a) sVar3).c();
                    }
                    sVarArr2[i10] = null;
                }
            }
        }
    }

    public void B(z9.c cVar, int i10) {
        this.f25180v = cVar;
        this.f25181w = i10;
        this.f25171m.q(cVar);
        i[] iVarArr = this.f25177s;
        if (iVarArr != null) {
            for (i iVar : iVarArr) {
                ((com.google.android.exoplayer2.source.dash.a) iVar.q()).e(cVar, i10);
            }
            this.f25176r.g(this);
        }
        this.f25182x = cVar.c(i10).f76677d;
        for (d dVar : this.f25178t) {
            for (f fVar : this.f25182x) {
                if (fVar.a().equals(dVar.b())) {
                    dVar.d(fVar, cVar.f76642d && i10 == cVar.d() - 1);
                    break;
                }
            }
        }
    }

    @Override
    public synchronized void a(i iVar) {
        e.c cVar = (e.c) this.f25172n.remove(iVar);
        if (cVar != null) {
            cVar.n();
        }
    }

    @Override
    public long b(long j10, d3 d3Var) {
        for (i iVar : this.f25177s) {
            if (iVar.f75195a == 2) {
                return iVar.b(j10, d3Var);
            }
        }
        return j10;
    }

    @Override
    public boolean continueLoading(long j10) {
        return this.f25179u.continueLoading(j10);
    }

    @Override
    public void discardBuffer(long j10, boolean z10) {
        for (i iVar : this.f25177s) {
            iVar.discardBuffer(j10, z10);
        }
    }

    @Override
    public long e(na.s[] sVarArr, boolean[] zArr, v9.s[] sVarArr2, boolean[] zArr2, long j10) {
        int[] iArrR = r(sVarArr);
        y(sVarArr, zArr, sVarArr2);
        z(sVarArr, sVarArr2, iArrR);
        A(sVarArr, sVarArr2, zArr2, j10, iArrR);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (v9.s sVar : sVarArr2) {
            if (sVar instanceof i) {
                arrayList.add((i) sVar);
            } else if (sVar instanceof d) {
                arrayList2.add((d) sVar);
            }
        }
        i[] iVarArrU = u(arrayList.size());
        this.f25177s = iVarArrU;
        arrayList.toArray(iVarArrU);
        d[] dVarArr = new d[arrayList2.size()];
        this.f25178t = dVarArr;
        arrayList2.toArray(dVarArr);
        this.f25179u = this.f25170l.a(this.f25177s);
        return j10;
    }

    @Override
    public void f(n.a aVar, long j10) {
        this.f25176r = aVar;
        aVar.h(this);
    }

    @Override
    public long getBufferedPositionUs() {
        return this.f25179u.getBufferedPositionUs();
    }

    @Override
    public long getNextLoadPositionUs() {
        return this.f25179u.getNextLoadPositionUs();
    }

    @Override
    public y getTrackGroups() {
        return this.f25168j;
    }

    @Override
    public boolean isLoading() {
        return this.f25179u.isLoading();
    }

    @Override
    public void maybeThrowPrepareError() {
        this.f25166h.maybeThrowError();
    }

    @Override
    public long readDiscontinuity() {
        return C.TIME_UNSET;
    }

    @Override
    public void reevaluateBuffer(long j10) {
        this.f25179u.reevaluateBuffer(j10);
    }

    @Override
    public long seekToUs(long j10) {
        for (i iVar : this.f25177s) {
            iVar.E(j10);
        }
        for (d dVar : this.f25178t) {
            dVar.c(j10);
        }
        return j10;
    }

    @Override
    public void g(i iVar) {
        this.f25176r.g(this);
    }

    public void x() {
        this.f25171m.o();
        for (i iVar : this.f25177s) {
            iVar.C(this);
        }
        this.f25176r = null;
    }
}
