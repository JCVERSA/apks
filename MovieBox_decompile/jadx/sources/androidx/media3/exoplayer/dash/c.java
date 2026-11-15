package androidx.media3.exoplayer.dash;

import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.drm.r;
import androidx.media3.exoplayer.drm.t;
import androidx.media3.exoplayer.source.f0;
import androidx.media3.exoplayer.source.q;
import androidx.media3.exoplayer.source.s;
import androidx.media3.exoplayer.upstream.m;
import androidx.media3.exoplayer.upstream.p;
import androidx.media3.exoplayer.v2;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import f2.u;
import f2.z;
import g2.h;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import w1.n;
import x1.f4;
import z1.g;
import z1.j;

final class c implements q, f0.a, h.b {
    private static final Pattern A = Pattern.compile("CC([1-4])=(.+)");
    private static final Pattern B = Pattern.compile("([1-4])=lang:(\\w+)(,.+)?");

    final int f11089a;

    private final androidx.media3.exoplayer.dash.a.InterfaceC0089a f11090b;

    private final n f11091c;

    private final t f11092d;

    private final m f11093e;

    private final y1.b f11094f;

    private final long f11095g;

    private final p f11096h;

    private final androidx.media3.exoplayer.upstream.b f11097i;

    private final z f11098j;

    private final a[] f11099k;

    private final f2.e f11100l;

    private final f f11101m;

    private final s.a f11103o;

    private final r.a f11104p;

    private final f4 f11105q;

    private q.a f11106r;

    private f0 f11109u;

    private z1.c f11110v;

    private int f11111w;

    private List f11112x;

    private long f11114z;

    private boolean f11113y = true;

    private h[] f11107s = z(0);

    private e[] f11108t = new e[0];

    private final IdentityHashMap f11102n = new IdentityHashMap();

    private static final class a {

        public final int[] f11115a;

        public final int f11116b;

        public final int f11117c;

        public final int f11118d;

        public final int f11119e;

        public final int f11120f;

        public final int f11121g;

        public final ImmutableList f11122h;

        private a(int i10, int i11, int[] iArr, int i12, int i13, int i14, int i15, ImmutableList immutableList) {
            this.f11116b = i10;
            this.f11115a = iArr;
            this.f11117c = i11;
            this.f11119e = i12;
            this.f11120f = i13;
            this.f11121g = i14;
            this.f11118d = i15;
            this.f11122h = immutableList;
        }

        public static a a(int[] iArr, int i10, ImmutableList immutableList) {
            return new a(3, 1, iArr, i10, -1, -1, -1, immutableList);
        }

        public static a b(int[] iArr, int i10) {
            return new a(5, 1, iArr, i10, -1, -1, -1, ImmutableList.of());
        }

        public static a c(int i10) {
            return new a(5, 2, new int[0], -1, -1, -1, i10, ImmutableList.of());
        }

        public static a d(int i10, int[] iArr, int i11, int i12, int i13) {
            return new a(i10, 0, iArr, i11, i12, i13, -1, ImmutableList.of());
        }
    }

    public c(int i10, z1.c cVar, y1.b bVar, int i11, androidx.media3.exoplayer.dash.a.InterfaceC0089a interfaceC0089a, n nVar, androidx.media3.exoplayer.upstream.f fVar, t tVar, r.a aVar, m mVar, s.a aVar2, long j10, p pVar, androidx.media3.exoplayer.upstream.b bVar2, f2.e eVar, f.b bVar3, f4 f4Var) {
        this.f11089a = i10;
        this.f11110v = cVar;
        this.f11094f = bVar;
        this.f11111w = i11;
        this.f11090b = interfaceC0089a;
        this.f11091c = nVar;
        this.f11092d = tVar;
        this.f11104p = aVar;
        this.f11093e = mVar;
        this.f11103o = aVar2;
        this.f11095g = j10;
        this.f11096h = pVar;
        this.f11097i = bVar2;
        this.f11100l = eVar;
        this.f11105q = f4Var;
        this.f11101m = new f(cVar, bVar3, bVar2);
        this.f11109u = eVar.b();
        g gVarC = cVar.c(i11);
        List list = gVarC.f76544d;
        this.f11112x = list;
        Pair pairM = m(tVar, interfaceC0089a, gVarC.f76543c, list);
        this.f11098j = (z) pairM.first;
        this.f11099k = (a[]) pairM.second;
    }

    private static androidx.media3.common.r[] B(z1.e eVar, Pattern pattern, androidx.media3.common.r rVar) {
        String str = eVar.f76534b;
        if (str == null) {
            return new androidx.media3.common.r[]{rVar};
        }
        String[] strArrO1 = a1.o1(str, ";");
        androidx.media3.common.r[] rVarArr = new androidx.media3.common.r[strArrO1.length];
        for (int i10 = 0; i10 < strArrO1.length; i10++) {
            Matcher matcher = pattern.matcher(strArrO1[i10]);
            if (!matcher.matches()) {
                return new androidx.media3.common.r[]{rVar};
            }
            int i11 = Integer.parseInt(matcher.group(1));
            rVarArr[i10] = rVar.b().f0(rVar.f9835a + ":" + i11).O(i11).j0(matcher.group(2)).N();
        }
        return rVarArr;
    }

    private void D(i2.z[] zVarArr, boolean[] zArr, u[] uVarArr) {
        for (int i10 = 0; i10 < zVarArr.length; i10++) {
            if (zVarArr[i10] == null || !zArr[i10]) {
                u uVar = uVarArr[i10];
                if (uVar instanceof h) {
                    ((h) uVar).G(this);
                } else if (uVar instanceof h.a) {
                    ((h.a) uVar).b();
                }
                uVarArr[i10] = null;
            }
        }
    }

    private void E(i2.z[] zVarArr, u[] uVarArr, int[] iArr) {
        boolean z10;
        for (int i10 = 0; i10 < zVarArr.length; i10++) {
            u uVar = uVarArr[i10];
            if ((uVar instanceof f2.h) || (uVar instanceof h.a)) {
                int iT = t(i10, iArr);
                if (iT == -1) {
                    z10 = uVarArr[i10] instanceof f2.h;
                } else {
                    u uVar2 = uVarArr[i10];
                    z10 = (uVar2 instanceof h.a) && ((h.a) uVar2).f60631a == uVarArr[iT];
                }
                if (!z10) {
                    u uVar3 = uVarArr[i10];
                    if (uVar3 instanceof h.a) {
                        ((h.a) uVar3).b();
                    }
                    uVarArr[i10] = null;
                }
            }
        }
    }

    private void F(i2.z[] zVarArr, u[] uVarArr, boolean[] zArr, long j10, int[] iArr) {
        for (int i10 = 0; i10 < zVarArr.length; i10++) {
            i2.z zVar = zVarArr[i10];
            if (zVar != null) {
                u uVar = uVarArr[i10];
                if (uVar == null) {
                    zArr[i10] = true;
                    a aVar = this.f11099k[iArr[i10]];
                    int i11 = aVar.f11117c;
                    if (i11 == 0) {
                        uVarArr[i10] = l(aVar, zVar, j10);
                    } else if (i11 == 2) {
                        uVarArr[i10] = new e((z1.f) this.f11112x.get(aVar.f11118d), zVar.getTrackGroup().a(0), this.f11110v.f76508d);
                    }
                } else if (uVar instanceof h) {
                    ((androidx.media3.exoplayer.dash.a) ((h) uVar).u()).a(zVar);
                }
            }
        }
        for (int i12 = 0; i12 < zVarArr.length; i12++) {
            if (uVarArr[i12] == null && zVarArr[i12] != null) {
                a aVar2 = this.f11099k[iArr[i12]];
                if (aVar2.f11117c == 1) {
                    int iT = t(i12, iArr);
                    if (iT == -1) {
                        uVarArr[i12] = new f2.h();
                    } else {
                        uVarArr[i12] = ((h) uVarArr[iT]).J(j10, aVar2.f11116b);
                    }
                }
            }
        }
    }

    private static void j(List list, androidx.media3.common.f0[] f0VarArr, a[] aVarArr, int i10) {
        int i11 = 0;
        while (i11 < list.size()) {
            z1.f fVar = (z1.f) list.get(i11);
            f0VarArr[i10] = new androidx.media3.common.f0(fVar.a() + ":" + i11, new androidx.media3.common.r.b().f0(fVar.a()).u0(MimeTypes.APPLICATION_EMSG).N());
            aVarArr[i10] = a.c(i11);
            i11++;
            i10++;
        }
    }

    private static int k(t tVar, androidx.media3.exoplayer.dash.a.InterfaceC0089a interfaceC0089a, List list, int[][] iArr, int i10, boolean[] zArr, androidx.media3.common.r[][] rVarArr, androidx.media3.common.f0[] f0VarArr, a[] aVarArr) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        while (i16 < i10) {
            int[] iArr2 = iArr[i16];
            ArrayList arrayList = new ArrayList();
            int length = iArr2.length;
            for (int i18 = i15; i18 < length; i18++) {
                arrayList.addAll(((z1.a) list.get(iArr2[i18])).f76497c);
            }
            int size = arrayList.size();
            androidx.media3.common.r[] rVarArr2 = new androidx.media3.common.r[size];
            for (int i19 = i15; i19 < size; i19++) {
                androidx.media3.common.r rVar = ((j) arrayList.get(i19)).f76556b;
                rVarArr2[i19] = rVar.b().V(tVar.b(rVar)).N();
            }
            z1.a aVar = (z1.a) list.get(iArr2[i15]);
            long j10 = aVar.f76495a;
            String string = j10 != -1 ? Long.toString(j10) : "unset:" + i16;
            int i20 = i17 + 1;
            if (zArr[i16]) {
                i11 = i17 + 2;
            } else {
                i11 = i20;
                i20 = -1;
            }
            if (rVarArr[i16].length != 0) {
                i12 = i11 + 1;
            } else {
                i12 = i11;
                i11 = -1;
            }
            y(interfaceC0089a, rVarArr2);
            f0VarArr[i17] = new androidx.media3.common.f0(string, rVarArr2);
            aVarArr[i17] = a.d(aVar.f76496b, iArr2, i17, i20, i11);
            if (i20 != -1) {
                String str = string + ":emsg";
                i13 = 0;
                f0VarArr[i20] = new androidx.media3.common.f0(str, new androidx.media3.common.r.b().f0(str).u0(MimeTypes.APPLICATION_EMSG).N());
                aVarArr[i20] = a.b(iArr2, i17);
                i14 = -1;
            } else {
                i13 = 0;
                i14 = -1;
            }
            if (i11 != i14) {
                aVarArr[i11] = a.a(iArr2, i17, ImmutableList.copyOf(rVarArr[i16]));
                y(interfaceC0089a, rVarArr[i16]);
                f0VarArr[i11] = new androidx.media3.common.f0(string + ":cc", rVarArr[i16]);
            }
            i16++;
            i17 = i12;
            i15 = i13;
        }
        return i17;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private h l(a aVar, i2.z zVar, long j10) {
        int i10;
        androidx.media3.common.f0 f0VarB;
        int i11;
        int i12 = aVar.f11120f;
        boolean z10 = i12 != -1;
        f.c cVarK = null;
        if (z10) {
            f0VarB = this.f11098j.b(i12);
            i10 = 1;
        } else {
            i10 = 0;
            f0VarB = null;
        }
        int i13 = aVar.f11121g;
        ImmutableList immutableListOf = i13 != -1 ? this.f11099k[i13].f11122h : ImmutableList.of();
        int size = i10 + immutableListOf.size();
        androidx.media3.common.r[] rVarArr = new androidx.media3.common.r[size];
        int[] iArr = new int[size];
        if (z10) {
            rVarArr[0] = f0VarB.a(0);
            iArr[0] = 5;
            i11 = 1;
        } else {
            i11 = 0;
        }
        ArrayList arrayList = new ArrayList();
        for (int i14 = 0; i14 < immutableListOf.size(); i14++) {
            androidx.media3.common.r rVar = (androidx.media3.common.r) immutableListOf.get(i14);
            rVarArr[i11] = rVar;
            iArr[i11] = 3;
            arrayList.add(rVar);
            i11++;
        }
        if (this.f11110v.f76508d && z10) {
            cVarK = this.f11101m.k();
        }
        f.c cVar = cVarK;
        h hVar = new h(aVar.f11116b, iArr, rVarArr, this.f11090b.e(this.f11096h, this.f11110v, this.f11094f, this.f11111w, aVar.f11115a, zVar, aVar.f11116b, this.f11095g, z10, arrayList, cVar, this.f11091c, this.f11105q, null), this, this.f11097i, j10, this.f11092d, this.f11104p, this.f11093e, this.f11103o, this.f11113y, null);
        synchronized (this) {
            this.f11102n.put(hVar, cVar);
        }
        return hVar;
    }

    private static Pair m(t tVar, androidx.media3.exoplayer.dash.a.InterfaceC0089a interfaceC0089a, List list, List list2) {
        int[][] iArrS = s(list);
        int length = iArrS.length;
        boolean[] zArr = new boolean[length];
        androidx.media3.common.r[][] rVarArr = new androidx.media3.common.r[length][];
        int iW = w(length, list, iArrS, zArr, rVarArr) + length + list2.size();
        androidx.media3.common.f0[] f0VarArr = new androidx.media3.common.f0[iW];
        a[] aVarArr = new a[iW];
        j(list2, f0VarArr, aVarArr, k(tVar, interfaceC0089a, list, iArrS, length, zArr, rVarArr, f0VarArr, aVarArr));
        return Pair.create(new z(f0VarArr), aVarArr);
    }

    private static boolean n(z1.a aVar, z1.a aVar2) {
        if (aVar.f76496b != aVar2.f76496b) {
            return false;
        }
        if (aVar.f76497c.isEmpty() || aVar2.f76497c.isEmpty()) {
            return true;
        }
        androidx.media3.common.r rVar = ((j) aVar.f76497c.get(0)).f76556b;
        androidx.media3.common.r rVar2 = ((j) aVar2.f76497c.get(0)).f76556b;
        return Objects.equals(rVar.f9838d, rVar2.f9838d) && rVar.f9840f == rVar2.f9840f;
    }

    private static z1.e o(List list) {
        return p(list, "urn:mpeg:dash:adaptation-set-switching:2016");
    }

    private static z1.e p(List list, String str) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            z1.e eVar = (z1.e) list.get(i10);
            if (str.equals(eVar.f76533a)) {
                return eVar;
            }
        }
        return null;
    }

    private static z1.e q(List list) {
        return p(list, "http://dashif.org/guidelines/trickmode");
    }

    private static androidx.media3.common.r[] r(List list, int[] iArr) {
        for (int i10 : iArr) {
            z1.a aVar = (z1.a) list.get(i10);
            List list2 = ((z1.a) list.get(i10)).f76498d;
            for (int i11 = 0; i11 < list2.size(); i11++) {
                z1.e eVar = (z1.e) list2.get(i11);
                if ("urn:scte:dash:cc:cea-608:2015".equals(eVar.f76533a)) {
                    return B(eVar, A, new androidx.media3.common.r.b().u0(MimeTypes.APPLICATION_CEA608).f0(aVar.f76495a + ":cea608").N());
                }
                if ("urn:scte:dash:cc:cea-708:2015".equals(eVar.f76533a)) {
                    return B(eVar, B, new androidx.media3.common.r.b().u0(MimeTypes.APPLICATION_CEA708).f0(aVar.f76495a + ":cea708").N());
                }
            }
        }
        return new androidx.media3.common.r[0];
    }

    private static int[][] s(List list) {
        z1.e eVarO;
        Integer num;
        int size = list.size();
        HashMap mapP = Maps.p(size);
        ArrayList arrayList = new ArrayList(size);
        SparseArray sparseArray = new SparseArray(size);
        for (int i10 = 0; i10 < size; i10++) {
            mapP.put(Long.valueOf(((z1.a) list.get(i10)).f76495a), Integer.valueOf(i10));
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(Integer.valueOf(i10));
            arrayList.add(arrayList2);
            sparseArray.put(i10, arrayList2);
        }
        for (int i11 = 0; i11 < size; i11++) {
            z1.a aVar = (z1.a) list.get(i11);
            z1.e eVarQ = q(aVar.f76499e);
            if (eVarQ == null) {
                eVarQ = q(aVar.f76500f);
            }
            int iIntValue = (eVarQ == null || (num = (Integer) mapP.get(Long.valueOf(Long.parseLong(eVarQ.f76534b)))) == null) ? i11 : num.intValue();
            if (iIntValue == i11 && (eVarO = o(aVar.f76500f)) != null) {
                for (String str : a1.o1(eVarO.f76534b, ",")) {
                    Integer num2 = (Integer) mapP.get(Long.valueOf(Long.parseLong(str)));
                    if (num2 != null && n(aVar, (z1.a) list.get(num2.intValue()))) {
                        iIntValue = Math.min(iIntValue, num2.intValue());
                    }
                }
            }
            if (iIntValue != i11) {
                List list2 = (List) sparseArray.get(i11);
                List list3 = (List) sparseArray.get(iIntValue);
                list3.addAll(list2);
                sparseArray.put(i11, list3);
                arrayList.remove(list2);
            }
        }
        int size2 = arrayList.size();
        int[][] iArr = new int[size2][];
        for (int i12 = 0; i12 < size2; i12++) {
            int[] iArrO = Ints.o((Collection) arrayList.get(i12));
            iArr[i12] = iArrO;
            Arrays.sort(iArrO);
        }
        return iArr;
    }

    private int t(int i10, int[] iArr) {
        int i11 = iArr[i10];
        if (i11 == -1) {
            return -1;
        }
        int i12 = this.f11099k[i11].f11119e;
        for (int i13 = 0; i13 < iArr.length; i13++) {
            int i14 = iArr[i13];
            if (i14 == i12 && this.f11099k[i14].f11117c == 0) {
                return i13;
            }
        }
        return -1;
    }

    private int[] u(i2.z[] zVarArr) {
        int[] iArr = new int[zVarArr.length];
        for (int i10 = 0; i10 < zVarArr.length; i10++) {
            i2.z zVar = zVarArr[i10];
            if (zVar != null) {
                iArr[i10] = this.f11098j.d(zVar.getTrackGroup());
            } else {
                iArr[i10] = -1;
            }
        }
        return iArr;
    }

    private static boolean v(List list, int[] iArr) {
        for (int i10 : iArr) {
            List list2 = ((z1.a) list.get(i10)).f76497c;
            for (int i11 = 0; i11 < list2.size(); i11++) {
                if (!((j) list2.get(i11)).f76559e.isEmpty()) {
                    return true;
                }
            }
        }
        return false;
    }

    private static int w(int i10, List list, int[][] iArr, boolean[] zArr, androidx.media3.common.r[][] rVarArr) {
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            if (v(list, iArr[i12])) {
                zArr[i12] = true;
                i11++;
            }
            androidx.media3.common.r[] rVarArrR = r(list, iArr[i12]);
            rVarArr[i12] = rVarArrR;
            if (rVarArrR.length != 0) {
                i11++;
            }
        }
        return i11;
    }

    public static List x(h hVar) {
        return ImmutableList.of(Integer.valueOf(hVar.f60606a));
    }

    private static void y(androidx.media3.exoplayer.dash.a.InterfaceC0089a interfaceC0089a, androidx.media3.common.r[] rVarArr) {
        for (int i10 = 0; i10 < rVarArr.length; i10++) {
            rVarArr[i10] = interfaceC0089a.d(rVarArr[i10]);
        }
    }

    private static h[] z(int i10) {
        return new h[i10];
    }

    @Override
    public void h(h hVar) {
        this.f11106r.h(this);
    }

    public void C() {
        this.f11101m.o();
        for (h hVar : this.f11107s) {
            hVar.G(this);
        }
        this.f11106r = null;
    }

    public void G(z1.c cVar, int i10) {
        this.f11110v = cVar;
        this.f11111w = i10;
        this.f11101m.q(cVar);
        h[] hVarArr = this.f11107s;
        if (hVarArr != null) {
            for (h hVar : hVarArr) {
                ((androidx.media3.exoplayer.dash.a) hVar.u()).g(cVar, i10);
            }
            this.f11106r.h(this);
        }
        this.f11112x = cVar.c(i10).f76544d;
        for (e eVar : this.f11108t) {
            for (z1.f fVar : this.f11112x) {
                if (fVar.a().equals(eVar.a())) {
                    eVar.d(fVar, cVar.f76508d && i10 == cVar.d() - 1);
                    break;
                }
            }
        }
    }

    @Override
    public boolean a(v2 v2Var) {
        return this.f11109u.a(v2Var);
    }

    @Override
    public long b(long j10, c4 c4Var) {
        for (h hVar : this.f11107s) {
            if (hVar.f60606a == 2) {
                return hVar.b(j10, c4Var);
            }
        }
        return j10;
    }

    @Override
    public synchronized void c(h hVar) {
        f.c cVar = (f.c) this.f11102n.remove(hVar);
        if (cVar != null) {
            cVar.o();
        }
    }

    @Override
    public void discardBuffer(long j10, boolean z10) {
        for (h hVar : this.f11107s) {
            hVar.discardBuffer(j10, z10);
        }
    }

    @Override
    public long e(i2.z[] zVarArr, boolean[] zArr, u[] uVarArr, boolean[] zArr2, long j10) {
        int[] iArrU = u(zVarArr);
        D(zVarArr, zArr, uVarArr);
        E(zVarArr, uVarArr, iArrU);
        F(zVarArr, uVarArr, zArr2, j10, iArrU);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (u uVar : uVarArr) {
            if (uVar instanceof h) {
                arrayList.add((h) uVar);
            } else if (uVar instanceof e) {
                arrayList2.add((e) uVar);
            }
        }
        h[] hVarArrZ = z(arrayList.size());
        this.f11107s = hVarArrZ;
        arrayList.toArray(hVarArrZ);
        e[] eVarArr = new e[arrayList2.size()];
        this.f11108t = eVarArr;
        arrayList2.toArray(eVarArr);
        this.f11109u = this.f11100l.a(arrayList, Lists.o(arrayList, new com.google.common.base.f() {
            @Override
            public final Object apply(Object obj) {
                return c.x((h) obj);
            }
        }));
        if (this.f11113y) {
            this.f11113y = false;
            this.f11114z = j10;
        }
        return j10;
    }

    @Override
    public void f(q.a aVar, long j10) {
        this.f11106r = aVar;
        aVar.g(this);
    }

    @Override
    public long getBufferedPositionUs() {
        return this.f11109u.getBufferedPositionUs();
    }

    @Override
    public long getNextLoadPositionUs() {
        return this.f11109u.getNextLoadPositionUs();
    }

    @Override
    public z getTrackGroups() {
        return this.f11098j;
    }

    @Override
    public boolean isLoading() {
        return this.f11109u.isLoading();
    }

    @Override
    public void maybeThrowPrepareError() {
        this.f11096h.maybeThrowError();
    }

    @Override
    public long readDiscontinuity() {
        for (h hVar : this.f11107s) {
            if (hVar.m()) {
                return this.f11114z;
            }
        }
        return C.TIME_UNSET;
    }

    @Override
    public void reevaluateBuffer(long j10) {
        for (h hVar : this.f11107s) {
            if (!hVar.isLoading()) {
                hVar.t(this.f11110v.f(this.f11111w));
            }
        }
        this.f11109u.reevaluateBuffer(j10);
    }

    @Override
    public long seekToUs(long j10) {
        for (h hVar : this.f11107s) {
            hVar.I(j10);
        }
        for (e eVar : this.f11108t) {
            eVar.b(j10);
        }
        return j10;
    }
}
