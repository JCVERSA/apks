package androidx.media3.exoplayer.hls;

import android.net.Uri;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.p0;
import androidx.media3.common.util.r0;
import androidx.media3.common.x;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.math.BigInteger;
import java.util.List;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import x1.f4;

final class i extends g2.m {
    private static final AtomicInteger N = new AtomicInteger();
    private final boolean A;
    private final boolean B;
    private final f4 C;
    private final long D;
    private j E;
    private r F;
    private int G;
    private boolean H;
    private volatile boolean I;
    private boolean J;
    private ImmutableList K;
    private boolean L;
    private boolean M;

    public final int f11430k;

    public final int f11431l;

    public final Uri f11432m;

    public final boolean f11433n;

    public final int f11434o;

    private final androidx.media3.datasource.a f11435p;

    private final w1.h f11436q;

    private final j f11437r;

    private final boolean f11438s;

    private final boolean f11439t;

    private final p0 f11440u;

    private final g f11441v;

    private final List f11442w;

    private final DrmInitData f11443x;

    private final y2.h f11444y;

    private final j0 f11445z;

    private i(g gVar, androidx.media3.datasource.a aVar, w1.h hVar, androidx.media3.common.r rVar, boolean z10, androidx.media3.datasource.a aVar2, w1.h hVar2, boolean z11, Uri uri, List list, int i10, Object obj, long j10, long j11, long j12, int i11, boolean z12, int i12, boolean z13, boolean z14, p0 p0Var, long j13, DrmInitData drmInitData, j jVar, y2.h hVar3, j0 j0Var, boolean z15, f4 f4Var) {
        super(aVar, hVar, rVar, i10, obj, j10, j11, j12);
        this.A = z10;
        this.f11434o = i11;
        this.M = z12;
        this.f11431l = i12;
        this.f11436q = hVar2;
        this.f11435p = aVar2;
        this.H = hVar2 != null;
        this.B = z11;
        this.f11432m = uri;
        this.f11438s = z14;
        this.f11440u = p0Var;
        this.D = j13;
        this.f11439t = z13;
        this.f11441v = gVar;
        this.f11442w = list;
        this.f11443x = drmInitData;
        this.f11437r = jVar;
        this.f11444y = hVar3;
        this.f11445z = j0Var;
        this.f11433n = z15;
        this.C = f4Var;
        this.K = ImmutableList.of();
        this.f11430k = N.getAndIncrement();
    }

    private static androidx.media3.datasource.a g(androidx.media3.datasource.a aVar, byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return aVar;
        }
        androidx.media3.common.util.a.e(bArr2);
        return new a(aVar, bArr, bArr2);
    }

    public static i h(g gVar, androidx.media3.datasource.a aVar, androidx.media3.common.r rVar, long j10, androidx.media3.exoplayer.hls.playlist.c cVar, e.C0091e c0091e, Uri uri, List list, int i10, Object obj, boolean z10, t tVar, long j11, i iVar, byte[] bArr, byte[] bArr2, boolean z11, f4 f4Var, androidx.media3.exoplayer.upstream.g.a aVar2) {
        w1.h hVarA;
        androidx.media3.datasource.a aVarG;
        boolean z12;
        y2.h hVar;
        j0 j0Var;
        j jVar;
        androidx.media3.exoplayer.hls.playlist.c.g gVar2 = c0091e.f11424a;
        w1.h hVarA2 = new w1.h.b().i(r0.f(cVar.f15504a, gVar2.f11604a)).h(gVar2.f11612i).g(gVar2.f11613j).b(c0091e.f11427d ? 8 : 0).a();
        boolean z13 = bArr != null;
        androidx.media3.datasource.a aVarG2 = g(aVar, bArr, z13 ? j((String) androidx.media3.common.util.a.e(gVar2.f11611h)) : null);
        androidx.media3.exoplayer.hls.playlist.c.f fVar = gVar2.f11605b;
        if (fVar != null) {
            boolean z14 = bArr2 != null;
            byte[] bArrJ = z14 ? j((String) androidx.media3.common.util.a.e(fVar.f11611h)) : null;
            hVarA = new w1.h.b().i(r0.f(cVar.f15504a, fVar.f11604a)).h(fVar.f11612i).g(fVar.f11613j).a();
            z12 = z14;
            aVarG = g(aVar, bArr2, bArrJ);
        } else {
            hVarA = null;
            aVarG = null;
            z12 = false;
        }
        long j12 = j10 + gVar2.f11608e;
        long j13 = j12 + gVar2.f11606c;
        int i11 = cVar.f11565j + gVar2.f11607d;
        if (iVar != null) {
            w1.h hVar2 = iVar.f11436q;
            boolean z15 = hVarA == hVar2 || (hVarA != null && hVar2 != null && hVarA.f74097a.equals(hVar2.f74097a) && hVarA.f74103g == iVar.f11436q.f74103g);
            boolean z16 = uri.equals(iVar.f11432m) && iVar.J;
            y2.h hVar3 = iVar.f11444y;
            j0 j0Var2 = iVar.f11445z;
            jVar = (z15 && z16 && !iVar.L && iVar.f11431l == i11) ? iVar.E : null;
            hVar = hVar3;
            j0Var = j0Var2;
        } else {
            hVar = new y2.h();
            j0Var = new j0(10);
            jVar = null;
        }
        return new i(gVar, aVarG2, hVarA2, rVar, z13, aVarG, hVarA, z12, uri, list, i10, obj, j12, j13, c0091e.f11425b, c0091e.f11426c, !c0091e.f11427d, i11, gVar2.f11614k, z10, tVar.a(i11), j11, gVar2.f11609f, jVar, hVar, j0Var, z11, f4Var);
    }

    private void i(androidx.media3.datasource.a aVar, w1.h hVar, boolean z10, boolean z11) {
        w1.h hVarE;
        long position;
        long j10;
        boolean z12 = false;
        if (z10) {
            z12 = this.G != 0;
            hVarE = hVar;
        } else {
            hVarE = hVar.e(this.G);
        }
        try {
            k2.j jVarS = s(aVar, hVarE, z11);
            if (z12) {
                jVarS.skipFully(this.G);
            }
            while (!this.I && this.E.a(jVarS)) {
                try {
                    try {
                    } catch (EOFException e10) {
                        if ((this.f60598d.f9840f & 16384) == 0) {
                            throw e10;
                        }
                        this.E.c();
                        position = jVarS.getPosition();
                        j10 = hVar.f74103g;
                    }
                } catch (Throwable th2) {
                    this.G = (int) (jVarS.getPosition() - hVar.f74103g);
                    throw th2;
                }
            }
            position = jVarS.getPosition();
            j10 = hVar.f74103g;
            this.G = (int) (position - j10);
            w1.g.a(aVar);
        } catch (Throwable th3) {
            w1.g.a(aVar);
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

    private static boolean n(e.C0091e c0091e, androidx.media3.exoplayer.hls.playlist.c cVar) {
        androidx.media3.exoplayer.hls.playlist.c.g gVar = c0091e.f11424a;
        if (gVar instanceof androidx.media3.exoplayer.hls.playlist.c.d) {
            return ((androidx.media3.exoplayer.hls.playlist.c.d) gVar).f11597l || (c0091e.f11426c == 0 && cVar.f15506c);
        }
        return cVar.f15506c;
    }

    private void p() {
        i(this.f60603i, this.f60596b, this.A, true);
    }

    private void q() {
        if (this.H) {
            androidx.media3.common.util.a.e(this.f11435p);
            androidx.media3.common.util.a.e(this.f11436q);
            i(this.f11435p, this.f11436q, this.B, false);
            this.G = 0;
            this.H = false;
        }
    }

    private long r(k2.s sVar) {
        sVar.resetPeekPosition();
        try {
            this.f11445z.S(10);
            sVar.peekFully(this.f11445z.e(), 0, 10);
            if (this.f11445z.K() != 4801587) {
                return C.TIME_UNSET;
            }
            this.f11445z.X(3);
            int iG = this.f11445z.G();
            int i10 = iG + 10;
            if (i10 > this.f11445z.b()) {
                byte[] bArrE = this.f11445z.e();
                this.f11445z.S(i10);
                System.arraycopy(bArrE, 0, this.f11445z.e(), 0, 10);
            }
            sVar.peekFully(this.f11445z.e(), 10, iG);
            x xVarE = this.f11444y.e(this.f11445z.e(), iG);
            if (xVarE == null) {
                return C.TIME_UNSET;
            }
            int iE = xVarE.e();
            for (int i11 = 0; i11 < iE; i11++) {
                x.a aVarD = xVarE.d(i11);
                if (aVarD instanceof y2.m) {
                    y2.m mVar = (y2.m) aVarD;
                    if ("com.apple.streaming.transportStreamTimestamp".equals(mVar.f76127b)) {
                        System.arraycopy(mVar.f76128c, 0, this.f11445z.e(), 0, 8);
                        this.f11445z.W(0);
                        this.f11445z.V(8);
                        return this.f11445z.A() & 8589934591L;
                    }
                }
            }
            return C.TIME_UNSET;
        } catch (EOFException unused) {
        }
    }

    private k2.j s(androidx.media3.datasource.a aVar, w1.h hVar, boolean z10) throws IOException {
        long jA = aVar.a(hVar);
        if (z10) {
            try {
                this.f11440u.j(this.f11438s, this.f60601g, this.D);
            } catch (InterruptedException unused) {
                throw new InterruptedIOException();
            } catch (TimeoutException e10) {
                throw new IOException(e10);
            }
        }
        k2.j jVar = new k2.j(aVar, hVar.f74103g, jA);
        if (this.E == null) {
            long jR = r(jVar);
            jVar.resetPeekPosition();
            j jVar2 = this.f11437r;
            j jVarG = jVar2 != null ? jVar2.g() : this.f11441v.e(hVar.f74097a, this.f60598d, this.f11442w, this.f11440u, aVar.getResponseHeaders(), jVar, this.C);
            this.E = jVarG;
            if (jVarG.f()) {
                this.F.f0(jR != C.TIME_UNSET ? this.f11440u.b(jR) : this.f60601g);
            } else {
                this.F.f0(0L);
            }
            this.F.R();
            this.E.e(this.F);
        }
        this.F.c0(this.f11443x);
        return jVar;
    }

    public static boolean u(i iVar, Uri uri, androidx.media3.exoplayer.hls.playlist.c cVar, e.C0091e c0091e, long j10) {
        if (iVar == null) {
            return false;
        }
        if (uri.equals(iVar.f11432m) && iVar.J) {
            return false;
        }
        return !n(c0091e, cVar) || j10 + c0091e.f11424a.f11608e < iVar.f60602h;
    }

    @Override
    public void cancelLoad() {
        this.I = true;
    }

    @Override
    public boolean f() {
        return this.J;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int k(int i10) {
        androidx.media3.common.util.a.g(!this.f11433n);
        if (i10 >= this.K.size()) {
            return 0;
        }
        return ((Integer) this.K.get(i10)).intValue();
    }

    public void l(r rVar, ImmutableList immutableList) {
        this.F = rVar;
        this.K = immutableList;
    }

    @Override
    public void load() {
        j jVar;
        androidx.media3.common.util.a.e(this.F);
        if (this.E == null && (jVar = this.f11437r) != null && jVar.d()) {
            this.E = this.f11437r;
            this.H = false;
        }
        q();
        if (this.I) {
            return;
        }
        if (!this.f11439t) {
            p();
        }
        this.J = !this.I;
    }

    public void m() {
        this.L = true;
    }

    public boolean o() {
        return this.M;
    }

    public void t() {
        this.M = true;
    }
}
