package androidx.media3.exoplayer.hls;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseIntArray;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.x;
import androidx.media3.common.y;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.source.e0;
import androidx.media3.exoplayer.source.f0;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.v2;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.g3;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import f2.z;
import i2.d0;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import k2.m0;
import k2.r0;
import k2.s0;

final class r implements Loader.b, Loader.e, f0, k2.t, e0.d {
    private static final Set Y = Collections.unmodifiableSet(new HashSet(Arrays.asList(1, 2, 5)));
    private int A;
    private int B;
    private boolean C;
    private boolean D;
    private int E;
    private androidx.media3.common.r F;
    private androidx.media3.common.r G;
    private boolean H;
    private z I;
    private Set J;
    private int[] K;
    private int L;
    private boolean M;
    private boolean[] N;
    private boolean[] O;
    private long P;
    private long Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private boolean U;
    private long V;
    private DrmInitData W;
    private i X;

    private final String f11642a;

    private final int f11643b;

    private final b f11644c;

    private final e f11645d;

    private final androidx.media3.exoplayer.upstream.b f11646e;

    private final androidx.media3.common.r f11647f;

    private final androidx.media3.exoplayer.drm.t f11648g;

    private final androidx.media3.exoplayer.drm.r.a f11649h;

    private final androidx.media3.exoplayer.upstream.m f11650i;

    private final androidx.media3.exoplayer.source.s.a f11652k;

    private final int f11653l;

    private final ArrayList f11655n;

    private final List f11656o;

    private final Runnable f11657p;

    private final Runnable f11658q;

    private final Handler f11659r;

    private final ArrayList f11660s;

    private final Map f11661t;

    private g2.e f11662u;

    private d[] f11663v;

    private Set f11665x;

    private SparseIntArray f11666y;

    private s0 f11667z;

    private final Loader f11651j = new Loader("Loader:HlsSampleStreamWrapper");

    private final e.b f11654m = new e.b();

    private int[] f11664w = new int[0];

    public interface b extends f0.a {
        void d(Uri uri);

        void onPrepared();
    }

    private static class c implements s0 {

        private static final androidx.media3.common.r f11668g = new androidx.media3.common.r.b().u0(MimeTypes.APPLICATION_ID3).N();

        private static final androidx.media3.common.r f11669h = new androidx.media3.common.r.b().u0(MimeTypes.APPLICATION_EMSG).N();

        private final v2.b f11670a = new v2.b();

        private final s0 f11671b;

        private final androidx.media3.common.r f11672c;

        private androidx.media3.common.r f11673d;

        private byte[] f11674e;

        private int f11675f;

        public c(s0 s0Var, int i10) {
            this.f11671b = s0Var;
            if (i10 == 1) {
                this.f11672c = f11668g;
            } else {
                if (i10 != 3) {
                    throw new IllegalArgumentException("Unknown metadataType: " + i10);
                }
                this.f11672c = f11669h;
            }
            this.f11674e = new byte[0];
            this.f11675f = 0;
        }

        private boolean h(v2.a aVar) {
            androidx.media3.common.r wrappedMetadataFormat = aVar.getWrappedMetadataFormat();
            return wrappedMetadataFormat != null && Objects.equals(this.f11672c.f9849o, wrappedMetadataFormat.f9849o);
        }

        private void i(int i10) {
            byte[] bArr = this.f11674e;
            if (bArr.length < i10) {
                this.f11674e = Arrays.copyOf(bArr, i10 + (i10 / 2));
            }
        }

        private j0 j(int i10, int i11) {
            int i12 = this.f11675f - i11;
            j0 j0Var = new j0(Arrays.copyOfRange(this.f11674e, i12 - i10, i12));
            byte[] bArr = this.f11674e;
            System.arraycopy(bArr, i12, bArr, 0, i11);
            this.f11675f = i11;
            return j0Var;
        }

        @Override
        public void a(j0 j0Var, int i10, int i11) {
            i(this.f11675f + i10);
            j0Var.l(this.f11674e, this.f11675f, i10);
            this.f11675f += i10;
        }

        @Override
        public void b(long j10, int i10, int i11, int i12, s0.a aVar) {
            androidx.media3.common.util.a.e(this.f11673d);
            j0 j0VarJ = j(i11, i12);
            if (!Objects.equals(this.f11673d.f9849o, this.f11672c.f9849o)) {
                if (!MimeTypes.APPLICATION_EMSG.equals(this.f11673d.f9849o)) {
                    androidx.media3.common.util.u.h("HlsSampleStreamWrapper", "Ignoring sample for unsupported format: " + this.f11673d.f9849o);
                    return;
                }
                v2.a aVarC = this.f11670a.c(j0VarJ);
                if (!h(aVarC)) {
                    androidx.media3.common.util.u.h("HlsSampleStreamWrapper", String.format("Ignoring EMSG. Expected it to contain wrapped %s but actual wrapped format: %s", this.f11672c.f9849o, aVarC.getWrappedMetadataFormat()));
                    return;
                }
                j0VarJ = new j0((byte[]) androidx.media3.common.util.a.e(aVarC.getWrappedMetadataBytes()));
            }
            int iA = j0VarJ.a();
            this.f11671b.c(j0VarJ, iA);
            this.f11671b.b(j10, i10, iA, 0, aVar);
        }

        @Override
        public void c(j0 j0Var, int i10) {
            r0.c(this, j0Var, i10);
        }

        @Override
        public void d(androidx.media3.common.r rVar) {
            this.f11673d = rVar;
            this.f11671b.d(this.f11672c);
        }

        @Override
        public int e(androidx.media3.common.j jVar, int i10, boolean z10) {
            return r0.b(this, jVar, i10, z10);
        }

        @Override
        public void f(long j10) {
            r0.a(this, j10);
        }

        @Override
        public int g(androidx.media3.common.j jVar, int i10, boolean z10, int i11) throws EOFException {
            i(this.f11675f + i10);
            int i12 = jVar.read(this.f11674e, this.f11675f, i10);
            if (i12 != -1) {
                this.f11675f += i12;
                return i12;
            }
            if (z10) {
                return -1;
            }
            throw new EOFException();
        }
    }

    private static final class d extends e0 {
        private final Map H;
        private DrmInitData I;

        private x k0(x xVar) {
            if (xVar == null) {
                return null;
            }
            int iE = xVar.e();
            int i10 = 0;
            int i11 = 0;
            while (true) {
                if (i11 >= iE) {
                    i11 = -1;
                    break;
                }
                x.a aVarD = xVar.d(i11);
                if ((aVarD instanceof y2.m) && "com.apple.streaming.transportStreamTimestamp".equals(((y2.m) aVarD).f76127b)) {
                    break;
                }
                i11++;
            }
            if (i11 == -1) {
                return xVar;
            }
            if (iE == 1) {
                return null;
            }
            x.a[] aVarArr = new x.a[iE - 1];
            while (i10 < iE) {
                if (i10 != i11) {
                    aVarArr[i10 < i11 ? i10 : i10 - 1] = xVar.d(i10);
                }
                i10++;
            }
            return new x(aVarArr);
        }

        @Override
        public void b(long j10, int i10, int i11, int i12, s0.a aVar) {
            super.b(j10, i10, i11, i12, aVar);
        }

        public void l0(DrmInitData drmInitData) {
            this.I = drmInitData;
            L();
        }

        public void m0(i iVar) {
            i0(iVar.f11430k);
        }

        @Override
        public androidx.media3.common.r z(androidx.media3.common.r rVar) {
            DrmInitData drmInitData;
            DrmInitData drmInitData2 = this.I;
            if (drmInitData2 == null) {
                drmInitData2 = rVar.f9853s;
            }
            if (drmInitData2 != null && (drmInitData = (DrmInitData) this.H.get(drmInitData2.schemeType)) != null) {
                drmInitData2 = drmInitData;
            }
            x xVarK0 = k0(rVar.f9846l);
            if (drmInitData2 != rVar.f9853s || xVarK0 != rVar.f9846l) {
                rVar = rVar.b().Y(drmInitData2).n0(xVarK0).N();
            }
            return super.z(rVar);
        }

        private d(androidx.media3.exoplayer.upstream.b bVar, androidx.media3.exoplayer.drm.t tVar, androidx.media3.exoplayer.drm.r.a aVar, Map map) {
            super(bVar, tVar, aVar);
            this.H = map;
        }
    }

    public r(String str, int i10, b bVar, e eVar, Map map, androidx.media3.exoplayer.upstream.b bVar2, long j10, androidx.media3.common.r rVar, androidx.media3.exoplayer.drm.t tVar, androidx.media3.exoplayer.drm.r.a aVar, androidx.media3.exoplayer.upstream.m mVar, androidx.media3.exoplayer.source.s.a aVar2, int i11) {
        this.f11642a = str;
        this.f11643b = i10;
        this.f11644c = bVar;
        this.f11645d = eVar;
        this.f11661t = map;
        this.f11646e = bVar2;
        this.f11647f = rVar;
        this.f11648g = tVar;
        this.f11649h = aVar;
        this.f11650i = mVar;
        this.f11652k = aVar2;
        this.f11653l = i11;
        Set set = Y;
        this.f11665x = new HashSet(set.size());
        this.f11666y = new SparseIntArray(set.size());
        this.f11663v = new d[0];
        this.O = new boolean[0];
        this.N = new boolean[0];
        ArrayList arrayList = new ArrayList();
        this.f11655n = arrayList;
        this.f11656o = Collections.unmodifiableList(arrayList);
        this.f11660s = new ArrayList();
        this.f11657p = new Runnable() {
            @Override
            public final void run() {
                this.f11478a.K();
            }
        };
        this.f11658q = new Runnable() {
            @Override
            public final void run() {
                this.f11479a.U();
            }
        };
        this.f11659r = a1.A();
        this.P = j10;
        this.Q = j10;
    }

    private i A() {
        ArrayList arrayList = this.f11655n;
        return (i) arrayList.get(arrayList.size() - 1);
    }

    private s0 B(int i10, int i11) {
        androidx.media3.common.util.a.a(Y.contains(Integer.valueOf(i11)));
        int i12 = this.f11666y.get(i11, -1);
        if (i12 == -1) {
            return null;
        }
        if (this.f11665x.add(Integer.valueOf(i11))) {
            this.f11664w[i12] = i10;
        }
        return this.f11664w[i12] == i10 ? this.f11663v[i12] : s(i10, i11);
    }

    private static int C(int i10) {
        if (i10 == 1) {
            return 2;
        }
        if (i10 != 2) {
            return i10 != 3 ? 0 : 1;
        }
        return 3;
    }

    private void D(i iVar) {
        this.X = iVar;
        this.F = iVar.f60598d;
        this.Q = C.TIME_UNSET;
        this.f11655n.add(iVar);
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        for (d dVar : this.f11663v) {
            aVarBuilder.a(Integer.valueOf(dVar.J()));
        }
        iVar.l(this, aVarBuilder.e());
        for (d dVar2 : this.f11663v) {
            dVar2.m0(iVar);
            if (iVar.f11433n) {
                dVar2.j0();
            }
        }
    }

    private static boolean E(g2.e eVar) {
        return eVar instanceof i;
    }

    private boolean F() {
        return this.Q != C.TIME_UNSET;
    }

    public void I(i iVar) {
        this.f11644c.d(iVar.f11432m);
    }

    private void J() {
        int i10 = this.I.f59968a;
        int[] iArr = new int[i10];
        this.K = iArr;
        Arrays.fill(iArr, -1);
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = 0;
            while (true) {
                d[] dVarArr = this.f11663v;
                if (i12 >= dVarArr.length) {
                    break;
                }
                if (z((androidx.media3.common.r) androidx.media3.common.util.a.i(dVarArr[i12].I()), this.I.b(i11).a(0))) {
                    this.K[i11] = i12;
                    break;
                }
                i12++;
            }
        }
        Iterator it = this.f11660s.iterator();
        while (it.hasNext()) {
            ((m) it.next()).a();
        }
    }

    public void K() {
        if (!this.H && this.K == null && this.C) {
            for (d dVar : this.f11663v) {
                if (dVar.I() == null) {
                    return;
                }
            }
            if (this.I != null) {
                J();
                return;
            }
            m();
            d0();
            this.f11644c.onPrepared();
        }
    }

    public void U() {
        this.C = true;
        K();
    }

    private void Y() {
        for (d dVar : this.f11663v) {
            dVar.Z(this.R);
        }
        this.R = false;
    }

    private boolean Z(long j10, i iVar) {
        int length = this.f11663v.length;
        for (int i10 = 0; i10 < length; i10++) {
            d dVar = this.f11663v[i10];
            if (!(iVar != null ? dVar.b0(iVar.k(i10)) : dVar.c0(j10, false)) && (this.O[i10] || !this.M)) {
                return false;
            }
        }
        return true;
    }

    private void d0() {
        this.D = true;
    }

    private void i0(f2.u[] uVarArr) {
        this.f11660s.clear();
        for (f2.u uVar : uVarArr) {
            if (uVar != null) {
                this.f11660s.add((m) uVar);
            }
        }
    }

    private void j() {
        androidx.media3.common.util.a.g(this.D);
        androidx.media3.common.util.a.e(this.I);
        androidx.media3.common.util.a.e(this.J);
    }

    private void m() {
        androidx.media3.common.r rVar;
        int length = this.f11663v.length;
        int i10 = -2;
        int i11 = -1;
        int i12 = 0;
        while (true) {
            int i13 = 2;
            if (i12 >= length) {
                break;
            }
            String str = ((androidx.media3.common.r) androidx.media3.common.util.a.i(this.f11663v[i12].I())).f9849o;
            if (!y.t(str)) {
                i13 = y.o(str) ? 1 : y.s(str) ? 3 : -2;
            }
            if (C(i13) > C(i10)) {
                i11 = i12;
                i10 = i13;
            } else if (i13 == i10 && i11 != -1) {
                i11 = -1;
            }
            i12++;
        }
        androidx.media3.common.f0 f0VarK = this.f11645d.k();
        int i14 = f0VarK.f9659a;
        this.L = -1;
        this.K = new int[length];
        for (int i15 = 0; i15 < length; i15++) {
            this.K[i15] = i15;
        }
        androidx.media3.common.f0[] f0VarArr = new androidx.media3.common.f0[length];
        int i16 = 0;
        while (i16 < length) {
            androidx.media3.common.r rVar2 = (androidx.media3.common.r) androidx.media3.common.util.a.i(this.f11663v[i16].I());
            if (i16 == i11) {
                androidx.media3.common.r[] rVarArr = new androidx.media3.common.r[i14];
                for (int i17 = 0; i17 < i14; i17++) {
                    androidx.media3.common.r rVarA = f0VarK.a(i17);
                    if (i10 == 1 && (rVar = this.f11647f) != null) {
                        rVarA = rVarA.j(rVar);
                    }
                    rVarArr[i17] = i14 == 1 ? rVar2.j(rVarA) : v(rVarA, rVar2, true);
                }
                f0VarArr[i16] = new androidx.media3.common.f0(this.f11642a, rVarArr);
                this.L = i16;
            } else {
                androidx.media3.common.r rVar3 = (i10 == 2 && y.o(rVar2.f9849o)) ? this.f11647f : null;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.f11642a);
                sb2.append(":muxed:");
                sb2.append(i16 < i11 ? i16 : i16 - 1);
                f0VarArr[i16] = new androidx.media3.common.f0(sb2.toString(), v(rVar3, rVar2, false));
            }
            i16++;
        }
        this.I = u(f0VarArr);
        androidx.media3.common.util.a.g(this.J == null);
        this.J = Collections.emptySet();
    }

    private boolean n(int i10) {
        for (int i11 = i10; i11 < this.f11655n.size(); i11++) {
            if (((i) this.f11655n.get(i11)).f11433n) {
                return false;
            }
        }
        i iVar = (i) this.f11655n.get(i10);
        for (int i12 = 0; i12 < this.f11663v.length; i12++) {
            if (this.f11663v[i12].F() > iVar.k(i12)) {
                return false;
            }
        }
        return true;
    }

    private static k2.n s(int i10, int i11) {
        androidx.media3.common.util.u.h("HlsSampleStreamWrapper", "Unmapped track with id " + i10 + " of type " + i11);
        return new k2.n();
    }

    private e0 t(int i10, int i11) {
        int length = this.f11663v.length;
        boolean z10 = true;
        if (i11 != 1 && i11 != 2) {
            z10 = false;
        }
        d dVar = new d(this.f11646e, this.f11648g, this.f11649h, this.f11661t);
        dVar.e0(this.P);
        if (z10) {
            dVar.l0(this.W);
        }
        dVar.d0(this.V);
        i iVar = this.X;
        if (iVar != null) {
            dVar.m0(iVar);
        }
        dVar.g0(this);
        int i12 = length + 1;
        int[] iArrCopyOf = Arrays.copyOf(this.f11664w, i12);
        this.f11664w = iArrCopyOf;
        iArrCopyOf[length] = i10;
        this.f11663v = (d[]) a1.V0(this.f11663v, dVar);
        boolean[] zArrCopyOf = Arrays.copyOf(this.O, i12);
        this.O = zArrCopyOf;
        zArrCopyOf[length] = z10;
        this.M |= z10;
        this.f11665x.add(Integer.valueOf(i11));
        this.f11666y.append(i11, length);
        if (C(i11) > C(this.A)) {
            this.B = length;
            this.A = i11;
        }
        this.N = Arrays.copyOf(this.N, i12);
        return dVar;
    }

    private z u(androidx.media3.common.f0[] f0VarArr) {
        for (int i10 = 0; i10 < f0VarArr.length; i10++) {
            androidx.media3.common.f0 f0Var = f0VarArr[i10];
            androidx.media3.common.r[] rVarArr = new androidx.media3.common.r[f0Var.f9659a];
            for (int i11 = 0; i11 < f0Var.f9659a; i11++) {
                androidx.media3.common.r rVarA = f0Var.a(i11);
                rVarArr[i11] = rVarA.c(this.f11648g.b(rVarA));
            }
            f0VarArr[i10] = new androidx.media3.common.f0(f0Var.f9660b, rVarArr);
        }
        return new z(f0VarArr);
    }

    private static androidx.media3.common.r v(androidx.media3.common.r rVar, androidx.media3.common.r rVar2, boolean z10) {
        String strD;
        String strG;
        if (rVar == null) {
            return rVar2;
        }
        int iK = y.k(rVar2.f9849o);
        if (a1.R(rVar.f9845k, iK) == 1) {
            strD = a1.S(rVar.f9845k, iK);
            strG = y.g(strD);
        } else {
            strD = y.d(rVar.f9845k, rVar2.f9849o);
            strG = rVar2.f9849o;
        }
        androidx.media3.common.r.b bVarS = rVar2.b().f0(rVar.f9835a).h0(rVar.f9836b).i0(rVar.f9837c).j0(rVar.f9838d).w0(rVar.f9839e).s0(rVar.f9840f).Q(z10 ? rVar.f9842h : -1).p0(z10 ? rVar.f9843i : -1).S(strD);
        if (iK == 2) {
            bVarS.B0(rVar.f9856v).d0(rVar.f9857w).b0(rVar.f9858x);
        }
        if (strG != null) {
            bVarS.u0(strG);
        }
        int i10 = rVar.E;
        if (i10 != -1 && iK == 1) {
            bVarS.R(i10);
        }
        x xVarB = rVar.f9846l;
        if (xVarB != null) {
            x xVar = rVar2.f9846l;
            if (xVar != null) {
                xVarB = xVar.b(xVarB);
            }
            bVarS.n0(xVarB);
        }
        return bVarS.N();
    }

    private void w(int i10) {
        androidx.media3.common.util.a.g(!this.f11651j.i());
        while (true) {
            if (i10 >= this.f11655n.size()) {
                i10 = -1;
                break;
            } else if (n(i10)) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 == -1) {
            return;
        }
        long j10 = A().f60602h;
        i iVarX = x(i10);
        if (this.f11655n.isEmpty()) {
            this.Q = this.P;
        } else {
            ((i) g3.g(this.f11655n)).m();
        }
        this.T = false;
        this.f11652k.F(this.A, iVarX.f60601g, j10);
    }

    private i x(int i10) {
        i iVar = (i) this.f11655n.get(i10);
        ArrayList arrayList = this.f11655n;
        a1.c1(arrayList, i10, arrayList.size());
        for (int i11 = 0; i11 < this.f11663v.length; i11++) {
            this.f11663v[i11].w(iVar.k(i11));
        }
        return iVar;
    }

    private boolean y(i iVar) {
        int i10 = iVar.f11430k;
        int length = this.f11663v.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (this.N[i11] && this.f11663v[i11].T() == i10) {
                return false;
            }
        }
        return true;
    }

    private static boolean z(androidx.media3.common.r rVar, androidx.media3.common.r rVar2) {
        String str = rVar.f9849o;
        String str2 = rVar2.f9849o;
        int iK = y.k(str);
        if (iK != 3) {
            return iK == y.k(str2);
        }
        if (Objects.equals(str, str2)) {
            return !(MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str)) || rVar.J == rVar2.J;
        }
        return false;
    }

    public boolean G(int i10) {
        return !F() && this.f11663v[i10].N(this.T);
    }

    public boolean H() {
        return this.A == 2;
    }

    public void L() {
        this.f11651j.maybeThrowError();
        this.f11645d.p();
    }

    public void M(int i10) {
        L();
        this.f11663v[i10].Q();
    }

    @Override
    public void q(g2.e eVar, long j10, long j11, boolean z10) {
        this.f11662u = null;
        f2.i iVar = new f2.i(eVar.f60595a, eVar.f60596b, eVar.d(), eVar.c(), j10, j11, eVar.a());
        this.f11650i.b(eVar.f60595a);
        this.f11652k.t(iVar, eVar.f60597c, this.f11643b, eVar.f60598d, eVar.f60599e, eVar.f60600f, eVar.f60601g, eVar.f60602h);
        if (z10) {
            return;
        }
        if (F() || this.E == 0) {
            Y();
        }
        if (this.E > 0) {
            this.f11644c.h(this);
        }
    }

    @Override
    public void p(g2.e eVar, long j10, long j11) {
        this.f11662u = null;
        this.f11645d.r(eVar);
        f2.i iVar = new f2.i(eVar.f60595a, eVar.f60596b, eVar.d(), eVar.c(), j10, j11, eVar.a());
        this.f11650i.b(eVar.f60595a);
        this.f11652k.w(iVar, eVar.f60597c, this.f11643b, eVar.f60598d, eVar.f60599e, eVar.f60600f, eVar.f60601g, eVar.f60602h);
        if (this.D) {
            this.f11644c.h(this);
        } else {
            a(new v2.b().f(this.P).d());
        }
    }

    @Override
    public Loader.c k(g2.e eVar, long j10, long j11, IOException iOException, int i10) {
        Loader.c cVarG;
        int i11;
        boolean zE = E(eVar);
        if (zE && !((i) eVar).o() && (iOException instanceof HttpDataSource.InvalidResponseCodeException) && ((i11 = ((HttpDataSource.InvalidResponseCodeException) iOException).responseCode) == 410 || i11 == 404)) {
            return Loader.f12635d;
        }
        long jA = eVar.a();
        f2.i iVar = new f2.i(eVar.f60595a, eVar.f60596b, eVar.d(), eVar.c(), j10, j11, jA);
        androidx.media3.exoplayer.upstream.m.c cVar = new androidx.media3.exoplayer.upstream.m.c(iVar, new f2.j(eVar.f60597c, this.f11643b, eVar.f60598d, eVar.f60599e, eVar.f60600f, a1.y1(eVar.f60601g), a1.y1(eVar.f60602h)), iOException, i10);
        androidx.media3.exoplayer.upstream.m.b bVarD = this.f11650i.d(d0.c(this.f11645d.l()), cVar);
        boolean zO = (bVarD == null || bVarD.f12696a != 2) ? false : this.f11645d.o(eVar, bVarD.f12697b);
        if (zO) {
            if (zE && jA == 0) {
                ArrayList arrayList = this.f11655n;
                androidx.media3.common.util.a.g(((i) arrayList.remove(arrayList.size() - 1)) == eVar);
                if (this.f11655n.isEmpty()) {
                    this.Q = this.P;
                } else {
                    ((i) g3.g(this.f11655n)).m();
                }
            }
            cVarG = Loader.f12637f;
        } else {
            long jC = this.f11650i.c(cVar);
            cVarG = jC != C.TIME_UNSET ? Loader.g(false, jC) : Loader.f12638g;
        }
        Loader.c cVar2 = cVarG;
        boolean zC = cVar2.c();
        this.f11652k.y(iVar, eVar.f60597c, this.f11643b, eVar.f60598d, eVar.f60599e, eVar.f60600f, eVar.f60601g, eVar.f60602h, iOException, !zC);
        if (!zC) {
            this.f11662u = null;
            this.f11650i.b(eVar.f60595a);
        }
        if (zO) {
            if (this.D) {
                this.f11644c.h(this);
            } else {
                a(new v2.b().f(this.P).d());
            }
        }
        return cVar2;
    }

    @Override
    public void o(g2.e eVar, long j10, long j11, int i10) {
        this.f11652k.C(i10 == 0 ? new f2.i(eVar.f60595a, eVar.f60596b, j10) : new f2.i(eVar.f60595a, eVar.f60596b, eVar.d(), eVar.c(), j10, j11, eVar.a()), eVar.f60597c, this.f11643b, eVar.f60598d, eVar.f60599e, eVar.f60600f, eVar.f60601g, eVar.f60602h, i10);
    }

    public void R() {
        this.f11665x.clear();
    }

    public boolean S(Uri uri, androidx.media3.exoplayer.upstream.m.c cVar, boolean z10) {
        androidx.media3.exoplayer.upstream.m.b bVarD;
        if (!this.f11645d.q(uri)) {
            return true;
        }
        long j10 = (z10 || (bVarD = this.f11650i.d(d0.c(this.f11645d.l()), cVar)) == null || bVarD.f12696a != 2) ? -9223372036854775807L : bVarD.f12697b;
        return this.f11645d.s(uri, j10) && j10 != C.TIME_UNSET;
    }

    public void T() {
        if (this.f11655n.isEmpty()) {
            return;
        }
        final i iVar = (i) g3.g(this.f11655n);
        int iD = this.f11645d.d(iVar);
        if (iD == 1) {
            iVar.t();
            return;
        }
        if (iD == 0) {
            this.f11659r.post(new Runnable() {
                @Override
                public final void run() {
                    this.f11476a.I(iVar);
                }
            });
        } else if (iD == 2 && !this.T && this.f11651j.i()) {
            this.f11651j.e();
        }
    }

    public void V(androidx.media3.common.f0[] f0VarArr, int i10, int... iArr) {
        this.I = u(f0VarArr);
        this.J = new HashSet();
        for (int i11 : iArr) {
            this.J.add(this.I.b(i11));
        }
        this.L = i10;
        Handler handler = this.f11659r;
        final b bVar = this.f11644c;
        Objects.requireNonNull(bVar);
        handler.post(new Runnable() {
            @Override
            public final void run() {
                bVar.onPrepared();
            }
        });
        d0();
    }

    public int W(int i10, s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i11) {
        if (F()) {
            return -3;
        }
        int i12 = 0;
        if (!this.f11655n.isEmpty()) {
            int i13 = 0;
            while (i13 < this.f11655n.size() - 1 && y((i) this.f11655n.get(i13))) {
                i13++;
            }
            a1.c1(this.f11655n, 0, i13);
            i iVar = (i) this.f11655n.get(0);
            androidx.media3.common.r rVar = iVar.f60598d;
            if (!rVar.equals(this.G)) {
                this.f11652k.j(this.f11643b, rVar, iVar.f60599e, iVar.f60600f, iVar.f60601g);
            }
            this.G = rVar;
        }
        if (!this.f11655n.isEmpty() && !((i) this.f11655n.get(0)).o()) {
            return -3;
        }
        int iV = this.f11663v[i10].V(s2Var, decoderInputBuffer, i11, this.T);
        if (iV == -5) {
            androidx.media3.common.r rVarJ = (androidx.media3.common.r) androidx.media3.common.util.a.e(s2Var.f12258b);
            if (i10 == this.B) {
                int iD = Ints.d(this.f11663v[i10].T());
                while (i12 < this.f11655n.size() && ((i) this.f11655n.get(i12)).f11430k != iD) {
                    i12++;
                }
                rVarJ = rVarJ.j(i12 < this.f11655n.size() ? ((i) this.f11655n.get(i12)).f60598d : (androidx.media3.common.r) androidx.media3.common.util.a.e(this.F));
            }
            s2Var.f12258b = rVarJ;
        }
        return iV;
    }

    public void X() {
        if (this.D) {
            for (d dVar : this.f11663v) {
                dVar.U();
            }
        }
        this.f11645d.t();
        this.f11651j.l(this);
        this.f11659r.removeCallbacksAndMessages(null);
        this.H = true;
        this.f11660s.clear();
    }

    @Override
    public boolean a(v2 v2Var) {
        List listEmptyList;
        long jMax;
        if (this.T || this.f11651j.i() || this.f11651j.h()) {
            return false;
        }
        if (F()) {
            listEmptyList = Collections.emptyList();
            jMax = this.Q;
            for (d dVar : this.f11663v) {
                dVar.e0(this.Q);
            }
        } else {
            listEmptyList = this.f11656o;
            i iVarA = A();
            jMax = iVarA.f() ? iVarA.f60602h : Math.max(this.P, iVarA.f60601g);
        }
        List list = listEmptyList;
        long j10 = jMax;
        this.f11654m.a();
        this.f11645d.f(v2Var, j10, list, this.D || !list.isEmpty(), this.f11654m);
        e.b bVar = this.f11654m;
        boolean z10 = bVar.f11418b;
        g2.e eVar = bVar.f11417a;
        Uri uri = bVar.f11419c;
        if (z10) {
            this.Q = C.TIME_UNSET;
            this.T = true;
            return true;
        }
        if (eVar == null) {
            if (uri != null) {
                this.f11644c.d(uri);
            }
            return false;
        }
        if (E(eVar)) {
            D((i) eVar);
        }
        this.f11662u = eVar;
        this.f11651j.m(eVar, this, this.f11650i.a(eVar.f60597c));
        return true;
    }

    public boolean a0(long j10, boolean z10) {
        i iVar;
        this.P = j10;
        if (F()) {
            this.Q = j10;
            return true;
        }
        if (!this.f11645d.m()) {
            iVar = null;
            break;
        }
        int i10 = 0;
        while (true) {
            if (i10 >= this.f11655n.size()) {
                iVar = null;
                break;
            }
            iVar = (i) this.f11655n.get(i10);
            if (iVar.f60601g == j10) {
                break;
            }
            i10++;
        }
        if (this.C && !z10 && Z(j10, iVar)) {
            return false;
        }
        this.Q = j10;
        this.T = false;
        this.f11655n.clear();
        if (this.f11651j.i()) {
            if (this.C) {
                for (d dVar : this.f11663v) {
                    dVar.s();
                }
            }
            this.f11651j.e();
        } else {
            this.f11651j.f();
            Y();
        }
        return true;
    }

    public long b(long j10, c4 c4Var) {
        return this.f11645d.c(j10, c4Var);
    }

    /* JADX WARN: Code duplicated, block: B:69:0x0122  */
    public boolean b0(i2.z[] zVarArr, boolean[] zArr, f2.u[] uVarArr, boolean[] zArr2, long j10, boolean z10) {
        boolean z11;
        j();
        int i10 = this.E;
        int i11 = 0;
        for (int i12 = 0; i12 < zVarArr.length; i12++) {
            m mVar = (m) uVarArr[i12];
            if (mVar != null && (zVarArr[i12] == null || !zArr[i12])) {
                this.E--;
                mVar.d();
                uVarArr[i12] = null;
            }
        }
        boolean z12 = z10 || (!this.S ? j10 == this.P : i10 != 0);
        i2.z zVarL = this.f11645d.l();
        boolean z13 = z12;
        i2.z zVar = zVarL;
        for (int i13 = 0; i13 < zVarArr.length; i13++) {
            i2.z zVar2 = zVarArr[i13];
            if (zVar2 != null) {
                int iD = this.I.d(zVar2.getTrackGroup());
                if (iD == this.L) {
                    this.f11645d.w(zVar2);
                    zVar = zVar2;
                }
                if (uVarArr[i13] == null) {
                    this.E++;
                    m mVar2 = new m(this, iD);
                    uVarArr[i13] = mVar2;
                    zArr2[i13] = true;
                    if (this.K != null) {
                        mVar2.a();
                        if (!z13) {
                            d dVar = this.f11663v[this.K[iD]];
                            z13 = (dVar.F() == 0 || dVar.c0(j10, true)) ? false : true;
                        }
                    }
                }
            }
        }
        if (this.E == 0) {
            this.f11645d.t();
            this.G = null;
            this.R = true;
            this.f11655n.clear();
            if (this.f11651j.i()) {
                if (this.C) {
                    d[] dVarArr = this.f11663v;
                    int length = dVarArr.length;
                    while (i11 < length) {
                        dVarArr[i11].s();
                        i11++;
                    }
                }
                this.f11651j.e();
            } else {
                Y();
            }
        } else {
            if (this.f11655n.isEmpty() || Objects.equals(zVar, zVarL)) {
                z11 = z10;
            } else {
                if (!this.S) {
                    long j11 = j10 < 0 ? -j10 : 0L;
                    i iVarA = A();
                    zVar.f(j10, j11, C.TIME_UNSET, this.f11656o, this.f11645d.a(iVarA, j10));
                    if (zVar.getSelectedIndexInTrackGroup() == this.f11645d.k().b(iVarA.f60598d)) {
                        z11 = z10;
                    }
                }
                this.R = true;
                z11 = true;
                z13 = true;
            }
            if (z13) {
                a0(j10, z11);
                while (i11 < uVarArr.length) {
                    if (uVarArr[i11] != null) {
                        zArr2[i11] = true;
                    }
                    i11++;
                }
            }
        }
        i0(uVarArr);
        this.S = true;
        return z13;
    }

    @Override
    public void c(androidx.media3.common.r rVar) {
        this.f11659r.post(this.f11657p);
    }

    public void c0(DrmInitData drmInitData) {
        if (Objects.equals(this.W, drmInitData)) {
            return;
        }
        this.W = drmInitData;
        int i10 = 0;
        while (true) {
            d[] dVarArr = this.f11663v;
            if (i10 >= dVarArr.length) {
                return;
            }
            if (this.O[i10]) {
                dVarArr[i10].l0(drmInitData);
            }
            i10++;
        }
    }

    public void discardBuffer(long j10, boolean z10) {
        if (!this.C || F()) {
            return;
        }
        int length = this.f11663v.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.f11663v[i10].r(j10, z10, this.N[i10]);
        }
    }

    public void e0(boolean z10) {
        this.f11645d.v(z10);
    }

    @Override
    public void endTracks() {
        this.U = true;
        this.f11659r.post(this.f11658q);
    }

    public void f0(long j10) {
        if (this.V != j10) {
            this.V = j10;
            for (d dVar : this.f11663v) {
                dVar.d0(j10);
            }
        }
    }

    public int g0(int i10, long j10) {
        if (F()) {
            return 0;
        }
        d dVar = this.f11663v[i10];
        int iH = dVar.H(j10, this.T);
        i iVar = (i) g3.h(this.f11655n, null);
        if (iVar != null && !iVar.o()) {
            iH = Math.min(iH, iVar.k(i10) - dVar.F());
        }
        dVar.h0(iH);
        return iH;
    }

    @Override
    public long getBufferedPositionUs() {
        if (this.T) {
            return Long.MIN_VALUE;
        }
        if (F()) {
            return this.Q;
        }
        long jMax = this.P;
        i iVarA = A();
        if (!iVarA.f()) {
            if (this.f11655n.size() > 1) {
                ArrayList arrayList = this.f11655n;
                iVarA = (i) arrayList.get(arrayList.size() - 2);
            } else {
                iVarA = null;
            }
        }
        if (iVarA != null) {
            jMax = Math.max(jMax, iVarA.f60602h);
        }
        if (this.C) {
            for (d dVar : this.f11663v) {
                jMax = Math.max(jMax, dVar.C());
            }
        }
        return jMax;
    }

    @Override
    public long getNextLoadPositionUs() {
        if (F()) {
            return this.Q;
        }
        if (this.T) {
            return Long.MIN_VALUE;
        }
        return A().f60602h;
    }

    public z getTrackGroups() {
        j();
        return this.I;
    }

    public void h0(int i10) {
        j();
        androidx.media3.common.util.a.e(this.K);
        int i11 = this.K[i10];
        androidx.media3.common.util.a.g(this.N[i11]);
        this.N[i11] = false;
    }

    @Override
    public boolean isLoading() {
        return this.f11651j.i();
    }

    public int l(int i10) {
        j();
        androidx.media3.common.util.a.e(this.K);
        int i11 = this.K[i10];
        if (i11 == -1) {
            return this.J.contains(this.I.b(i10)) ? -3 : -2;
        }
        boolean[] zArr = this.N;
        if (zArr[i11]) {
            return -2;
        }
        zArr[i11] = true;
        return i11;
    }

    public void maybeThrowPrepareError() throws ParserException {
        L();
        if (this.T && !this.D) {
            throw ParserException.createForMalformedContainer("Loading finished before preparation is complete.", null);
        }
    }

    @Override
    public void onLoaderReleased() {
        for (d dVar : this.f11663v) {
            dVar.W();
        }
    }

    public void r() {
        if (this.D) {
            return;
        }
        a(new v2.b().f(this.P).d());
    }

    @Override
    public void reevaluateBuffer(long j10) {
        if (this.f11651j.h() || F()) {
            return;
        }
        if (this.f11651j.i()) {
            androidx.media3.common.util.a.e(this.f11662u);
            if (this.f11645d.x(j10, this.f11662u, this.f11656o)) {
                this.f11651j.e();
                return;
            }
            return;
        }
        int size = this.f11656o.size();
        while (size > 0 && this.f11645d.d((i) this.f11656o.get(size - 1)) == 2) {
            size--;
        }
        if (size < this.f11656o.size()) {
            w(size);
        }
        int i10 = this.f11645d.i(j10, this.f11656o);
        if (i10 < this.f11655n.size()) {
            w(i10);
        }
    }

    @Override
    public s0 track(int i10, int i11) {
        s0 s0VarT;
        if (!Y.contains(Integer.valueOf(i11))) {
            int i12 = 0;
            while (true) {
                s0[] s0VarArr = this.f11663v;
                if (i12 >= s0VarArr.length) {
                    s0VarT = null;
                    break;
                }
                if (this.f11664w[i12] == i10) {
                    s0VarT = s0VarArr[i12];
                    break;
                }
                i12++;
            }
        } else {
            s0VarT = B(i10, i11);
        }
        if (s0VarT == null) {
            if (this.U) {
                return s(i10, i11);
            }
            s0VarT = t(i10, i11);
        }
        if (i11 != 5) {
            return s0VarT;
        }
        if (this.f11667z == null) {
            this.f11667z = new c(s0VarT, this.f11653l);
        }
        return this.f11667z;
    }

    @Override
    public void d(m0 m0Var) {
    }
}
