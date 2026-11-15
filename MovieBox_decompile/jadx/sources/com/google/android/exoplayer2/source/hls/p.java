package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseIntArray;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.d3;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.drm.u;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import com.google.android.exoplayer2.metadata.id3.PrivFrame;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.q1;
import com.google.android.exoplayer2.source.a0;
import com.google.android.exoplayer2.source.b0;
import com.google.android.exoplayer2.upstream.HttpDataSource$InvalidResponseCodeException;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.z;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.w;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.g3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import i9.e0;
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
import v9.y;

final class p implements Loader.b, Loader.e, b0, i9.n, a0.d {
    private static final Set Y = Collections.unmodifiableSet(new HashSet(Arrays.asList(1, 2, 5)));
    private int A;
    private int B;
    private boolean C;
    private boolean D;
    private int E;
    private p1 F;
    private p1 G;
    private boolean H;
    private y I;
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

    private final String f25370a;

    private final int f25371b;

    private final b f25372c;

    private final e f25373d;

    private final com.google.android.exoplayer2.upstream.b f25374e;

    private final p1 f25375f;

    private final u f25376g;

    private final s.a f25377h;

    private final z f25378i;

    private final com.google.android.exoplayer2.source.p.a f25380k;

    private final int f25381l;

    private final ArrayList f25383n;

    private final List f25384o;

    private final Runnable f25385p;

    private final Runnable f25386q;

    private final Handler f25387r;

    private final ArrayList f25388s;

    private final Map f25389t;

    private x9.f f25390u;

    private d[] f25391v;

    private Set f25393x;

    private SparseIntArray f25394y;

    private e0 f25395z;

    private final Loader f25379j = new Loader("Loader:HlsSampleStreamWrapper");

    private final e.b f25382m = new e.b();

    private int[] f25392w = new int[0];

    public interface b extends b0.a {
        void d(Uri uri);

        void onPrepared();
    }

    private static class c implements e0 {

        private static final p1 f25396g = new p1.b().e0(MimeTypes.APPLICATION_ID3).E();

        private static final p1 f25397h = new p1.b().e0(MimeTypes.APPLICATION_EMSG).E();

        private final com.google.android.exoplayer2.metadata.emsg.a f25398a = new com.google.android.exoplayer2.metadata.emsg.a();

        private final e0 f25399b;

        private final p1 f25400c;

        private p1 f25401d;

        private byte[] f25402e;

        private int f25403f;

        public c(e0 e0Var, int i10) {
            this.f25399b = e0Var;
            if (i10 == 1) {
                this.f25400c = f25396g;
            } else {
                if (i10 != 3) {
                    throw new IllegalArgumentException("Unknown metadataType: " + i10);
                }
                this.f25400c = f25397h;
            }
            this.f25402e = new byte[0];
            this.f25403f = 0;
        }

        private boolean g(EventMessage eventMessage) {
            p1 wrappedMetadataFormat = eventMessage.getWrappedMetadataFormat();
            return wrappedMetadataFormat != null && p0.c(this.f25400c.f24901l, wrappedMetadataFormat.f24901l);
        }

        private void h(int i10) {
            byte[] bArr = this.f25402e;
            if (bArr.length < i10) {
                this.f25402e = Arrays.copyOf(bArr, i10 + (i10 / 2));
            }
        }

        private d0 i(int i10, int i11) {
            int i12 = this.f25403f - i11;
            d0 d0Var = new d0(Arrays.copyOfRange(this.f25402e, i12 - i10, i12));
            byte[] bArr = this.f25402e;
            System.arraycopy(bArr, i12, bArr, 0, i11);
            this.f25403f = i11;
            return d0Var;
        }

        @Override
        public int a(com.google.android.exoplayer2.upstream.g gVar, int i10, boolean z10, int i11) throws EOFException {
            h(this.f25403f + i10);
            int i12 = gVar.read(this.f25402e, this.f25403f, i10);
            if (i12 != -1) {
                this.f25403f += i12;
                return i12;
            }
            if (z10) {
                return -1;
            }
            throw new EOFException();
        }

        @Override
        public int b(com.google.android.exoplayer2.upstream.g gVar, int i10, boolean z10) {
            return i9.d0.a(this, gVar, i10, z10);
        }

        @Override
        public void c(d0 d0Var, int i10) {
            i9.d0.b(this, d0Var, i10);
        }

        @Override
        public void d(p1 p1Var) {
            this.f25401d = p1Var;
            this.f25399b.d(this.f25400c);
        }

        @Override
        public void e(long j10, int i10, int i11, int i12, e0.a aVar) {
            com.google.android.exoplayer2.util.a.e(this.f25401d);
            d0 d0VarI = i(i11, i12);
            if (!p0.c(this.f25401d.f24901l, this.f25400c.f24901l)) {
                if (!MimeTypes.APPLICATION_EMSG.equals(this.f25401d.f24901l)) {
                    com.google.android.exoplayer2.util.s.i("HlsSampleStreamWrapper", "Ignoring sample for unsupported format: " + this.f25401d.f24901l);
                    return;
                }
                EventMessage eventMessageC = this.f25398a.c(d0VarI);
                if (!g(eventMessageC)) {
                    com.google.android.exoplayer2.util.s.i("HlsSampleStreamWrapper", String.format("Ignoring EMSG. Expected it to contain wrapped %s but actual wrapped format: %s", this.f25400c.f24901l, eventMessageC.getWrappedMetadataFormat()));
                    return;
                }
                d0VarI = new d0((byte[]) com.google.android.exoplayer2.util.a.e(eventMessageC.getWrappedMetadataBytes()));
            }
            int iA = d0VarI.a();
            this.f25399b.c(d0VarI, iA);
            this.f25399b.e(j10, i10, iA, i12, aVar);
        }

        @Override
        public void f(d0 d0Var, int i10, int i11) {
            h(this.f25403f + i10);
            d0Var.j(this.f25402e, this.f25403f, i10);
            this.f25403f += i10;
        }
    }

    private static final class d extends a0 {
        private final Map H;
        private DrmInitData I;

        private Metadata h0(Metadata metadata) {
            if (metadata == null) {
                return null;
            }
            int length = metadata.length();
            int i10 = 0;
            int i11 = 0;
            while (true) {
                if (i11 >= length) {
                    i11 = -1;
                    break;
                }
                Metadata.Entry entry = metadata.get(i11);
                if ((entry instanceof PrivFrame) && "com.apple.streaming.transportStreamTimestamp".equals(((PrivFrame) entry).owner)) {
                    break;
                }
                i11++;
            }
            if (i11 == -1) {
                return metadata;
            }
            if (length == 1) {
                return null;
            }
            Metadata.Entry[] entryArr = new Metadata.Entry[length - 1];
            while (i10 < length) {
                if (i10 != i11) {
                    entryArr[i10 < i11 ? i10 : i10 - 1] = metadata.get(i10);
                }
                i10++;
            }
            return new Metadata(entryArr);
        }

        @Override
        public void e(long j10, int i10, int i11, int i12, e0.a aVar) {
            super.e(j10, i10, i11, i12, aVar);
        }

        public void i0(DrmInitData drmInitData) {
            this.I = drmInitData;
            I();
        }

        public void j0(i iVar) {
            f0(iVar.f25324k);
        }

        @Override
        public p1 w(p1 p1Var) {
            DrmInitData drmInitData;
            DrmInitData drmInitData2 = this.I;
            if (drmInitData2 == null) {
                drmInitData2 = p1Var.f24904o;
            }
            if (drmInitData2 != null && (drmInitData = (DrmInitData) this.H.get(drmInitData2.schemeType)) != null) {
                drmInitData2 = drmInitData;
            }
            Metadata metadataH0 = h0(p1Var.f24899j);
            if (drmInitData2 != p1Var.f24904o || metadataH0 != p1Var.f24899j) {
                p1Var = p1Var.b().M(drmInitData2).X(metadataH0).E();
            }
            return super.w(p1Var);
        }

        private d(com.google.android.exoplayer2.upstream.b bVar, u uVar, s.a aVar, Map map) {
            super(bVar, uVar, aVar);
            this.H = map;
        }
    }

    public p(String str, int i10, b bVar, e eVar, Map map, com.google.android.exoplayer2.upstream.b bVar2, long j10, p1 p1Var, u uVar, s.a aVar, z zVar, com.google.android.exoplayer2.source.p.a aVar2, int i11) {
        this.f25370a = str;
        this.f25371b = i10;
        this.f25372c = bVar;
        this.f25373d = eVar;
        this.f25389t = map;
        this.f25374e = bVar2;
        this.f25375f = p1Var;
        this.f25376g = uVar;
        this.f25377h = aVar;
        this.f25378i = zVar;
        this.f25380k = aVar2;
        this.f25381l = i11;
        Set set = Y;
        this.f25393x = new HashSet(set.size());
        this.f25394y = new SparseIntArray(set.size());
        this.f25391v = new d[0];
        this.O = new boolean[0];
        this.N = new boolean[0];
        ArrayList arrayList = new ArrayList();
        this.f25383n = arrayList;
        this.f25384o = Collections.unmodifiableList(arrayList);
        this.f25388s = new ArrayList();
        this.f25385p = new Runnable() {
            @Override
            public final void run() {
                this.f25368a.G();
            }
        };
        this.f25386q = new Runnable() {
            @Override
            public final void run() {
                this.f25369a.P();
            }
        };
        this.f25387r = p0.w();
        this.P = j10;
        this.Q = j10;
    }

    private void A(i iVar) {
        this.X = iVar;
        this.F = iVar.f75187d;
        this.Q = C.TIME_UNSET;
        this.f25383n.add(iVar);
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        for (d dVar : this.f25391v) {
            aVarBuilder.a(Integer.valueOf(dVar.G()));
        }
        iVar.l(this, aVarBuilder.e());
        for (d dVar2 : this.f25391v) {
            dVar2.j0(iVar);
            if (iVar.f25327n) {
                dVar2.g0();
            }
        }
    }

    private static boolean B(x9.f fVar) {
        return fVar instanceof i;
    }

    private boolean C() {
        return this.Q != C.TIME_UNSET;
    }

    private void F() {
        int i10 = this.I.f73561a;
        int[] iArr = new int[i10];
        this.K = iArr;
        Arrays.fill(iArr, -1);
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = 0;
            while (true) {
                d[] dVarArr = this.f25391v;
                if (i12 >= dVarArr.length) {
                    break;
                }
                if (w((p1) com.google.android.exoplayer2.util.a.i(dVarArr[i12].F()), this.I.b(i11).c(0))) {
                    this.K[i11] = i12;
                    break;
                }
                i12++;
            }
        }
        Iterator it = this.f25388s.iterator();
        while (it.hasNext()) {
            ((l) it.next()).b();
        }
    }

    public void G() {
        if (!this.H && this.K == null && this.C) {
            for (d dVar : this.f25391v) {
                if (dVar.F() == null) {
                    return;
                }
            }
            if (this.I != null) {
                F();
                return;
            }
            k();
            Y();
            this.f25372c.onPrepared();
        }
    }

    public void P() {
        this.C = true;
        G();
    }

    private void T() {
        for (d dVar : this.f25391v) {
            dVar.W(this.R);
        }
        this.R = false;
    }

    private boolean U(long j10) {
        int length = this.f25391v.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (!this.f25391v[i10].Z(j10, false) && (this.O[i10] || !this.M)) {
                return false;
            }
        }
        return true;
    }

    private void Y() {
        this.D = true;
    }

    private void d0(v9.s[] sVarArr) {
        this.f25388s.clear();
        for (v9.s sVar : sVarArr) {
            if (sVar != null) {
                this.f25388s.add((l) sVar);
            }
        }
    }

    private void h() {
        com.google.android.exoplayer2.util.a.g(this.D);
        com.google.android.exoplayer2.util.a.e(this.I);
        com.google.android.exoplayer2.util.a.e(this.J);
    }

    private void k() {
        p1 p1Var;
        int length = this.f25391v.length;
        int i10 = -2;
        int i11 = -1;
        int i12 = 0;
        while (true) {
            int i13 = 2;
            if (i12 >= length) {
                break;
            }
            String str = ((p1) com.google.android.exoplayer2.util.a.i(this.f25391v[i12].F())).f24901l;
            if (!w.s(str)) {
                i13 = w.o(str) ? 1 : w.r(str) ? 3 : -2;
            }
            if (z(i13) > z(i10)) {
                i11 = i12;
                i10 = i13;
            } else if (i13 == i10 && i11 != -1) {
                i11 = -1;
            }
            i12++;
        }
        v9.w wVarJ = this.f25373d.j();
        int i14 = wVarJ.f73554a;
        this.L = -1;
        this.K = new int[length];
        for (int i15 = 0; i15 < length; i15++) {
            this.K[i15] = i15;
        }
        v9.w[] wVarArr = new v9.w[length];
        int i16 = 0;
        while (i16 < length) {
            p1 p1Var2 = (p1) com.google.android.exoplayer2.util.a.i(this.f25391v[i16].F());
            if (i16 == i11) {
                p1[] p1VarArr = new p1[i14];
                for (int i17 = 0; i17 < i14; i17++) {
                    p1 p1VarC = wVarJ.c(i17);
                    if (i10 == 1 && (p1Var = this.f25375f) != null) {
                        p1VarC = p1VarC.j(p1Var);
                    }
                    p1VarArr[i17] = i14 == 1 ? p1Var2.j(p1VarC) : s(p1VarC, p1Var2, true);
                }
                wVarArr[i16] = new v9.w(this.f25370a, p1VarArr);
                this.L = i16;
            } else {
                p1 p1Var3 = (i10 == 2 && w.o(p1Var2.f24901l)) ? this.f25375f : null;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.f25370a);
                sb2.append(":muxed:");
                sb2.append(i16 < i11 ? i16 : i16 - 1);
                wVarArr[i16] = new v9.w(sb2.toString(), s(p1Var3, p1Var2, false));
            }
            i16++;
        }
        this.I = r(wVarArr);
        com.google.android.exoplayer2.util.a.g(this.J == null);
        this.J = Collections.emptySet();
    }

    private boolean m(int i10) {
        for (int i11 = i10; i11 < this.f25383n.size(); i11++) {
            if (((i) this.f25383n.get(i11)).f25327n) {
                return false;
            }
        }
        i iVar = (i) this.f25383n.get(i10);
        for (int i12 = 0; i12 < this.f25391v.length; i12++) {
            if (this.f25391v[i12].C() > iVar.k(i12)) {
                return false;
            }
        }
        return true;
    }

    private static i9.k p(int i10, int i11) {
        com.google.android.exoplayer2.util.s.i("HlsSampleStreamWrapper", "Unmapped track with id " + i10 + " of type " + i11);
        return new i9.k();
    }

    private a0 q(int i10, int i11) {
        int length = this.f25391v.length;
        boolean z10 = true;
        if (i11 != 1 && i11 != 2) {
            z10 = false;
        }
        d dVar = new d(this.f25374e, this.f25376g, this.f25377h, this.f25389t);
        dVar.b0(this.P);
        if (z10) {
            dVar.i0(this.W);
        }
        dVar.a0(this.V);
        i iVar = this.X;
        if (iVar != null) {
            dVar.j0(iVar);
        }
        dVar.d0(this);
        int i12 = length + 1;
        int[] iArrCopyOf = Arrays.copyOf(this.f25392w, i12);
        this.f25392w = iArrCopyOf;
        iArrCopyOf[length] = i10;
        this.f25391v = (d[]) p0.E0(this.f25391v, dVar);
        boolean[] zArrCopyOf = Arrays.copyOf(this.O, i12);
        this.O = zArrCopyOf;
        zArrCopyOf[length] = z10;
        this.M |= z10;
        this.f25393x.add(Integer.valueOf(i11));
        this.f25394y.append(i11, length);
        if (z(i11) > z(this.A)) {
            this.B = length;
            this.A = i11;
        }
        this.N = Arrays.copyOf(this.N, i12);
        return dVar;
    }

    private y r(v9.w[] wVarArr) {
        for (int i10 = 0; i10 < wVarArr.length; i10++) {
            v9.w wVar = wVarArr[i10];
            p1[] p1VarArr = new p1[wVar.f73554a];
            for (int i11 = 0; i11 < wVar.f73554a; i11++) {
                p1 p1VarC = wVar.c(i11);
                p1VarArr[i11] = p1VarC.c(this.f25376g.a(p1VarC));
            }
            wVarArr[i10] = new v9.w(wVar.f73555b, p1VarArr);
        }
        return new y(wVarArr);
    }

    private static p1 s(p1 p1Var, p1 p1Var2, boolean z10) {
        String strD;
        String strG;
        if (p1Var == null) {
            return p1Var2;
        }
        int iK = w.k(p1Var2.f24901l);
        if (p0.K(p1Var.f24898i, iK) == 1) {
            strD = p0.L(p1Var.f24898i, iK);
            strG = w.g(strD);
        } else {
            strD = w.d(p1Var.f24898i, p1Var2.f24901l);
            strG = p1Var2.f24901l;
        }
        p1.b bVarI = p1Var2.b().S(p1Var.f24890a).U(p1Var.f24891b).V(p1Var.f24892c).g0(p1Var.f24893d).c0(p1Var.f24894e).G(z10 ? p1Var.f24895f : -1).Z(z10 ? p1Var.f24896g : -1).I(strD);
        if (iK == 2) {
            bVarI.j0(p1Var.f24906q).Q(p1Var.f24907r).P(p1Var.f24908s);
        }
        if (strG != null) {
            bVarI.e0(strG);
        }
        int i10 = p1Var.f24914y;
        if (i10 != -1 && iK == 1) {
            bVarI.H(i10);
        }
        Metadata metadataCopyWithAppendedEntriesFrom = p1Var.f24899j;
        if (metadataCopyWithAppendedEntriesFrom != null) {
            Metadata metadata = p1Var2.f24899j;
            if (metadata != null) {
                metadataCopyWithAppendedEntriesFrom = metadata.copyWithAppendedEntriesFrom(metadataCopyWithAppendedEntriesFrom);
            }
            bVarI.X(metadataCopyWithAppendedEntriesFrom);
        }
        return bVarI.E();
    }

    private void t(int i10) {
        com.google.android.exoplayer2.util.a.g(!this.f25379j.i());
        while (true) {
            if (i10 >= this.f25383n.size()) {
                i10 = -1;
                break;
            } else if (m(i10)) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 == -1) {
            return;
        }
        long j10 = x().f75191h;
        i iVarU = u(i10);
        if (this.f25383n.isEmpty()) {
            this.Q = this.P;
        } else {
            ((i) g3.g(this.f25383n)).m();
        }
        this.T = false;
        this.f25380k.D(this.A, iVarU.f75190g, j10);
    }

    private i u(int i10) {
        i iVar = (i) this.f25383n.get(i10);
        ArrayList arrayList = this.f25383n;
        p0.M0(arrayList, i10, arrayList.size());
        for (int i11 = 0; i11 < this.f25391v.length; i11++) {
            this.f25391v[i11].u(iVar.k(i11));
        }
        return iVar;
    }

    private boolean v(i iVar) {
        int i10 = iVar.f25324k;
        int length = this.f25391v.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (this.N[i11] && this.f25391v[i11].Q() == i10) {
                return false;
            }
        }
        return true;
    }

    private static boolean w(p1 p1Var, p1 p1Var2) {
        String str = p1Var.f24901l;
        String str2 = p1Var2.f24901l;
        int iK = w.k(str);
        if (iK != 3) {
            return iK == w.k(str2);
        }
        if (p0.c(str, str2)) {
            return !(MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str)) || p1Var.D == p1Var2.D;
        }
        return false;
    }

    private i x() {
        ArrayList arrayList = this.f25383n;
        return (i) arrayList.get(arrayList.size() - 1);
    }

    private e0 y(int i10, int i11) {
        com.google.android.exoplayer2.util.a.a(Y.contains(Integer.valueOf(i11)));
        int i12 = this.f25394y.get(i11, -1);
        if (i12 == -1) {
            return null;
        }
        if (this.f25393x.add(Integer.valueOf(i11))) {
            this.f25392w[i12] = i10;
        }
        return this.f25392w[i12] == i10 ? this.f25391v[i12] : p(i10, i11);
    }

    private static int z(int i10) {
        if (i10 == 1) {
            return 2;
        }
        if (i10 != 2) {
            return i10 != 3 ? 0 : 1;
        }
        return 3;
    }

    public boolean D(int i10) {
        return !C() && this.f25391v[i10].K(this.T);
    }

    public boolean E() {
        return this.A == 2;
    }

    public void H() {
        this.f25379j.maybeThrowError();
        this.f25373d.n();
    }

    public void I(int i10) {
        H();
        this.f25391v[i10].N();
    }

    @Override
    public void j(x9.f fVar, long j10, long j11, boolean z10) {
        this.f25390u = null;
        v9.h hVar = new v9.h(fVar.f75184a, fVar.f75185b, fVar.d(), fVar.c(), j10, j11, fVar.a());
        this.f25378i.b(fVar.f75184a);
        this.f25380k.r(hVar, fVar.f75186c, this.f25371b, fVar.f75187d, fVar.f75188e, fVar.f75189f, fVar.f75190g, fVar.f75191h);
        if (z10) {
            return;
        }
        if (C() || this.E == 0) {
            T();
        }
        if (this.E > 0) {
            this.f25372c.g(this);
        }
    }

    @Override
    public void l(x9.f fVar, long j10, long j11) {
        this.f25390u = null;
        this.f25373d.p(fVar);
        v9.h hVar = new v9.h(fVar.f75184a, fVar.f75185b, fVar.d(), fVar.c(), j10, j11, fVar.a());
        this.f25378i.b(fVar.f75184a);
        this.f25380k.u(hVar, fVar.f75186c, this.f25371b, fVar.f75187d, fVar.f75188e, fVar.f75189f, fVar.f75190g, fVar.f75191h);
        if (this.D) {
            this.f25372c.g(this);
        } else {
            continueLoading(this.P);
        }
    }

    @Override
    public Loader.c n(x9.f fVar, long j10, long j11, IOException iOException, int i10) {
        Loader.c cVarG;
        int i11;
        boolean zB = B(fVar);
        if (zB && !((i) fVar).o() && (iOException instanceof HttpDataSource$InvalidResponseCodeException) && ((i11 = ((HttpDataSource$InvalidResponseCodeException) iOException).responseCode) == 410 || i11 == 404)) {
            return Loader.f26472d;
        }
        long jA = fVar.a();
        v9.h hVar = new v9.h(fVar.f75184a, fVar.f75185b, fVar.d(), fVar.c(), j10, j11, jA);
        z.c cVar = new z.c(hVar, new v9.i(fVar.f75186c, this.f25371b, fVar.f75187d, fVar.f75188e, fVar.f75189f, p0.e1(fVar.f75190g), p0.e1(fVar.f75191h)), iOException, i10);
        z.b bVarD = this.f25378i.d(na.a0.c(this.f25373d.k()), cVar);
        boolean zM = (bVarD == null || bVarD.f26768a != 2) ? false : this.f25373d.m(fVar, bVarD.f26769b);
        if (zM) {
            if (zB && jA == 0) {
                ArrayList arrayList = this.f25383n;
                com.google.android.exoplayer2.util.a.g(((i) arrayList.remove(arrayList.size() - 1)) == fVar);
                if (this.f25383n.isEmpty()) {
                    this.Q = this.P;
                } else {
                    ((i) g3.g(this.f25383n)).m();
                }
            }
            cVarG = Loader.f26474f;
        } else {
            long jC = this.f25378i.c(cVar);
            cVarG = jC != C.TIME_UNSET ? Loader.g(false, jC) : Loader.f26475g;
        }
        Loader.c cVar2 = cVarG;
        boolean zC = cVar2.c();
        this.f25380k.w(hVar, fVar.f75186c, this.f25371b, fVar.f75187d, fVar.f75188e, fVar.f75189f, fVar.f75190g, fVar.f75191h, iOException, !zC);
        if (!zC) {
            this.f25390u = null;
            this.f25378i.b(fVar.f75184a);
        }
        if (zM) {
            if (this.D) {
                this.f25372c.g(this);
            } else {
                continueLoading(this.P);
            }
        }
        return cVar2;
    }

    public void M() {
        this.f25393x.clear();
    }

    public boolean N(Uri uri, z.c cVar, boolean z10) {
        z.b bVarD;
        if (!this.f25373d.o(uri)) {
            return true;
        }
        long j10 = (z10 || (bVarD = this.f25378i.d(na.a0.c(this.f25373d.k()), cVar)) == null || bVarD.f26768a != 2) ? -9223372036854775807L : bVarD.f26769b;
        return this.f25373d.q(uri, j10) && j10 != C.TIME_UNSET;
    }

    public void O() {
        if (this.f25383n.isEmpty()) {
            return;
        }
        i iVar = (i) g3.g(this.f25383n);
        int iC = this.f25373d.c(iVar);
        if (iC == 1) {
            iVar.t();
        } else if (iC == 2 && !this.T && this.f25379j.i()) {
            this.f25379j.e();
        }
    }

    public void Q(v9.w[] wVarArr, int i10, int... iArr) {
        this.I = r(wVarArr);
        this.J = new HashSet();
        for (int i11 : iArr) {
            this.J.add(this.I.b(i11));
        }
        this.L = i10;
        Handler handler = this.f25387r;
        final b bVar = this.f25372c;
        Objects.requireNonNull(bVar);
        handler.post(new Runnable() {
            @Override
            public final void run() {
                bVar.onPrepared();
            }
        });
        Y();
    }

    public int R(int i10, q1 q1Var, DecoderInputBuffer decoderInputBuffer, int i11) {
        if (C()) {
            return -3;
        }
        int i12 = 0;
        if (!this.f25383n.isEmpty()) {
            int i13 = 0;
            while (i13 < this.f25383n.size() - 1 && v((i) this.f25383n.get(i13))) {
                i13++;
            }
            p0.M0(this.f25383n, 0, i13);
            i iVar = (i) this.f25383n.get(0);
            p1 p1Var = iVar.f75187d;
            if (!p1Var.equals(this.G)) {
                this.f25380k.i(this.f25371b, p1Var, iVar.f75188e, iVar.f75189f, iVar.f75190g);
            }
            this.G = p1Var;
        }
        if (!this.f25383n.isEmpty() && !((i) this.f25383n.get(0)).o()) {
            return -3;
        }
        int iS = this.f25391v[i10].S(q1Var, decoderInputBuffer, i11, this.T);
        if (iS == -5) {
            p1 p1VarJ = (p1) com.google.android.exoplayer2.util.a.e(q1Var.f24962b);
            if (i10 == this.B) {
                int iQ = this.f25391v[i10].Q();
                while (i12 < this.f25383n.size() && ((i) this.f25383n.get(i12)).f25324k != iQ) {
                    i12++;
                }
                p1VarJ = p1VarJ.j(i12 < this.f25383n.size() ? ((i) this.f25383n.get(i12)).f75187d : (p1) com.google.android.exoplayer2.util.a.e(this.F));
            }
            q1Var.f24962b = p1VarJ;
        }
        return iS;
    }

    public void S() {
        if (this.D) {
            for (d dVar : this.f25391v) {
                dVar.R();
            }
        }
        this.f25379j.l(this);
        this.f25387r.removeCallbacksAndMessages(null);
        this.H = true;
        this.f25388s.clear();
    }

    public boolean V(long j10, boolean z10) {
        this.P = j10;
        if (C()) {
            this.Q = j10;
            return true;
        }
        if (this.C && !z10 && U(j10)) {
            return false;
        }
        this.Q = j10;
        this.T = false;
        this.f25383n.clear();
        if (this.f25379j.i()) {
            if (this.C) {
                for (d dVar : this.f25391v) {
                    dVar.r();
                }
            }
            this.f25379j.e();
        } else {
            this.f25379j.f();
            T();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:69:0x0122  */
    public boolean W(na.s[] sVarArr, boolean[] zArr, v9.s[] sVarArr2, boolean[] zArr2, long j10, boolean z10) {
        boolean z11;
        h();
        int i10 = this.E;
        int i11 = 0;
        for (int i12 = 0; i12 < sVarArr.length; i12++) {
            l lVar = (l) sVarArr2[i12];
            if (lVar != null && (sVarArr[i12] == null || !zArr[i12])) {
                this.E--;
                lVar.d();
                sVarArr2[i12] = null;
            }
        }
        boolean z12 = z10 || (!this.S ? j10 == this.P : i10 != 0);
        na.s sVarK = this.f25373d.k();
        boolean z13 = z12;
        na.s sVar = sVarK;
        for (int i13 = 0; i13 < sVarArr.length; i13++) {
            na.s sVar2 = sVarArr[i13];
            if (sVar2 != null) {
                int iC = this.I.c(sVar2.getTrackGroup());
                if (iC == this.L) {
                    this.f25373d.u(sVar2);
                    sVar = sVar2;
                }
                if (sVarArr2[i13] == null) {
                    this.E++;
                    l lVar2 = new l(this, iC);
                    sVarArr2[i13] = lVar2;
                    zArr2[i13] = true;
                    if (this.K != null) {
                        lVar2.b();
                        if (!z13) {
                            d dVar = this.f25391v[this.K[iC]];
                            z13 = (dVar.Z(j10, true) || dVar.C() == 0) ? false : true;
                        }
                    }
                }
            }
        }
        if (this.E == 0) {
            this.f25373d.r();
            this.G = null;
            this.R = true;
            this.f25383n.clear();
            if (this.f25379j.i()) {
                if (this.C) {
                    d[] dVarArr = this.f25391v;
                    int length = dVarArr.length;
                    while (i11 < length) {
                        dVarArr[i11].r();
                        i11++;
                    }
                }
                this.f25379j.e();
            } else {
                T();
            }
        } else {
            if (this.f25383n.isEmpty() || p0.c(sVar, sVarK)) {
                z11 = z10;
            } else {
                if (!this.S) {
                    long j11 = j10 < 0 ? -j10 : 0L;
                    i iVarX = x();
                    sVar.f(j10, j11, C.TIME_UNSET, this.f25384o, this.f25373d.a(iVarX, j10));
                    if (sVar.getSelectedIndexInTrackGroup() == this.f25373d.j().d(iVarX.f75187d)) {
                        z11 = z10;
                    }
                }
                this.R = true;
                z11 = true;
                z13 = true;
            }
            if (z13) {
                V(j10, z11);
                while (i11 < sVarArr2.length) {
                    if (sVarArr2[i11] != null) {
                        zArr2[i11] = true;
                    }
                    i11++;
                }
            }
        }
        d0(sVarArr2);
        this.S = true;
        return z13;
    }

    public void X(DrmInitData drmInitData) {
        if (p0.c(this.W, drmInitData)) {
            return;
        }
        this.W = drmInitData;
        int i10 = 0;
        while (true) {
            d[] dVarArr = this.f25391v;
            if (i10 >= dVarArr.length) {
                return;
            }
            if (this.O[i10]) {
                dVarArr[i10].i0(drmInitData);
            }
            i10++;
        }
    }

    public void Z(boolean z10) {
        this.f25373d.t(z10);
    }

    @Override
    public void a(p1 p1Var) {
        this.f25387r.post(this.f25385p);
    }

    public void a0(long j10) {
        if (this.V != j10) {
            this.V = j10;
            for (d dVar : this.f25391v) {
                dVar.a0(j10);
            }
        }
    }

    public long b(long j10, d3 d3Var) {
        return this.f25373d.b(j10, d3Var);
    }

    public int b0(int i10, long j10) {
        if (C()) {
            return 0;
        }
        d dVar = this.f25391v[i10];
        int iE = dVar.E(j10, this.T);
        i iVar = (i) g3.h(this.f25383n, null);
        if (iVar != null && !iVar.o()) {
            iE = Math.min(iE, iVar.k(i10) - dVar.C());
        }
        dVar.e0(iE);
        return iE;
    }

    public void c0(int i10) {
        h();
        com.google.android.exoplayer2.util.a.e(this.K);
        int i11 = this.K[i10];
        com.google.android.exoplayer2.util.a.g(this.N[i11]);
        this.N[i11] = false;
    }

    @Override
    public boolean continueLoading(long j10) {
        List listEmptyList;
        long jMax;
        if (this.T || this.f25379j.i() || this.f25379j.h()) {
            return false;
        }
        if (C()) {
            listEmptyList = Collections.emptyList();
            jMax = this.Q;
            for (d dVar : this.f25391v) {
                dVar.b0(this.Q);
            }
        } else {
            listEmptyList = this.f25384o;
            i iVarX = x();
            jMax = iVarX.f() ? iVarX.f75191h : Math.max(this.P, iVarX.f75190g);
        }
        List list = listEmptyList;
        long j11 = jMax;
        this.f25382m.a();
        this.f25373d.e(j10, j11, list, this.D || !list.isEmpty(), this.f25382m);
        e.b bVar = this.f25382m;
        boolean z10 = bVar.f25310b;
        x9.f fVar = bVar.f25309a;
        Uri uri = bVar.f25311c;
        if (z10) {
            this.Q = C.TIME_UNSET;
            this.T = true;
            return true;
        }
        if (fVar == null) {
            if (uri != null) {
                this.f25372c.d(uri);
            }
            return false;
        }
        if (B(fVar)) {
            A((i) fVar);
        }
        this.f25390u = fVar;
        this.f25380k.A(new v9.h(fVar.f75184a, fVar.f75185b, this.f25379j.m(fVar, this, this.f25378i.a(fVar.f75186c))), fVar.f75186c, this.f25371b, fVar.f75187d, fVar.f75188e, fVar.f75189f, fVar.f75190g, fVar.f75191h);
        return true;
    }

    public void discardBuffer(long j10, boolean z10) {
        if (!this.C || C()) {
            return;
        }
        int length = this.f25391v.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.f25391v[i10].q(j10, z10, this.N[i10]);
        }
    }

    @Override
    public void endTracks() {
        this.U = true;
        this.f25387r.post(this.f25386q);
    }

    @Override
    public long getBufferedPositionUs() {
        if (this.T) {
            return Long.MIN_VALUE;
        }
        if (C()) {
            return this.Q;
        }
        long jMax = this.P;
        i iVarX = x();
        if (!iVarX.f()) {
            if (this.f25383n.size() > 1) {
                ArrayList arrayList = this.f25383n;
                iVarX = (i) arrayList.get(arrayList.size() - 2);
            } else {
                iVarX = null;
            }
        }
        if (iVarX != null) {
            jMax = Math.max(jMax, iVarX.f75191h);
        }
        if (this.C) {
            for (d dVar : this.f25391v) {
                jMax = Math.max(jMax, dVar.z());
            }
        }
        return jMax;
    }

    @Override
    public long getNextLoadPositionUs() {
        if (C()) {
            return this.Q;
        }
        if (this.T) {
            return Long.MIN_VALUE;
        }
        return x().f75191h;
    }

    public y getTrackGroups() {
        h();
        return this.I;
    }

    public int i(int i10) {
        h();
        com.google.android.exoplayer2.util.a.e(this.K);
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

    @Override
    public boolean isLoading() {
        return this.f25379j.i();
    }

    public void maybeThrowPrepareError() throws ParserException {
        H();
        if (this.T && !this.D) {
            throw ParserException.createForMalformedContainer("Loading finished before preparation is complete.", null);
        }
    }

    public void o() {
        if (this.D) {
            return;
        }
        continueLoading(this.P);
    }

    @Override
    public void onLoaderReleased() {
        for (d dVar : this.f25391v) {
            dVar.T();
        }
    }

    @Override
    public void reevaluateBuffer(long j10) {
        if (this.f25379j.h() || C()) {
            return;
        }
        if (this.f25379j.i()) {
            com.google.android.exoplayer2.util.a.e(this.f25390u);
            if (this.f25373d.v(j10, this.f25390u, this.f25384o)) {
                this.f25379j.e();
                return;
            }
            return;
        }
        int size = this.f25384o.size();
        while (size > 0 && this.f25373d.c((i) this.f25384o.get(size - 1)) == 2) {
            size--;
        }
        if (size < this.f25384o.size()) {
            t(size);
        }
        int iH = this.f25373d.h(j10, this.f25384o);
        if (iH < this.f25383n.size()) {
            t(iH);
        }
    }

    @Override
    public e0 track(int i10, int i11) {
        e0 e0VarQ;
        if (!Y.contains(Integer.valueOf(i11))) {
            int i12 = 0;
            while (true) {
                e0[] e0VarArr = this.f25391v;
                if (i12 >= e0VarArr.length) {
                    e0VarQ = null;
                    break;
                }
                if (this.f25392w[i12] == i10) {
                    e0VarQ = e0VarArr[i12];
                    break;
                }
                i12++;
            }
        } else {
            e0VarQ = y(i10, i11);
        }
        if (e0VarQ == null) {
            if (this.U) {
                return p(i10, i11);
            }
            e0VarQ = q(i10, i11);
        }
        if (i11 != 5) {
            return e0VarQ;
        }
        if (this.f25395z == null) {
            this.f25395z = new c(e0VarQ, this.f25381l);
        }
        return this.f25395z;
    }

    @Override
    public void g(i9.b0 b0Var) {
    }
}
