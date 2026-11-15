package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.PrivFrame;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.n0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g9.u1;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.math.BigInteger;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

final class i extends x9.n {
    private static final AtomicInteger M = new AtomicInteger();
    private final boolean A;
    private final boolean B;
    private final u1 C;
    private j D;
    private p E;
    private int F;
    private boolean G;
    private volatile boolean H;
    private boolean I;
    private ImmutableList J;
    private boolean K;
    private boolean L;

    public final int f25324k;

    public final int f25325l;

    public final Uri f25326m;

    public final boolean f25327n;

    public final int f25328o;

    private final com.google.android.exoplayer2.upstream.k f25329p;

    private final com.google.android.exoplayer2.upstream.n f25330q;

    private final j f25331r;

    private final boolean f25332s;

    private final boolean f25333t;

    private final l0 f25334u;

    private final g f25335v;

    private final List f25336w;

    private final DrmInitData f25337x;

    private final com.google.android.exoplayer2.metadata.id3.b f25338y;

    private final d0 f25339z;

    private i(g gVar, com.google.android.exoplayer2.upstream.k kVar, com.google.android.exoplayer2.upstream.n nVar, p1 p1Var, boolean z10, com.google.android.exoplayer2.upstream.k kVar2, com.google.android.exoplayer2.upstream.n nVar2, boolean z11, Uri uri, List list, int i10, Object obj, long j10, long j11, long j12, int i11, boolean z12, int i12, boolean z13, boolean z14, l0 l0Var, DrmInitData drmInitData, j jVar, com.google.android.exoplayer2.metadata.id3.b bVar, d0 d0Var, boolean z15, u1 u1Var) {
        super(kVar, nVar, p1Var, i10, obj, j10, j11, j12);
        this.A = z10;
        this.f25328o = i11;
        this.L = z12;
        this.f25325l = i12;
        this.f25330q = nVar2;
        this.f25329p = kVar2;
        this.G = nVar2 != null;
        this.B = z11;
        this.f25326m = uri;
        this.f25332s = z14;
        this.f25334u = l0Var;
        this.f25333t = z13;
        this.f25335v = gVar;
        this.f25336w = list;
        this.f25337x = drmInitData;
        this.f25331r = jVar;
        this.f25338y = bVar;
        this.f25339z = d0Var;
        this.f25327n = z15;
        this.C = u1Var;
        this.J = ImmutableList.of();
        this.f25324k = M.getAndIncrement();
    }

    private static com.google.android.exoplayer2.upstream.k g(com.google.android.exoplayer2.upstream.k kVar, byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return kVar;
        }
        com.google.android.exoplayer2.util.a.e(bArr2);
        return new a(kVar, bArr, bArr2);
    }

    public static i h(g gVar, com.google.android.exoplayer2.upstream.k kVar, p1 p1Var, long j10, com.google.android.exoplayer2.source.hls.playlist.d dVar, e.C0348e c0348e, Uri uri, List list, int i10, Object obj, boolean z10, q qVar, i iVar, byte[] bArr, byte[] bArr2, boolean z11, u1 u1Var) {
        com.google.android.exoplayer2.upstream.k kVarG;
        com.google.android.exoplayer2.upstream.n nVar;
        boolean z12;
        com.google.android.exoplayer2.metadata.id3.b bVar;
        d0 d0Var;
        j jVar;
        com.google.android.exoplayer2.source.hls.playlist.d.e eVar = c0348e.f25316a;
        com.google.android.exoplayer2.upstream.n nVarA = new com.google.android.exoplayer2.upstream.n.b().i(n0.e(dVar.f260a, eVar.f25491a)).h(eVar.f25499i).g(eVar.f25500j).b(c0348e.f25319d ? 8 : 0).a();
        boolean z13 = bArr != null;
        com.google.android.exoplayer2.upstream.k kVarG2 = g(kVar, bArr, z13 ? j((String) com.google.android.exoplayer2.util.a.e(eVar.f25498h)) : null);
        com.google.android.exoplayer2.source.hls.playlist.d.C0350d c0350d = eVar.f25492b;
        if (c0350d != null) {
            boolean z14 = bArr2 != null;
            byte[] bArrJ = z14 ? j((String) com.google.android.exoplayer2.util.a.e(c0350d.f25498h)) : null;
            nVar = new com.google.android.exoplayer2.upstream.n(n0.e(dVar.f260a, c0350d.f25491a), c0350d.f25499i, c0350d.f25500j);
            kVarG = g(kVar, bArr2, bArrJ);
            z12 = z14;
        } else {
            kVarG = null;
            nVar = null;
            z12 = false;
        }
        long j11 = j10 + eVar.f25495e;
        long j12 = j11 + eVar.f25493c;
        int i11 = dVar.f25471j + eVar.f25494d;
        if (iVar != null) {
            com.google.android.exoplayer2.upstream.n nVar2 = iVar.f25330q;
            boolean z15 = nVar == nVar2 || (nVar != null && nVar2 != null && nVar.f26665a.equals(nVar2.f26665a) && nVar.f26671g == iVar.f25330q.f26671g);
            boolean z16 = uri.equals(iVar.f25326m) && iVar.I;
            bVar = iVar.f25338y;
            d0Var = iVar.f25339z;
            jVar = (z15 && z16 && !iVar.K && iVar.f25325l == i11) ? iVar.D : null;
        } else {
            bVar = new com.google.android.exoplayer2.metadata.id3.b();
            d0Var = new d0(10);
            jVar = null;
        }
        return new i(gVar, kVarG2, nVarA, p1Var, z13, kVarG, nVar, z12, uri, list, i10, obj, j11, j12, c0348e.f25317b, c0348e.f25318c, !c0348e.f25319d, i11, eVar.f25501k, z10, qVar.a(i11), eVar.f25496f, jVar, bVar, d0Var, z11, u1Var);
    }

    private void i(com.google.android.exoplayer2.upstream.k kVar, com.google.android.exoplayer2.upstream.n nVar, boolean z10, boolean z11) {
        com.google.android.exoplayer2.upstream.n nVarE;
        long position;
        long j10;
        boolean z12 = false;
        if (z10) {
            z12 = this.F != 0;
            nVarE = nVar;
        } else {
            nVarE = nVar.e(this.F);
        }
        try {
            i9.f fVarS = s(kVar, nVarE, z11);
            if (z12) {
                fVarS.skipFully(this.F);
            }
            while (!this.H && this.D.a(fVarS)) {
                try {
                    try {
                    } catch (EOFException e10) {
                        if ((this.f75187d.f24894e & 16384) == 0) {
                            throw e10;
                        }
                        this.D.c();
                        position = fVarS.getPosition();
                        j10 = nVar.f26671g;
                    }
                } catch (Throwable th2) {
                    this.F = (int) (fVarS.getPosition() - nVar.f26671g);
                    throw th2;
                }
            }
            position = fVarS.getPosition();
            j10 = nVar.f26671g;
            this.F = (int) (position - j10);
            com.google.android.exoplayer2.upstream.m.a(kVar);
        } catch (Throwable th3) {
            com.google.android.exoplayer2.upstream.m.a(kVar);
            throw th3;
        }
    }

    private static byte[] j(String str) {
        if (com.google.common.base.a.e(str).startsWith("0x")) {
            str = str.substring(2);
        }
        byte[] byteArray = new BigInteger(str, 16).toByteArray();
        byte[] bArr = new byte[16];
        int length = byteArray.length > 16 ? byteArray.length - 16 : 0;
        System.arraycopy(byteArray, length, bArr, (16 - byteArray.length) + length, byteArray.length - length);
        return bArr;
    }

    private static boolean n(e.C0348e c0348e, com.google.android.exoplayer2.source.hls.playlist.d dVar) {
        com.google.android.exoplayer2.source.hls.playlist.d.e eVar = c0348e.f25316a;
        if (eVar instanceof com.google.android.exoplayer2.source.hls.playlist.d.b) {
            return ((com.google.android.exoplayer2.source.hls.playlist.d.b) eVar).f25484l || (c0348e.f25318c == 0 && dVar.f262c);
        }
        return dVar.f262c;
    }

    private void p() {
        i(this.f75192i, this.f75185b, this.A, true);
    }

    private void q() {
        if (this.G) {
            com.google.android.exoplayer2.util.a.e(this.f25329p);
            com.google.android.exoplayer2.util.a.e(this.f25330q);
            i(this.f25329p, this.f25330q, this.B, false);
            this.F = 0;
            this.G = false;
        }
    }

    private long r(i9.m mVar) {
        mVar.resetPeekPosition();
        try {
            this.f25339z.L(10);
            mVar.peekFully(this.f25339z.d(), 0, 10);
            if (this.f25339z.G() != 4801587) {
                return C.TIME_UNSET;
            }
            this.f25339z.Q(3);
            int iC = this.f25339z.C();
            int i10 = iC + 10;
            if (i10 > this.f25339z.b()) {
                byte[] bArrD = this.f25339z.d();
                this.f25339z.L(i10);
                System.arraycopy(bArrD, 0, this.f25339z.d(), 0, 10);
            }
            mVar.peekFully(this.f25339z.d(), 10, iC);
            Metadata metadataE = this.f25338y.e(this.f25339z.d(), iC);
            if (metadataE == null) {
                return C.TIME_UNSET;
            }
            int length = metadataE.length();
            for (int i11 = 0; i11 < length; i11++) {
                Metadata.Entry entry = metadataE.get(i11);
                if (entry instanceof PrivFrame) {
                    PrivFrame privFrame = (PrivFrame) entry;
                    if ("com.apple.streaming.transportStreamTimestamp".equals(privFrame.owner)) {
                        System.arraycopy(privFrame.privateData, 0, this.f25339z.d(), 0, 8);
                        this.f25339z.P(0);
                        this.f25339z.O(8);
                        return this.f25339z.w() & 8589934591L;
                    }
                }
            }
            return C.TIME_UNSET;
        } catch (EOFException unused) {
        }
    }

    private i9.f s(com.google.android.exoplayer2.upstream.k kVar, com.google.android.exoplayer2.upstream.n nVar, boolean z10) throws InterruptedIOException {
        long jA = kVar.a(nVar);
        if (z10) {
            try {
                this.f25334u.h(this.f25332s, this.f75190g);
            } catch (InterruptedException unused) {
                throw new InterruptedIOException();
            }
        }
        i9.f fVar = new i9.f(kVar, nVar.f26671g, jA);
        if (this.D == null) {
            long jR = r(fVar);
            fVar.resetPeekPosition();
            j jVar = this.f25331r;
            j jVarG = jVar != null ? jVar.g() : this.f25335v.a(nVar.f26665a, this.f75187d, this.f25336w, this.f25334u, kVar.getResponseHeaders(), fVar, this.C);
            this.D = jVarG;
            if (jVarG.f()) {
                this.E.a0(jR != C.TIME_UNSET ? this.f25334u.b(jR) : this.f75190g);
            } else {
                this.E.a0(0L);
            }
            this.E.M();
            this.D.b(this.E);
        }
        this.E.X(this.f25337x);
        return fVar;
    }

    public static boolean u(i iVar, Uri uri, com.google.android.exoplayer2.source.hls.playlist.d dVar, e.C0348e c0348e, long j10) {
        if (iVar == null) {
            return false;
        }
        if (uri.equals(iVar.f25326m) && iVar.I) {
            return false;
        }
        return !n(c0348e, dVar) || j10 + c0348e.f25316a.f25495e < iVar.f75191h;
    }

    @Override
    public void cancelLoad() {
        this.H = true;
    }

    @Override
    public boolean f() {
        return this.I;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int k(int i10) {
        com.google.android.exoplayer2.util.a.g(!this.f25327n);
        if (i10 >= this.J.size()) {
            return 0;
        }
        return ((Integer) this.J.get(i10)).intValue();
    }

    public void l(p pVar, ImmutableList immutableList) {
        this.E = pVar;
        this.J = immutableList;
    }

    @Override
    public void load() {
        j jVar;
        com.google.android.exoplayer2.util.a.e(this.E);
        if (this.D == null && (jVar = this.f25331r) != null && jVar.d()) {
            this.D = this.f25331r;
            this.G = false;
        }
        q();
        if (this.H) {
            return;
        }
        if (!this.f25333t) {
            p();
        }
        this.I = !this.H;
    }

    public void m() {
        this.K = true;
    }

    public boolean o() {
        return this.L;
    }

    public void t() {
        this.L = true;
    }
}
