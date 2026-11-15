package androidx.media3.common;

import android.net.Uri;
import android.util.Pair;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Objects;

public abstract class e0 {

    public static final e0 f9613a = new a();

    private static final String f9614b = a1.C0(0);

    private static final String f9615c = a1.C0(1);

    private static final String f9616d = a1.C0(2);

    class a extends e0 {
        a() {
        }

        @Override
        public int b(Object obj) {
            return -1;
        }

        @Override
        public b g(int i10, b bVar, boolean z10) {
            throw new IndexOutOfBoundsException();
        }

        @Override
        public int i() {
            return 0;
        }

        @Override
        public Object m(int i10) {
            throw new IndexOutOfBoundsException();
        }

        @Override
        public c o(int i10, c cVar, long j10) {
            throw new IndexOutOfBoundsException();
        }

        @Override
        public int p() {
            return 0;
        }
    }

    public static final class b {

        private static final String f9617h = a1.C0(0);

        private static final String f9618i = a1.C0(1);

        private static final String f9619j = a1.C0(2);

        private static final String f9620k = a1.C0(3);

        private static final String f9621l = a1.C0(4);

        public Object f9622a;

        public Object f9623b;

        public int f9624c;

        public long f9625d;

        public long f9626e;

        public boolean f9627f;

        public androidx.media3.common.b f9628g = androidx.media3.common.b.f9561g;

        public int a(int i10) {
            return this.f9628g.a(i10).f9585b;
        }

        public long b(int i10, int i11) {
            androidx.media3.common.b.a aVarA = this.f9628g.a(i10);
            return aVarA.f9585b != -1 ? aVarA.f9590g[i11] : C.TIME_UNSET;
        }

        public int c() {
            return this.f9628g.f9568b;
        }

        public int d(long j10) {
            return this.f9628g.b(j10, this.f9625d);
        }

        public int e(long j10) {
            return this.f9628g.c(j10, this.f9625d);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !b.class.equals(obj.getClass())) {
                return false;
            }
            b bVar = (b) obj;
            return Objects.equals(this.f9622a, bVar.f9622a) && Objects.equals(this.f9623b, bVar.f9623b) && this.f9624c == bVar.f9624c && this.f9625d == bVar.f9625d && this.f9626e == bVar.f9626e && this.f9627f == bVar.f9627f && Objects.equals(this.f9628g, bVar.f9628g);
        }

        public long f(int i10) {
            return this.f9628g.a(i10).f9584a;
        }

        public long g() {
            return this.f9628g.f9569c;
        }

        public int h(int i10, int i11) {
            androidx.media3.common.b.a aVarA = this.f9628g.a(i10);
            if (aVarA.f9585b != -1) {
                return aVarA.f9589f[i11];
            }
            return 0;
        }

        public int hashCode() {
            Object obj = this.f9622a;
            int iHashCode = (Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + (obj == null ? 0 : obj.hashCode())) * 31;
            Object obj2 = this.f9623b;
            int iHashCode2 = (((iHashCode + (obj2 != null ? obj2.hashCode() : 0)) * 31) + this.f9624c) * 31;
            long j10 = this.f9625d;
            int i10 = (iHashCode2 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
            long j11 = this.f9626e;
            return ((((i10 + ((int) (j11 ^ (j11 >>> 32)))) * 31) + (this.f9627f ? 1 : 0)) * 31) + this.f9628g.hashCode();
        }

        public long i(int i10) {
            return this.f9628g.a(i10).f9592i;
        }

        public long j() {
            return a1.y1(this.f9625d);
        }

        public long k() {
            return this.f9625d;
        }

        public int l(int i10) {
            return this.f9628g.a(i10).c();
        }

        public int m(int i10, int i11) {
            return this.f9628g.a(i10).d(i11);
        }

        public long n() {
            return a1.y1(this.f9626e);
        }

        public long o() {
            return this.f9626e;
        }

        public int p() {
            return this.f9628g.f9571e;
        }

        public boolean q(int i10) {
            return !this.f9628g.a(i10).e();
        }

        public boolean r(int i10) {
            return i10 == c() - 1 && this.f9628g.d(i10);
        }

        public boolean s(int i10) {
            return this.f9628g.a(i10).f9593j;
        }

        public b t(Object obj, Object obj2, int i10, long j10, long j11) {
            return u(obj, obj2, i10, j10, j11, androidx.media3.common.b.f9561g, false);
        }

        public b u(Object obj, Object obj2, int i10, long j10, long j11, androidx.media3.common.b bVar, boolean z10) {
            this.f9622a = obj;
            this.f9623b = obj2;
            this.f9624c = i10;
            this.f9625d = j10;
            this.f9626e = j11;
            this.f9628g = bVar;
            this.f9627f = z10;
            return this;
        }
    }

    public static final class c {

        public Object f9640b;

        public Object f9642d;

        public long f9643e;

        public long f9644f;

        public long f9645g;

        public boolean f9646h;

        public boolean f9647i;

        public t.g f9648j;

        public boolean f9649k;

        public long f9650l;

        public long f9651m;

        public int f9652n;

        public int f9653o;

        public long f9654p;

        public static final Object f9629q = new Object();

        private static final Object f9630r = new Object();

        private static final t f9631s = new t.c().d("androidx.media3.common.Timeline").i(Uri.EMPTY).a();

        private static final String f9632t = a1.C0(1);

        private static final String f9633u = a1.C0(2);

        private static final String f9634v = a1.C0(3);

        private static final String f9635w = a1.C0(4);

        private static final String f9636x = a1.C0(5);

        private static final String f9637y = a1.C0(6);

        private static final String f9638z = a1.C0(7);
        private static final String A = a1.C0(8);
        private static final String B = a1.C0(9);
        private static final String C = a1.C0(10);
        private static final String D = a1.C0(11);
        private static final String E = a1.C0(12);
        private static final String F = a1.C0(13);

        public Object f9639a = f9629q;

        public t f9641c = f9631s;

        public long a() {
            return a1.h0(this.f9645g);
        }

        public long b() {
            return a1.y1(this.f9650l);
        }

        public long c() {
            return this.f9650l;
        }

        public long d() {
            return a1.y1(this.f9651m);
        }

        public long e() {
            return this.f9654p;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !c.class.equals(obj.getClass())) {
                return false;
            }
            c cVar = (c) obj;
            return Objects.equals(this.f9639a, cVar.f9639a) && Objects.equals(this.f9641c, cVar.f9641c) && Objects.equals(this.f9642d, cVar.f9642d) && Objects.equals(this.f9648j, cVar.f9648j) && this.f9643e == cVar.f9643e && this.f9644f == cVar.f9644f && this.f9645g == cVar.f9645g && this.f9646h == cVar.f9646h && this.f9647i == cVar.f9647i && this.f9649k == cVar.f9649k && this.f9650l == cVar.f9650l && this.f9651m == cVar.f9651m && this.f9652n == cVar.f9652n && this.f9653o == cVar.f9653o && this.f9654p == cVar.f9654p;
        }

        public boolean f() {
            return this.f9648j != null;
        }

        public c g(Object obj, t tVar, Object obj2, long j10, long j11, long j12, boolean z10, boolean z11, t.g gVar, long j13, long j14, int i10, int i11, long j15) {
            t.h hVar;
            this.f9639a = obj;
            this.f9641c = tVar != null ? tVar : f9631s;
            this.f9640b = (tVar == null || (hVar = tVar.f9899b) == null) ? null : hVar.f9998h;
            this.f9642d = obj2;
            this.f9643e = j10;
            this.f9644f = j11;
            this.f9645g = j12;
            this.f9646h = z10;
            this.f9647i = z11;
            this.f9648j = gVar;
            this.f9650l = j13;
            this.f9651m = j14;
            this.f9652n = i10;
            this.f9653o = i11;
            this.f9654p = j15;
            this.f9649k = false;
            return this;
        }

        public int hashCode() {
            int iHashCode = (((Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + this.f9639a.hashCode()) * 31) + this.f9641c.hashCode()) * 31;
            Object obj = this.f9642d;
            int iHashCode2 = (iHashCode + (obj == null ? 0 : obj.hashCode())) * 31;
            t.g gVar = this.f9648j;
            int iHashCode3 = (iHashCode2 + (gVar != null ? gVar.hashCode() : 0)) * 31;
            long j10 = this.f9643e;
            int i10 = (iHashCode3 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
            long j11 = this.f9644f;
            int i11 = (i10 + ((int) (j11 ^ (j11 >>> 32)))) * 31;
            long j12 = this.f9645g;
            int i12 = (((((((i11 + ((int) (j12 ^ (j12 >>> 32)))) * 31) + (this.f9646h ? 1 : 0)) * 31) + (this.f9647i ? 1 : 0)) * 31) + (this.f9649k ? 1 : 0)) * 31;
            long j13 = this.f9650l;
            int i13 = (i12 + ((int) (j13 ^ (j13 >>> 32)))) * 31;
            long j14 = this.f9651m;
            int i14 = (((((i13 + ((int) (j14 ^ (j14 >>> 32)))) * 31) + this.f9652n) * 31) + this.f9653o) * 31;
            long j15 = this.f9654p;
            return i14 + ((int) (j15 ^ (j15 >>> 32)));
        }
    }

    protected e0() {
    }

    public int a(boolean z10) {
        return q() ? -1 : 0;
    }

    public abstract int b(Object obj);

    public int c(boolean z10) {
        if (q()) {
            return -1;
        }
        return p() - 1;
    }

    public final int d(int i10, b bVar, c cVar, int i11, boolean z10) {
        int i12 = f(i10, bVar).f9624c;
        if (n(i12, cVar).f9653o != i10) {
            return i10 + 1;
        }
        int iE = e(i12, i11, z10);
        if (iE == -1) {
            return -1;
        }
        return n(iE, cVar).f9652n;
    }

    public int e(int i10, int i11, boolean z10) {
        if (i11 == 0) {
            if (i10 == c(z10)) {
                return -1;
            }
            return i10 + 1;
        }
        if (i11 == 1) {
            return i10;
        }
        if (i11 == 2) {
            return i10 == c(z10) ? a(z10) : i10 + 1;
        }
        throw new IllegalStateException();
    }

    public boolean equals(Object obj) {
        int iC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e0)) {
            return false;
        }
        e0 e0Var = (e0) obj;
        if (e0Var.p() != p() || e0Var.i() != i()) {
            return false;
        }
        c cVar = new c();
        b bVar = new b();
        c cVar2 = new c();
        b bVar2 = new b();
        for (int i10 = 0; i10 < p(); i10++) {
            if (!n(i10, cVar).equals(e0Var.n(i10, cVar2))) {
                return false;
            }
        }
        for (int i11 = 0; i11 < i(); i11++) {
            if (!g(i11, bVar, true).equals(e0Var.g(i11, bVar2, true))) {
                return false;
            }
        }
        int iA = a(true);
        if (iA != e0Var.a(true) || (iC = c(true)) != e0Var.c(true)) {
            return false;
        }
        while (iA != iC) {
            int iE = e(iA, 0, true);
            if (iE != e0Var.e(iA, 0, true)) {
                return false;
            }
            iA = iE;
        }
        return true;
    }

    public final b f(int i10, b bVar) {
        return g(i10, bVar, false);
    }

    public abstract b g(int i10, b bVar, boolean z10);

    public b h(Object obj, b bVar) {
        return g(b(obj), bVar, true);
    }

    public int hashCode() {
        c cVar = new c();
        b bVar = new b();
        int iP = Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + p();
        for (int i10 = 0; i10 < p(); i10++) {
            iP = (iP * 31) + n(i10, cVar).hashCode();
        }
        int i11 = (iP * 31) + i();
        for (int i12 = 0; i12 < i(); i12++) {
            i11 = (i11 * 31) + g(i12, bVar, true).hashCode();
        }
        int iA = a(true);
        while (iA != -1) {
            i11 = (i11 * 31) + iA;
            iA = e(iA, 0, true);
        }
        return i11;
    }

    public abstract int i();

    public final Pair j(c cVar, b bVar, int i10, long j10) {
        return (Pair) androidx.media3.common.util.a.e(k(cVar, bVar, i10, j10, 0L));
    }

    public final Pair k(c cVar, b bVar, int i10, long j10, long j11) {
        androidx.media3.common.util.a.c(i10, 0, p());
        o(i10, cVar, j11);
        if (j10 == C.TIME_UNSET) {
            j10 = cVar.c();
            if (j10 == C.TIME_UNSET) {
                return null;
            }
        }
        int i11 = cVar.f9652n;
        f(i11, bVar);
        while (i11 < cVar.f9653o && bVar.f9626e != j10) {
            int i12 = i11 + 1;
            if (f(i12, bVar).f9626e > j10) {
                break;
            }
            i11 = i12;
        }
        g(i11, bVar, true);
        long jMin = j10 - bVar.f9626e;
        long j12 = bVar.f9625d;
        if (j12 != C.TIME_UNSET) {
            jMin = Math.min(jMin, j12 - 1);
        }
        return Pair.create(androidx.media3.common.util.a.e(bVar.f9623b), Long.valueOf(Math.max(0L, jMin)));
    }

    public int l(int i10, int i11, boolean z10) {
        if (i11 == 0) {
            if (i10 == a(z10)) {
                return -1;
            }
            return i10 - 1;
        }
        if (i11 == 1) {
            return i10;
        }
        if (i11 == 2) {
            return i10 == a(z10) ? c(z10) : i10 - 1;
        }
        throw new IllegalStateException();
    }

    public abstract Object m(int i10);

    public final c n(int i10, c cVar) {
        return o(i10, cVar, 0L);
    }

    public abstract c o(int i10, c cVar, long j10);

    public abstract int p();

    public final boolean q() {
        return p() == 0;
    }

    public final boolean r(int i10, b bVar, c cVar, int i11, boolean z10) {
        return d(i10, bVar, cVar, i11, z10) == -1;
    }
}
