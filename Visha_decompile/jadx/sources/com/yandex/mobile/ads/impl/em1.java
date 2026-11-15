package com.yandex.mobile.ads.impl;

import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

final class em1 implements pw0, b80, hs0.a<a>, hs0.e, kt1.c {
    private static final Map<String, String> N;
    private static final jc0 O;
    private boolean B;
    private boolean D;
    private boolean E;
    private int F;
    private boolean G;
    private long H;
    private boolean J;
    private int K;
    private boolean L;
    private boolean M;
    private final Uri b;
    private final tv c;
    private final i40 d;
    private final ds0 e;
    private final ww0.a f;
    private final h40.a g;
    private final b h;
    private final cd i;

    @Nullable
    private final String j;
    private final long k;
    private final dm1 m;

    @Nullable
    private pw0.a r;

    @Nullable
    private qi0 s;
    private boolean v;
    private boolean w;
    private boolean x;
    private e y;
    private ex1 z;
    private final hs0 l = new hs0("ProgressiveMediaPeriod");
    private final ir n = new ir();
    private final Runnable o = new Runnable() {
        @Override
        public final void run() {
            this.b.f();
        }
    };
    private final Runnable p = new Runnable() {
        @Override
        public final void run() {
            this.b.d();
        }
    };
    private final Handler q = f92.a();
    private d[] u = new d[0];
    private kt1[] t = new kt1[0];
    private long I = C.TIME_UNSET;
    private long A = C.TIME_UNSET;
    private int C = 1;

    public final class a implements hs0.d, oi0.a {
        private final Uri a;
        private final s22 b;
        private final dm1 c;
        private final b80 d;
        private final ir e;
        private volatile boolean g;
        private long i;
        private xv j;

        @Nullable
        private kt1 k;
        private boolean l;
        private final pj1 f = new pj1();
        private boolean h = true;

        public a(Uri uri, tv tvVar, dm1 dm1Var, b80 b80Var, ir irVar) {
            this.a = uri;
            this.b = new s22(tvVar);
            this.c = dm1Var;
            this.d = b80Var;
            this.e = irVar;
            es0.a();
            this.j = a(0L);
        }

        @Override
        public final void a() throws IOException {
            tv oi0Var;
            int i;
            int iA = 0;
            while (iA == 0 && !this.g) {
                try {
                    long j = this.f.a;
                    xv xvVarA = a(j);
                    this.j = xvVarA;
                    long jA = this.b.a(xvVarA);
                    if (jA != -1) {
                        jA += j;
                        em1.this.g();
                    }
                    long j2 = jA;
                    em1.this.s = qi0.a(this.b.getResponseHeaders());
                    s22 s22Var = this.b;
                    qi0 qi0Var = em1.this.s;
                    if (qi0Var == null || (i = qi0Var.g) == -1) {
                        oi0Var = s22Var;
                    } else {
                        oi0Var = new oi0(s22Var, i, this);
                        em1 em1Var = em1.this;
                        em1Var.getClass();
                        kt1 kt1VarA = em1Var.a(new d(true, 0));
                        this.k = kt1VarA;
                        kt1VarA.a(em1.O);
                    }
                    long jB = j;
                    ((nm) this.c).a(oi0Var, this.a, this.b.getResponseHeaders(), j, j2, this.d);
                    if (em1.this.s != null) {
                        ((nm) this.c).a();
                    }
                    if (this.h) {
                        ((nm) this.c).a(jB, this.i);
                        this.h = false;
                    }
                    while (true) {
                        long j3 = jB;
                        while (true) {
                            if (iA != 0 || this.g) {
                                break;
                            }
                            try {
                                this.e.a();
                                iA = ((nm) this.c).a(this.f);
                                jB = ((nm) this.c).b();
                                if (jB > em1.this.k + j3) {
                                    this.e.c();
                                    em1 em1Var2 = em1.this;
                                    em1Var2.q.post(em1Var2.p);
                                }
                            } catch (InterruptedException unused) {
                                throw new InterruptedIOException();
                            }
                        }
                    }
                    if (iA == 1) {
                        iA = 0;
                    } else if (((nm) this.c).b() != -1) {
                        this.f.a = ((nm) this.c).b();
                    }
                    wv.a(this.b);
                } catch (Throwable th) {
                    if (iA != 1 && ((nm) this.c).b() != -1) {
                        this.f.a = ((nm) this.c).b();
                    }
                    wv.a(this.b);
                    throw th;
                }
            }
        }

        @Override
        public final void b() {
            this.g = true;
        }

        public final void a(ag1 ag1Var) {
            long jMax;
            if (!this.l) {
                jMax = this.i;
            } else {
                jMax = Math.max(em1.this.a(true), this.i);
            }
            long j = jMax;
            int iA = ag1Var.a();
            kt1 kt1Var = this.k;
            kt1Var.getClass();
            kt1Var.b(iA, ag1Var);
            kt1Var.a(j, 1, iA, 0, (a62.a) null);
            this.l = true;
        }

        private xv a(long j) {
            return new xv.a().a(this.a).b(j).a(em1.this.j).a(6).a(em1.N).a();
        }
    }

    public interface b {
    }

    public final class c implements lt1 {
        private final int a;

        public c(int i) {
            this.a = i;
        }

        @Override
        public final boolean d() {
            em1 em1Var = em1.this;
            return !em1Var.E && em1Var.I == C.TIME_UNSET && em1Var.t[this.a].a(em1Var.L);
        }

        @Override
        public final void a() throws IOException {
            em1 em1Var = em1.this;
            em1Var.t[this.a].g();
            em1Var.l.a(em1Var.e.a(em1Var.C));
        }

        @Override
        public final int a(kc0 kc0Var, ry ryVar, int i) {
            em1 em1Var = em1.this;
            int i2 = this.a;
            if (em1Var.E || em1Var.I != C.TIME_UNSET) {
                return -3;
            }
            em1Var.c();
            e eVar = em1Var.y;
            boolean[] zArr = eVar.d;
            if (!zArr[i2]) {
                jc0 jc0VarA = eVar.a.a(i2).a(0);
                em1Var.f.a(w01.c(jc0VarA.m), jc0VarA, em1Var.H);
                zArr[i2] = true;
            }
            int iA = em1Var.t[i2].a(kc0Var, ryVar, i, em1Var.L);
            if (iA == -3) {
                em1Var.a(i2);
            }
            return iA;
        }

        @Override
        public final int a(long j) {
            em1 em1Var = em1.this;
            int i = this.a;
            int iA = 0;
            if (!em1Var.E && em1Var.I == C.TIME_UNSET) {
                em1Var.c();
                e eVar = em1Var.y;
                boolean[] zArr = eVar.d;
                if (!zArr[i]) {
                    jc0 jc0VarA = eVar.a.a(i).a(0);
                    em1Var.f.a(w01.c(jc0VarA.m), jc0VarA, em1Var.H);
                    zArr[i] = true;
                }
                kt1 kt1Var = em1Var.t[i];
                iA = kt1Var.a(j, em1Var.L);
                kt1Var.d(iA);
                if (iA == 0) {
                    em1Var.a(i);
                }
            }
            return iA;
        }
    }

    public static final class d {
        public final int a;
        public final boolean b;

        public d(boolean z, int i) {
            this.a = i;
            this.b = z;
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return this.a == dVar.a && this.b == dVar.b;
        }

        public final int hashCode() {
            return (this.a * 31) + (this.b ? 1 : 0);
        }
    }

    public static final class e {
        public final z52 a;
        public final boolean[] b;
        public final boolean[] c;
        public final boolean[] d;

        public e(z52 z52Var, boolean[] zArr) {
            this.a = z52Var;
            this.b = zArr;
            int i = z52Var.b;
            this.c = new boolean[i];
            this.d = new boolean[i];
        }
    }

    static {
        HashMap map = new HashMap();
        map.put("Icy-MetaData", "1");
        N = Collections.unmodifiableMap(map);
        O = new jc0.a().b("icy").e(MimeTypes.APPLICATION_ICY).a();
    }

    public em1(Uri uri, tv tvVar, dm1 dm1Var, i40 i40Var, h40.a aVar, ds0 ds0Var, ww0.a aVar2, b bVar, cd cdVar, @Nullable String str, int i) {
        this.b = uri;
        this.c = tvVar;
        this.d = i40Var;
        this.g = aVar;
        this.e = ds0Var;
        this.f = aVar2;
        this.h = bVar;
        this.i = cdVar;
        this.j = str;
        this.k = i;
        this.m = dm1Var;
    }

    @Override
    public final boolean continueLoading(long j) {
        if (this.L || this.l.c() || this.J) {
            return false;
        }
        if (this.w && this.F == 0) {
            return false;
        }
        boolean zE = this.n.e();
        if (this.l.d()) {
            return zE;
        }
        j();
        return true;
    }

    @Override
    public final void discardBuffer(long j, boolean z) {
        c();
        if (this.I != C.TIME_UNSET) {
            return;
        }
        boolean[] zArr = this.y.c;
        int length = this.t.length;
        for (int i = 0; i < length; i++) {
            this.t[i].a(j, z, zArr[i]);
        }
    }

    @Override
    public final long getBufferedPositionUs() {
        long jA;
        c();
        if (this.L || this.F == 0) {
            return Long.MIN_VALUE;
        }
        long j = this.I;
        if (j != C.TIME_UNSET) {
            return j;
        }
        if (this.x) {
            int length = this.t.length;
            jA = Long.MAX_VALUE;
            for (int i = 0; i < length; i++) {
                e eVar = this.y;
                if (eVar.b[i] && eVar.c[i] && !this.t[i].f()) {
                    jA = Math.min(jA, this.t[i].b());
                }
            }
        } else {
            jA = Long.MAX_VALUE;
        }
        if (jA == Long.MAX_VALUE) {
            jA = a(false);
        }
        return jA == Long.MIN_VALUE ? this.H : jA;
    }

    @Override
    public final long getNextLoadPositionUs() {
        return getBufferedPositionUs();
    }

    @Override
    public final z52 getTrackGroups() {
        c();
        return this.y.a;
    }

    @Override
    public final boolean isLoading() {
        return this.l.d() && this.n.d();
    }

    @Override
    public final void maybeThrowPrepareError() throws IOException {
        this.l.a(this.e.a(this.C));
        if (this.L && !this.w) {
            throw eg1.a("Loading finished before preparation is complete.", (Exception) null);
        }
    }

    @Override
    public final long readDiscontinuity() {
        if (!this.E) {
            return C.TIME_UNSET;
        }
        if (!this.L) {
            int iE = 0;
            for (kt1 kt1Var : this.t) {
                iE += kt1Var.e();
            }
            if (iE <= this.K) {
                return C.TIME_UNSET;
            }
        }
        this.E = false;
        return this.H;
    }

    @Override
    public final void reevaluateBuffer(long j) {
    }

    @Override
    public final long seekToUs(long j) {
        c();
        boolean[] zArr = this.y.b;
        if (!this.z.b()) {
            j = 0;
        }
        this.E = false;
        this.H = j;
        if (this.I != C.TIME_UNSET) {
            this.I = j;
            return j;
        }
        if (this.C != 7) {
            int length = this.t.length;
            for (int i = 0; i < length; i++) {
                if (this.t[i].b(j, false) || (!zArr[i] && this.x)) {
                }
            }
            return j;
        }
        this.J = false;
        this.I = j;
        this.L = false;
        if (this.l.d()) {
            for (kt1 kt1Var : this.t) {
                kt1Var.a();
            }
            this.l.a();
        } else {
            this.l.b();
            for (kt1 kt1Var2 : this.t) {
                kt1Var2.b(false);
            }
        }
        return j;
    }

    public void b(ex1 ex1Var) {
        this.z = this.s == null ? ex1Var : new ex1.b(C.TIME_UNSET, 0L);
        this.A = ex1Var.c();
        boolean z = !this.G && ex1Var.c() == C.TIME_UNSET;
        this.B = z;
        this.C = z ? 7 : 1;
        ((gm1) this.h).a(this.A, ex1Var.b(), this.B);
        if (this.w) {
            return;
        }
        f();
    }

    public void c() {
        if (!this.w) {
            throw new IllegalStateException();
        }
        this.y.getClass();
        this.z.getClass();
    }

    public void d() {
        if (this.M) {
            return;
        }
        pw0.a aVar = this.r;
        aVar.getClass();
        aVar.a(this);
    }

    public void e() {
        this.G = true;
    }

    public void f() {
        if (this.M || this.w || !this.v || this.z == null) {
            return;
        }
        for (kt1 kt1Var : this.t) {
            if (kt1Var.d() == null) {
                return;
            }
        }
        this.n.c();
        int length = this.t.length;
        y52[] y52VarArr = new y52[length];
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            jc0 jc0VarD = this.t[i].d();
            jc0VarD.getClass();
            String str = jc0VarD.m;
            boolean zD = w01.d(str);
            boolean z = zD || w01.f(str);
            zArr[i] = z;
            this.x = z | this.x;
            qi0 qi0Var = this.s;
            if (qi0Var != null) {
                if (zD || this.u[i].b) {
                    k01 k01Var = jc0VarD.k;
                    jc0VarD = jc0VarD.a().a(k01Var == null ? new k01(qi0Var) : k01Var.a(qi0Var)).a();
                }
                if (zD && jc0VarD.g == -1 && jc0VarD.h == -1 && qi0Var.b != -1) {
                    jc0VarD = jc0VarD.a().b(qi0Var.b).a();
                }
            }
            y52VarArr[i] = new y52(Integer.toString(i), jc0VarD.a(this.d.a(jc0VarD)));
        }
        this.y = new e(new z52(y52VarArr), zArr);
        this.w = true;
        pw0.a aVar = this.r;
        aVar.getClass();
        aVar.a((pw0) this);
    }

    public void g() {
        this.q.post(new Runnable() {
            @Override
            public final void run() {
                this.b.e();
            }
        });
    }

    private void j() {
        a aVar = new a(this.b, this.c, this.m, this, this.n);
        if (this.w) {
            long j = this.I;
            if (j == C.TIME_UNSET) {
                throw new IllegalStateException();
            }
            long j2 = this.A;
            if (j2 != C.TIME_UNSET && j > j2) {
                this.L = true;
                this.I = C.TIME_UNSET;
                return;
            }
            ex1 ex1Var = this.z;
            ex1Var.getClass();
            long j3 = ex1Var.b(this.I).a.b;
            long j4 = this.I;
            aVar.f.a = j3;
            aVar.i = j4;
            aVar.h = true;
            aVar.l = false;
            for (kt1 kt1Var : this.t) {
                kt1Var.a(this.I);
            }
            this.I = C.TIME_UNSET;
        }
        int iE = 0;
        for (kt1 kt1Var2 : this.t) {
            iE += kt1Var2.e();
        }
        this.K = iE;
        this.l.a(aVar, this, this.e.a(this.C));
        xv xvVar = aVar.j;
        ww0.a aVar2 = this.f;
        Uri uri = xvVar.a;
        Collections.emptyMap();
        aVar2.b(new es0(), (jc0) null, aVar.i, this.A);
    }

    @Override
    public final void a() {
        this.v = true;
        this.q.post(this.o);
    }

    public final void h() {
        this.q.post(this.o);
    }

    public final void i() {
        if (this.w) {
            for (kt1 kt1Var : this.t) {
                kt1Var.h();
            }
        }
        this.l.a(this);
        this.q.removeCallbacksAndMessages(null);
        this.r = null;
        this.M = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0077, code lost:
    
        if (java.lang.Math.abs(r7 - r18) <= java.lang.Math.abs(r9 - r18)) goto L33;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long a(long j, fx1 fx1Var) {
        c();
        if (!this.z.b()) {
            return 0L;
        }
        ex1.a aVarB = this.z.b(j);
        long j2 = aVarB.a.a;
        long j3 = aVarB.b.a;
        long j4 = fx1Var.a;
        if (j4 == 0 && fx1Var.b == 0) {
            return j;
        }
        int i = f92.a;
        long j5 = j - j4;
        if (((j4 ^ j) & (j ^ j5)) < 0) {
            j5 = Long.MIN_VALUE;
        }
        long j6 = fx1Var.b;
        long j7 = j + j6;
        if (((j6 ^ j7) & (j ^ j7)) < 0) {
            j7 = Long.MAX_VALUE;
        }
        boolean z = false;
        boolean z2 = j5 <= j2 && j2 <= j7;
        if (j5 <= j3 && j3 <= j7) {
            z = true;
        }
        if (!z2 || !z) {
            if (!z2) {
                if (!z) {
                    return j5;
                }
                return j3;
            }
            return j2;
        }
    }

    @Override
    public final void b() {
        for (kt1 kt1Var : this.t) {
            kt1Var.i();
        }
        ((nm) this.m).c();
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0015  */
    public long a(boolean z) {
        long jMax = Long.MIN_VALUE;
        for (int i = 0; i < this.t.length; i++) {
            if (!z) {
                e eVar = this.y;
                eVar.getClass();
                if (eVar.c[i]) {
                    jMax = Math.max(jMax, this.t[i].b());
                }
            } else {
                jMax = Math.max(jMax, this.t[i].b());
            }
        }
        return jMax;
    }

    public void a(int i) {
        c();
        boolean[] zArr = this.y.b;
        if (this.J && zArr[i] && !this.t[i].a(false)) {
            this.I = 0L;
            this.J = false;
            this.E = true;
            this.H = 0L;
            this.K = 0;
            for (kt1 kt1Var : this.t) {
                kt1Var.b(false);
            }
            pw0.a aVar = this.r;
            aVar.getClass();
            aVar.a(this);
        }
    }

    @Override
    public final void a(hs0.d dVar, long j, long j2, boolean z) {
        a aVar = (a) dVar;
        aVar.b.getClass();
        es0 es0Var = new es0();
        this.e.getClass();
        this.f.a(es0Var, aVar.i, this.A);
        if (z) {
            return;
        }
        for (kt1 kt1Var : this.t) {
            kt1Var.b(false);
        }
        if (this.F > 0) {
            pw0.a aVar2 = this.r;
            aVar2.getClass();
            aVar2.a(this);
        }
    }

    @Override
    public final void a(hs0.d dVar, long j, long j2) {
        ex1 ex1Var;
        a aVar = (a) dVar;
        if (this.A == C.TIME_UNSET && (ex1Var = this.z) != null) {
            boolean zB = ex1Var.b();
            long jA = a(true);
            long j3 = jA == Long.MIN_VALUE ? 0L : jA + 10000;
            this.A = j3;
            ((gm1) this.h).a(j3, zB, this.B);
        }
        aVar.b.getClass();
        es0 es0Var = new es0();
        this.e.getClass();
        this.f.a(es0Var, (jc0) null, aVar.i, this.A);
        this.L = true;
        pw0.a aVar2 = this.r;
        aVar2.getClass();
        aVar2.a(this);
    }

    @Override
    public final hs0.b a(hs0.d dVar, long j, long j2, IOException iOException, int i) {
        hs0.b bVarA;
        ex1 ex1Var;
        a aVar = (a) dVar;
        aVar.b.getClass();
        es0 es0Var = new es0();
        f92.b(aVar.i);
        f92.b(this.A);
        long jA = this.e.a(new ds0.a(iOException, i));
        if (jA == C.TIME_UNSET) {
            bVarA = hs0.e;
        } else {
            int iE = 0;
            for (kt1 kt1Var : this.t) {
                iE += kt1Var.e();
            }
            boolean z = iE > this.K;
            if (!this.G && ((ex1Var = this.z) == null || ex1Var.c() == C.TIME_UNSET)) {
                boolean z2 = this.w;
                if (z2 && !this.E && this.I == C.TIME_UNSET) {
                    this.J = true;
                    bVarA = hs0.d;
                } else {
                    this.E = z2;
                    this.H = 0L;
                    this.K = 0;
                    for (kt1 kt1Var2 : this.t) {
                        kt1Var2.b(false);
                    }
                    aVar.f.a = 0L;
                    aVar.i = 0L;
                    aVar.h = true;
                    aVar.l = false;
                }
            } else {
                this.K = iE;
            }
            bVarA = hs0.a(jA, z);
        }
        boolean zA = bVarA.a();
        this.f.a(es0Var, 1, null, aVar.i, this.A, iOException, !zA);
        if (!zA) {
            this.e.getClass();
        }
        return bVarA;
    }

    @Override
    public final void a(pw0.a aVar, long j) {
        this.r = aVar;
        this.n.e();
        j();
    }

    public kt1 a(d dVar) {
        int length = this.t.length;
        for (int i = 0; i < length; i++) {
            if (dVar.equals(this.u[i])) {
                return this.t[i];
            }
        }
        cd cdVar = this.i;
        i40 i40Var = this.d;
        h40.a aVar = this.g;
        i40Var.getClass();
        aVar.getClass();
        kt1 kt1Var = new kt1(cdVar, i40Var, aVar);
        kt1Var.a(this);
        int i2 = length + 1;
        d[] dVarArr = (d[]) Arrays.copyOf(this.u, i2);
        dVarArr[length] = dVar;
        this.u = dVarArr;
        kt1[] kt1VarArr = (kt1[]) Arrays.copyOf(this.t, i2);
        kt1VarArr[length] = kt1Var;
        this.t = kt1VarArr;
        return kt1Var;
    }

    @Override
    public final void a(final ex1 ex1Var) {
        this.q.post(new Runnable() {
            @Override
            public final void run() {
                this.b.b(ex1Var);
            }
        });
    }

    @Override
    public final long a(h70[] h70VarArr, boolean[] zArr, lt1[] lt1VarArr, boolean[] zArr2, long j) {
        h70 h70Var;
        c();
        e eVar = this.y;
        z52 z52Var = eVar.a;
        boolean[] zArr3 = eVar.c;
        int i = this.F;
        int i2 = 0;
        for (int i3 = 0; i3 < h70VarArr.length; i3++) {
            lt1 lt1Var = lt1VarArr[i3];
            if (lt1Var != null && (h70VarArr[i3] == null || !zArr[i3])) {
                int i4 = ((c) lt1Var).a;
                if (zArr3[i4]) {
                    this.F--;
                    zArr3[i4] = false;
                    lt1VarArr[i3] = null;
                } else {
                    throw new IllegalStateException();
                }
            }
        }
        boolean z = !this.D ? j == 0 : i != 0;
        for (int i5 = 0; i5 < h70VarArr.length; i5++) {
            if (lt1VarArr[i5] == null && (h70Var = h70VarArr[i5]) != null) {
                if (h70Var.b() == 1) {
                    if (h70Var.b(0) == 0) {
                        int iA = z52Var.a(h70Var.a());
                        if (!zArr3[iA]) {
                            this.F++;
                            zArr3[iA] = true;
                            lt1VarArr[i5] = new c(iA);
                            zArr2[i5] = true;
                            if (!z) {
                                kt1 kt1Var = this.t[iA];
                                z = (kt1Var.b(j, true) || kt1Var.c() == 0) ? false : true;
                            }
                        } else {
                            throw new IllegalStateException();
                        }
                    } else {
                        throw new IllegalStateException();
                    }
                } else {
                    throw new IllegalStateException();
                }
            }
        }
        if (this.F == 0) {
            this.J = false;
            this.E = false;
            if (this.l.d()) {
                kt1[] kt1VarArr = this.t;
                int length = kt1VarArr.length;
                while (i2 < length) {
                    kt1VarArr[i2].a();
                    i2++;
                }
                this.l.a();
            } else {
                for (kt1 kt1Var2 : this.t) {
                    kt1Var2.b(false);
                }
            }
        } else if (z) {
            j = seekToUs(j);
            while (i2 < lt1VarArr.length) {
                if (lt1VarArr[i2] != null) {
                    zArr2[i2] = true;
                }
                i2++;
            }
        }
        this.D = true;
        return j;
    }

    @Override
    public final a62 a(int i, int i2) {
        return a(new d(false, i));
    }
}
