package com.google.android.exoplayer2.source;

import android.net.Uri;
import android.os.Handler;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.upstream.Loader;
import defpackage.blb;
import defpackage.cb;
import defpackage.eva;
import defpackage.fva;
import defpackage.h19;
import defpackage.id8;
import defpackage.ih6;
import defpackage.in5;
import defpackage.ja9;
import defpackage.ka9;
import defpackage.le1;
import defpackage.ms1;
import defpackage.o44;
import defpackage.ox9;
import defpackage.qi3;
import defpackage.qk3;
import defpackage.qp6;
import defpackage.qw7;
import defpackage.ws1;
import defpackage.zi;
import defpackage.zua;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class m implements h, qk3, Loader.b, Loader.e, p.d {
    public static final Map N = y();
    public static final com.google.android.exoplayer2.k O = new com.google.android.exoplayer2.k.b().S("icy").e0(MimeTypes.APPLICATION_ICY).E();
    public boolean B;
    public boolean D;
    public boolean E;
    public int F;
    public boolean G;
    public long H;
    public boolean J;
    public int K;
    public boolean L;
    public boolean M;
    public final Uri b;
    public final com.google.android.exoplayer2.upstream.a c;
    public final com.google.android.exoplayer2.drm.c d;
    public final com.google.android.exoplayer2.upstream.f e;
    public final j.a f;
    public final com.google.android.exoplayer2.drm.b.a g;
    public final b h;
    public final cb i;
    public final String j;
    public final long k;
    public final l m;
    public h.a r;
    public IcyHeaders s;
    public boolean v;
    public boolean w;
    public boolean x;
    public e y;
    public ja9 z;
    public final Loader l = new Loader("ProgressiveMediaPeriod");
    public final le1 n = new le1();
    public final Runnable o = new Runnable() {
        @Override
        public final void run() {
            this.b.H();
        }
    };
    public final Runnable p = new Runnable() {
        @Override
        public final void run() {
            this.b.E();
        }
    };
    public final Handler q = blb.u();
    public d[] u = new d[0];
    public p[] t = new p[0];
    public long I = C.TIME_UNSET;
    public long A = C.TIME_UNSET;
    public int C = 1;

    public final class a implements Loader.d, com.google.android.exoplayer2.source.e.a {
        public final Uri b;
        public final ox9 c;
        public final l d;
        public final qk3 e;
        public final le1 f;
        public volatile boolean h;
        public long j;
        public fva l;
        public boolean m;
        public final id8 g = new id8();
        public boolean i = true;
        public final long a = in5.a();
        public com.google.android.exoplayer2.upstream.b k = g(0);

        public a(Uri uri, com.google.android.exoplayer2.upstream.a aVar, l lVar, qk3 qk3Var, le1 le1Var) {
            this.b = uri;
            this.c = new ox9(aVar);
            this.d = lVar;
            this.e = qk3Var;
            this.f = le1Var;
        }

        @Override
        public void a(qw7 qw7Var) {
            long jMax = !this.m ? this.j : Math.max(m.this.A(true), this.j);
            int iA = qw7Var.a();
            fva fvaVar = (fva) zi.e(this.l);
            fvaVar.d(qw7Var, iA);
            fvaVar.e(jMax, 1, iA, 0, null);
            this.m = true;
        }

        @Override
        public void cancelLoad() {
            this.h = true;
        }

        public final com.google.android.exoplayer2.upstream.b g(long j) {
            return new com.google.android.exoplayer2.upstream.b.C0085b().i(this.b).h(j).f(m.this.j).b(6).e(m.N).a();
        }

        public final void h(long j, long j2) {
            this.g.a = j;
            this.j = j2;
            this.i = true;
            this.m = false;
        }

        @Override
        public void load() {
            int iB = 0;
            while (iB == 0 && !this.h) {
                try {
                    long j = this.g.a;
                    com.google.android.exoplayer2.upstream.b bVarG = g(j);
                    this.k = bVarG;
                    long jA = this.c.a(bVarG);
                    if (jA != -1) {
                        jA += j;
                        m.this.M();
                    }
                    long j2 = jA;
                    m.this.s = IcyHeaders.parse(this.c.getResponseHeaders());
                    ms1 eVar = this.c;
                    if (m.this.s != null && m.this.s.metadataInterval != -1) {
                        eVar = new com.google.android.exoplayer2.source.e(this.c, m.this.s.metadataInterval, this);
                        fva fvaVarB = m.this.B();
                        this.l = fvaVarB;
                        fvaVarB.b(m.O);
                    }
                    long currentInputPosition = j;
                    this.d.a(eVar, this.b, this.c.getResponseHeaders(), j, j2, this.e);
                    if (m.this.s != null) {
                        this.d.disableSeekingOnMp3Streams();
                    }
                    if (this.i) {
                        this.d.seek(currentInputPosition, this.j);
                        this.i = false;
                    }
                    while (true) {
                        long j3 = currentInputPosition;
                        while (true) {
                            if (iB != 0 || this.h) {
                                break;
                            }
                            try {
                                this.f.a();
                                iB = this.d.b(this.g);
                                currentInputPosition = this.d.getCurrentInputPosition();
                                if (currentInputPosition > m.this.k + j3) {
                                    this.f.d();
                                    m.this.q.post(m.this.p);
                                }
                            } catch (InterruptedException unused) {
                                throw new InterruptedIOException();
                            }
                        }
                    }
                    if (iB == 1) {
                        iB = 0;
                    } else if (this.d.getCurrentInputPosition() != -1) {
                        this.g.a = this.d.getCurrentInputPosition();
                    }
                    ws1.a(this.c);
                } catch (Throwable th) {
                    if (iB != 1 && this.d.getCurrentInputPosition() != -1) {
                        this.g.a = this.d.getCurrentInputPosition();
                    }
                    ws1.a(this.c);
                    throw th;
                }
            }
        }
    }

    public interface b {
        void h(long j, boolean z, boolean z2);
    }

    public final class c implements h19 {
        public final int a;

        public c(int i) {
            this.a = i;
        }

        @Override
        public int a(o44 o44Var, DecoderInputBuffer decoderInputBuffer, int i) {
            return m.this.R(this.a, o44Var, decoderInputBuffer, i);
        }

        @Override
        public boolean isReady() {
            return m.this.D(this.a);
        }

        @Override
        public void maybeThrowError() throws IOException {
            m.this.L(this.a);
        }

        @Override
        public int skipData(long j) {
            return m.this.V(this.a, j);
        }
    }

    public static final class d {
        public final int a;
        public final boolean b;

        public d(int i, boolean z) {
            this.a = i;
            this.b = z;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return this.a == dVar.a && this.b == dVar.b;
        }

        public int hashCode() {
            return (this.a * 31) + (this.b ? 1 : 0);
        }
    }

    public static final class e {
        public final eva a;
        public final boolean[] b;
        public final boolean[] c;
        public final boolean[] d;

        public e(eva evaVar, boolean[] zArr) {
            this.a = evaVar;
            this.b = zArr;
            int i = evaVar.b;
            this.c = new boolean[i];
            this.d = new boolean[i];
        }
    }

    public m(Uri uri, com.google.android.exoplayer2.upstream.a aVar, l lVar, com.google.android.exoplayer2.drm.c cVar, com.google.android.exoplayer2.drm.b.a aVar2, com.google.android.exoplayer2.upstream.f fVar, j.a aVar3, b bVar, cb cbVar, String str, int i) {
        this.b = uri;
        this.c = aVar;
        this.d = cVar;
        this.g = aVar2;
        this.e = fVar;
        this.f = aVar3;
        this.h = bVar;
        this.i = cbVar;
        this.j = str;
        this.k = i;
        this.m = lVar;
    }

    public static Map y() {
        HashMap map = new HashMap();
        map.put("Icy-MetaData", "1");
        return Collections.unmodifiableMap(map);
    }

    public final long A(boolean z) {
        long jMax = Long.MIN_VALUE;
        for (int i = 0; i < this.t.length; i++) {
            if (z || ((e) zi.e(this.y)).c[i]) {
                jMax = Math.max(jMax, this.t[i].t());
            }
        }
        return jMax;
    }

    public fva B() {
        return Q(new d(0, true));
    }

    public final boolean C() {
        return this.I != C.TIME_UNSET;
    }

    public boolean D(int i) {
        return !X() && this.t[i].D(this.L);
    }

    public final void E() {
        if (this.M) {
            return;
        }
        ((h.a) zi.e(this.r)).b(this);
    }

    public final void F() {
        this.G = true;
    }

    public final void H() {
        if (this.M || this.w || !this.v || this.z == null) {
            return;
        }
        for (p pVar : this.t) {
            if (pVar.z() == null) {
                return;
            }
        }
        this.n.d();
        int length = this.t.length;
        zua[] zuaVarArr = new zua[length];
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            com.google.android.exoplayer2.k kVarE = (com.google.android.exoplayer2.k) zi.e(this.t[i].z());
            String str = kVarE.m;
            boolean zH = qp6.h(str);
            boolean z = zH || qp6.k(str);
            zArr[i] = z;
            this.x = z | this.x;
            IcyHeaders icyHeaders = this.s;
            if (icyHeaders != null) {
                if (zH || this.u[i].b) {
                    Metadata metadata = kVarE.k;
                    kVarE = kVarE.b().X(metadata == null ? new Metadata(icyHeaders) : metadata.copyWithAppendedEntries(icyHeaders)).E();
                }
                if (zH && kVarE.g == -1 && kVarE.h == -1 && icyHeaders.bitrate != -1) {
                    kVarE = kVarE.b().G(icyHeaders.bitrate).E();
                }
            }
            zuaVarArr[i] = new zua(Integer.toString(i), kVarE.c(this.d.d(kVarE)));
        }
        this.y = new e(new eva(zuaVarArr), zArr);
        this.w = true;
        ((h.a) zi.e(this.r)).d(this);
    }

    public final void I(int i) {
        w();
        e eVar = this.y;
        boolean[] zArr = eVar.d;
        if (zArr[i]) {
            return;
        }
        com.google.android.exoplayer2.k kVarC = eVar.a.b(i).c(0);
        this.f.h(qp6.f(kVarC.m), kVarC, 0, null, this.H);
        zArr[i] = true;
    }

    public final void J(int i) {
        w();
        boolean[] zArr = this.y.b;
        if (this.J && zArr[i]) {
            if (this.t[i].D(false)) {
                return;
            }
            this.I = 0L;
            this.J = false;
            this.E = true;
            this.H = 0L;
            this.K = 0;
            for (p pVar : this.t) {
                pVar.N();
            }
            ((h.a) zi.e(this.r)).b(this);
        }
    }

    public void K() throws IOException {
        this.l.k(this.e.getMinimumLoadableRetryCount(this.C));
    }

    public void L(int i) throws IOException {
        this.t[i].G();
        K();
    }

    public final void M() {
        this.q.post(new Runnable() {
            @Override
            public final void run() {
                this.b.F();
            }
        });
    }

    @Override
    public void e(a aVar, long j, long j2, boolean z) {
        ox9 ox9Var = aVar.c;
        in5 in5Var = new in5(aVar.a, aVar.k, ox9Var.d(), ox9Var.e(), j, j2, ox9Var.c());
        this.e.onLoadTaskConcluded(aVar.a);
        this.f.o(in5Var, 1, -1, null, 0, null, aVar.j, this.A);
        if (z) {
            return;
        }
        for (p pVar : this.t) {
            pVar.N();
        }
        if (this.F > 0) {
            ((h.a) zi.e(this.r)).b(this);
        }
    }

    @Override
    public void f(a aVar, long j, long j2) {
        ja9 ja9Var;
        if (this.A == C.TIME_UNSET && (ja9Var = this.z) != null) {
            boolean zIsSeekable = ja9Var.isSeekable();
            long jA = A(true);
            long j3 = jA == Long.MIN_VALUE ? 0L : jA + 10000;
            this.A = j3;
            this.h.h(j3, zIsSeekable, this.B);
        }
        ox9 ox9Var = aVar.c;
        in5 in5Var = new in5(aVar.a, aVar.k, ox9Var.d(), ox9Var.e(), j, j2, ox9Var.c());
        this.e.onLoadTaskConcluded(aVar.a);
        this.f.q(in5Var, 1, -1, null, 0, null, aVar.j, this.A);
        this.L = true;
        ((h.a) zi.e(this.r)).b(this);
    }

    @Override
    public Loader.c h(a aVar, long j, long j2, IOException iOException, int i) {
        Loader.c cVarG;
        ox9 ox9Var = aVar.c;
        in5 in5Var = new in5(aVar.a, aVar.k, ox9Var.d(), ox9Var.e(), j, j2, ox9Var.c());
        long jA = this.e.a(new com.google.android.exoplayer2.upstream.f.a(in5Var, new ih6(1, -1, null, 0, null, blb.P0(aVar.j), blb.P0(this.A)), iOException, i));
        if (jA == C.TIME_UNSET) {
            cVarG = Loader.g;
        } else {
            int iZ = z();
            cVarG = x(aVar, iZ) ? Loader.g(iZ > this.K, jA) : Loader.f;
        }
        boolean zC = cVarG.c();
        this.f.s(in5Var, 1, -1, null, 0, null, aVar.j, this.A, iOException, !zC);
        if (!zC) {
            this.e.onLoadTaskConcluded(aVar.a);
        }
        return cVarG;
    }

    public final fva Q(d dVar) {
        int length = this.t.length;
        for (int i = 0; i < length; i++) {
            if (dVar.equals(this.u[i])) {
                return this.t[i];
            }
        }
        p pVarK = p.k(this.i, this.d, this.g);
        pVarK.T(this);
        int i2 = length + 1;
        d[] dVarArr = (d[]) Arrays.copyOf(this.u, i2);
        dVarArr[length] = dVar;
        this.u = (d[]) blb.k(dVarArr);
        p[] pVarArr = (p[]) Arrays.copyOf(this.t, i2);
        pVarArr[length] = pVarK;
        this.t = (p[]) blb.k(pVarArr);
        return pVarK;
    }

    public int R(int i, o44 o44Var, DecoderInputBuffer decoderInputBuffer, int i2) {
        if (X()) {
            return -3;
        }
        I(i);
        int iK = this.t[i].K(o44Var, decoderInputBuffer, i2, this.L);
        if (iK == -3) {
            J(i);
        }
        return iK;
    }

    public void S() {
        if (this.w) {
            for (p pVar : this.t) {
                pVar.J();
            }
        }
        this.l.m(this);
        this.q.removeCallbacksAndMessages(null);
        this.r = null;
        this.M = true;
    }

    public final boolean T(boolean[] zArr, long j) {
        int length = this.t.length;
        for (int i = 0; i < length; i++) {
            if (!this.t[i].Q(j, false) && (zArr[i] || !this.x)) {
                return false;
            }
        }
        return true;
    }

    public final void G(ja9 ja9Var) {
        this.z = this.s == null ? ja9Var : new ja9.b(C.TIME_UNSET);
        this.A = ja9Var.getDurationUs();
        boolean z = !this.G && ja9Var.getDurationUs() == C.TIME_UNSET;
        this.B = z;
        this.C = z ? 7 : 1;
        this.h.h(this.A, ja9Var.isSeekable(), this.B);
        if (this.w) {
            return;
        }
        H();
    }

    public int V(int i, long j) {
        if (X()) {
            return 0;
        }
        I(i);
        p pVar = this.t[i];
        int iY = pVar.y(j, this.L);
        pVar.U(iY);
        if (iY == 0) {
            J(i);
        }
        return iY;
    }

    public final void W() {
        a aVar = new a(this.b, this.c, this.m, this, this.n);
        if (this.w) {
            zi.g(C());
            long j = this.A;
            if (j != C.TIME_UNSET && this.I > j) {
                this.L = true;
                this.I = C.TIME_UNSET;
                return;
            }
            aVar.h(((ja9) zi.e(this.z)).getSeekPoints(this.I).a.b, this.I);
            for (p pVar : this.t) {
                pVar.R(this.I);
            }
            this.I = C.TIME_UNSET;
        }
        this.K = z();
        this.f.u(new in5(aVar.a, aVar.k, this.l.n(aVar, this, this.e.getMinimumLoadableRetryCount(this.C))), 1, -1, null, 0, null, aVar.j, this.A);
    }

    public final boolean X() {
        return this.E || C();
    }

    @Override
    public long a(qi3[] qi3VarArr, boolean[] zArr, h19[] h19VarArr, boolean[] zArr2, long j) {
        qi3 qi3Var;
        w();
        e eVar = this.y;
        eva evaVar = eVar.a;
        boolean[] zArr3 = eVar.c;
        int i = this.F;
        int i2 = 0;
        for (int i3 = 0; i3 < qi3VarArr.length; i3++) {
            h19 h19Var = h19VarArr[i3];
            if (h19Var != null && (qi3VarArr[i3] == null || !zArr[i3])) {
                int i4 = ((c) h19Var).a;
                zi.g(zArr3[i4]);
                this.F--;
                zArr3[i4] = false;
                h19VarArr[i3] = null;
            }
        }
        boolean z = !this.D ? j == 0 : i != 0;
        for (int i5 = 0; i5 < qi3VarArr.length; i5++) {
            if (h19VarArr[i5] == null && (qi3Var = qi3VarArr[i5]) != null) {
                zi.g(qi3Var.length() == 1);
                zi.g(qi3Var.getIndexInTrackGroup(0) == 0);
                int iC = evaVar.c(qi3Var.getTrackGroup());
                zi.g(!zArr3[iC]);
                this.F++;
                zArr3[iC] = true;
                h19VarArr[i5] = new c(iC);
                zArr2[i5] = true;
                if (!z) {
                    p pVar = this.t[iC];
                    z = (pVar.Q(j, true) || pVar.w() == 0) ? false : true;
                }
            }
        }
        if (this.F == 0) {
            this.J = false;
            this.E = false;
            if (this.l.i()) {
                p[] pVarArr = this.t;
                int length = pVarArr.length;
                while (i2 < length) {
                    pVarArr[i2].p();
                    i2++;
                }
                this.l.e();
            } else {
                p[] pVarArr2 = this.t;
                int length2 = pVarArr2.length;
                while (i2 < length2) {
                    pVarArr2[i2].N();
                    i2++;
                }
            }
        } else if (z) {
            j = seekToUs(j);
            while (i2 < h19VarArr.length) {
                if (h19VarArr[i2] != null) {
                    zArr2[i2] = true;
                }
                i2++;
            }
        }
        this.D = true;
        return j;
    }

    @Override
    public void b(com.google.android.exoplayer2.k kVar) {
        this.q.post(this.o);
    }

    @Override
    public long c(long j, ka9 ka9Var) {
        w();
        if (!this.z.isSeekable()) {
            return 0L;
        }
        ja9.a seekPoints = this.z.getSeekPoints(j);
        return ka9Var.a(j, seekPoints.a.a, seekPoints.b.a);
    }

    @Override
    public boolean continueLoading(long j) {
        if (this.L || this.l.h() || this.J) {
            return false;
        }
        if (this.w && this.F == 0) {
            return false;
        }
        boolean zF = this.n.f();
        if (this.l.i()) {
            return zF;
        }
        W();
        return true;
    }

    @Override
    public void d(final ja9 ja9Var) {
        this.q.post(new Runnable() {
            @Override
            public final void run() {
                this.b.G(ja9Var);
            }
        });
    }

    @Override
    public void discardBuffer(long j, boolean z) {
        w();
        if (C()) {
            return;
        }
        boolean[] zArr = this.y.c;
        int length = this.t.length;
        for (int i = 0; i < length; i++) {
            this.t[i].o(j, z, zArr[i]);
        }
    }

    @Override
    public void endTracks() {
        this.v = true;
        this.q.post(this.o);
    }

    @Override
    public void g(h.a aVar, long j) {
        this.r = aVar;
        this.n.f();
        W();
    }

    @Override
    public long getBufferedPositionUs() {
        long jA;
        w();
        if (this.L || this.F == 0) {
            return Long.MIN_VALUE;
        }
        if (C()) {
            return this.I;
        }
        if (this.x) {
            int length = this.t.length;
            jA = Long.MAX_VALUE;
            for (int i = 0; i < length; i++) {
                e eVar = this.y;
                if (eVar.b[i] && eVar.c[i] && !this.t[i].C()) {
                    jA = Math.min(jA, this.t[i].t());
                }
            }
        } else {
            jA = Long.MAX_VALUE;
        }
        if (jA == Long.MAX_VALUE) {
            jA = A(false);
        }
        return jA == Long.MIN_VALUE ? this.H : jA;
    }

    @Override
    public long getNextLoadPositionUs() {
        return getBufferedPositionUs();
    }

    @Override
    public eva getTrackGroups() {
        w();
        return this.y.a;
    }

    @Override
    public boolean isLoading() {
        return this.l.i() && this.n.e();
    }

    @Override
    public void maybeThrowPrepareError() throws IOException {
        K();
        if (this.L && !this.w) {
            throw ParserException.createForMalformedContainer("Loading finished before preparation is complete.", null);
        }
    }

    @Override
    public void onLoaderReleased() {
        for (p pVar : this.t) {
            pVar.L();
        }
        this.m.release();
    }

    @Override
    public long readDiscontinuity() {
        if (!this.E) {
            return C.TIME_UNSET;
        }
        if (!this.L && z() <= this.K) {
            return C.TIME_UNSET;
        }
        this.E = false;
        return this.H;
    }

    @Override
    public void reevaluateBuffer(long j) {
    }

    @Override
    public long seekToUs(long j) {
        w();
        boolean[] zArr = this.y.b;
        if (!this.z.isSeekable()) {
            j = 0;
        }
        int i = 0;
        this.E = false;
        this.H = j;
        if (C()) {
            this.I = j;
            return j;
        }
        if (this.C != 7 && T(zArr, j)) {
            return j;
        }
        this.J = false;
        this.I = j;
        this.L = false;
        if (this.l.i()) {
            p[] pVarArr = this.t;
            int length = pVarArr.length;
            while (i < length) {
                pVarArr[i].p();
                i++;
            }
            this.l.e();
        } else {
            this.l.f();
            p[] pVarArr2 = this.t;
            int length2 = pVarArr2.length;
            while (i < length2) {
                pVarArr2[i].N();
                i++;
            }
        }
        return j;
    }

    @Override
    public fva track(int i, int i2) {
        return Q(new d(i, false));
    }

    public final void w() {
        zi.g(this.w);
        zi.e(this.y);
        zi.e(this.z);
    }

    public final boolean x(a aVar, int i) {
        ja9 ja9Var;
        if (this.G || !((ja9Var = this.z) == null || ja9Var.getDurationUs() == C.TIME_UNSET)) {
            this.K = i;
            return true;
        }
        if (this.w && !X()) {
            this.J = true;
            return false;
        }
        this.E = this.w;
        this.H = 0L;
        this.K = 0;
        for (p pVar : this.t) {
            pVar.N();
        }
        aVar.h(0L, 0L);
        return true;
    }

    public final int z() {
        int iA = 0;
        for (p pVar : this.t) {
            iA += pVar.A();
        }
        return iA;
    }
}
