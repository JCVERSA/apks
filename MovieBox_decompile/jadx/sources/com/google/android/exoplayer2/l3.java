package com.google.android.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Pair;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;

public abstract class l3 implements k {

    public static final l3 f24520a = new a();

    public static final k.a f24521b = new k.a() {
        @Override
        public final k a(Bundle bundle) {
            return l3.b(bundle);
        }
    };

    class a extends l3 {
        a() {
        }

        @Override
        public int f(Object obj) {
            return -1;
        }

        @Override
        public b k(int i10, b bVar, boolean z10) {
            throw new IndexOutOfBoundsException();
        }

        @Override
        public int m() {
            return 0;
        }

        @Override
        public Object q(int i10) {
            throw new IndexOutOfBoundsException();
        }

        @Override
        public d s(int i10, d dVar, long j10) {
            throw new IndexOutOfBoundsException();
        }

        @Override
        public int t() {
            return 0;
        }
    }

    public static final class b implements k {

        public static final k.a f24522h = new k.a() {
            @Override
            public final k a(Bundle bundle) {
                return l3.b.c(bundle);
            }
        };

        public Object f24523a;

        public Object f24524b;

        public int f24525c;

        public long f24526d;

        public long f24527e;

        public boolean f24528f;

        private w9.c f24529g = w9.c.f74222g;

        public static b c(Bundle bundle) {
            int i10 = bundle.getInt(u(0), 0);
            long j10 = bundle.getLong(u(1), C.TIME_UNSET);
            long j11 = bundle.getLong(u(2), 0L);
            boolean z10 = bundle.getBoolean(u(3));
            Bundle bundle2 = bundle.getBundle(u(4));
            w9.c cVar = bundle2 != null ? (w9.c) w9.c.f74224i.a(bundle2) : w9.c.f74222g;
            b bVar = new b();
            bVar.w(null, null, i10, j10, j11, cVar, z10);
            return bVar;
        }

        private static String u(int i10) {
            return Integer.toString(i10, 36);
        }

        public int d(int i10) {
            return this.f24529g.c(i10).f74233b;
        }

        public long e(int i10, int i11) {
            w9.c.a aVarC = this.f24529g.c(i10);
            return aVarC.f74233b != -1 ? aVarC.f74236e[i11] : C.TIME_UNSET;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !b.class.equals(obj.getClass())) {
                return false;
            }
            b bVar = (b) obj;
            return com.google.android.exoplayer2.util.p0.c(this.f24523a, bVar.f24523a) && com.google.android.exoplayer2.util.p0.c(this.f24524b, bVar.f24524b) && this.f24525c == bVar.f24525c && this.f24526d == bVar.f24526d && this.f24527e == bVar.f24527e && this.f24528f == bVar.f24528f && com.google.android.exoplayer2.util.p0.c(this.f24529g, bVar.f24529g);
        }

        public int f() {
            return this.f24529g.f74226b;
        }

        public int g(long j10) {
            return this.f24529g.d(j10, this.f24526d);
        }

        public int h(long j10) {
            return this.f24529g.e(j10, this.f24526d);
        }

        public int hashCode() {
            Object obj = this.f24523a;
            int iHashCode = (Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + (obj == null ? 0 : obj.hashCode())) * 31;
            Object obj2 = this.f24524b;
            int iHashCode2 = (((iHashCode + (obj2 != null ? obj2.hashCode() : 0)) * 31) + this.f24525c) * 31;
            long j10 = this.f24526d;
            int i10 = (iHashCode2 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
            long j11 = this.f24527e;
            return ((((i10 + ((int) (j11 ^ (j11 >>> 32)))) * 31) + (this.f24528f ? 1 : 0)) * 31) + this.f24529g.hashCode();
        }

        public long i(int i10) {
            return this.f24529g.c(i10).f74232a;
        }

        public long j() {
            return this.f24529g.f74227c;
        }

        public int k(int i10, int i11) {
            w9.c.a aVarC = this.f24529g.c(i10);
            if (aVarC.f74233b != -1) {
                return aVarC.f74235d[i11];
            }
            return 0;
        }

        public long l(int i10) {
            return this.f24529g.c(i10).f74237f;
        }

        public long m() {
            return this.f24526d;
        }

        public int n(int i10) {
            return this.f24529g.c(i10).e();
        }

        public int o(int i10, int i11) {
            return this.f24529g.c(i10).f(i11);
        }

        public long p() {
            return com.google.android.exoplayer2.util.p0.e1(this.f24527e);
        }

        public long q() {
            return this.f24527e;
        }

        public int r() {
            return this.f24529g.f74229e;
        }

        public boolean s(int i10) {
            return !this.f24529g.c(i10).g();
        }

        public boolean t(int i10) {
            return this.f24529g.c(i10).f74238g;
        }

        @Override
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(u(0), this.f24525c);
            bundle.putLong(u(1), this.f24526d);
            bundle.putLong(u(2), this.f24527e);
            bundle.putBoolean(u(3), this.f24528f);
            bundle.putBundle(u(4), this.f24529g.toBundle());
            return bundle;
        }

        public b v(Object obj, Object obj2, int i10, long j10, long j11) {
            return w(obj, obj2, i10, j10, j11, w9.c.f74222g, false);
        }

        public b w(Object obj, Object obj2, int i10, long j10, long j11, w9.c cVar, boolean z10) {
            this.f24523a = obj;
            this.f24524b = obj2;
            this.f24525c = i10;
            this.f24526d = j10;
            this.f24527e = j11;
            this.f24529g = cVar;
            this.f24528f = z10;
            return this;
        }
    }

    public static final class c extends l3 {

        private final ImmutableList f24530c;

        private final ImmutableList f24531d;

        private final int[] f24532e;

        private final int[] f24533f;

        public c(ImmutableList immutableList, ImmutableList immutableList2, int[] iArr) {
            com.google.android.exoplayer2.util.a.a(immutableList.size() == iArr.length);
            this.f24530c = immutableList;
            this.f24531d = immutableList2;
            this.f24532e = iArr;
            this.f24533f = new int[iArr.length];
            for (int i10 = 0; i10 < iArr.length; i10++) {
                this.f24533f[iArr[i10]] = i10;
            }
        }

        @Override
        public int e(boolean z10) {
            if (u()) {
                return -1;
            }
            if (z10) {
                return this.f24532e[0];
            }
            return 0;
        }

        @Override
        public int f(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int g(boolean z10) {
            if (u()) {
                return -1;
            }
            return z10 ? this.f24532e[t() - 1] : t() - 1;
        }

        @Override
        public int i(int i10, int i11, boolean z10) {
            if (i11 == 1) {
                return i10;
            }
            if (i10 != g(z10)) {
                return z10 ? this.f24532e[this.f24533f[i10] + 1] : i10 + 1;
            }
            if (i11 == 2) {
                return e(z10);
            }
            return -1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public b k(int i10, b bVar, boolean z10) {
            b bVar2 = (b) this.f24531d.get(i10);
            bVar.w(bVar2.f24523a, bVar2.f24524b, bVar2.f24525c, bVar2.f24526d, bVar2.f24527e, bVar2.f24529g, bVar2.f24528f);
            return bVar;
        }

        @Override
        public int m() {
            return this.f24531d.size();
        }

        @Override
        public int p(int i10, int i11, boolean z10) {
            if (i11 == 1) {
                return i10;
            }
            if (i10 != e(z10)) {
                return z10 ? this.f24532e[this.f24533f[i10] - 1] : i10 - 1;
            }
            if (i11 == 2) {
                return g(z10);
            }
            return -1;
        }

        @Override
        public Object q(int i10) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public d s(int i10, d dVar, long j10) {
            d dVar2 = (d) this.f24530c.get(i10);
            dVar.k(dVar2.f24538a, dVar2.f24540c, dVar2.f24541d, dVar2.f24542e, dVar2.f24543f, dVar2.f24544g, dVar2.f24545h, dVar2.f24546i, dVar2.f24548k, dVar2.f24550m, dVar2.f24551n, dVar2.f24552o, dVar2.f24553p, dVar2.f24554q);
            dVar.f24549l = dVar2.f24549l;
            return dVar;
        }

        @Override
        public int t() {
            return this.f24530c.size();
        }
    }

    public static final class d implements k {

        public static final Object f24534r = new Object();

        private static final Object f24535s = new Object();

        private static final w1 f24536t = new w1.c().d("com.google.android.exoplayer2.Timeline").i(Uri.EMPTY).a();

        public static final k.a f24537u = new k.a() {
            @Override
            public final k a(Bundle bundle) {
                return l3.d.c(bundle);
            }
        };

        public Object f24539b;

        public Object f24541d;

        public long f24542e;

        public long f24543f;

        public long f24544g;

        public boolean f24545h;

        public boolean f24546i;

        public boolean f24547j;

        public w1.g f24548k;

        public boolean f24549l;

        public long f24550m;

        public long f24551n;

        public int f24552o;

        public int f24553p;

        public long f24554q;

        public Object f24538a = f24534r;

        public w1 f24540c = f24536t;

        public static d c(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle(j(1));
            w1 w1Var = bundle2 != null ? (w1) w1.f27147j.a(bundle2) : null;
            long j10 = bundle.getLong(j(2), C.TIME_UNSET);
            long j11 = bundle.getLong(j(3), C.TIME_UNSET);
            long j12 = bundle.getLong(j(4), C.TIME_UNSET);
            boolean z10 = bundle.getBoolean(j(5), false);
            boolean z11 = bundle.getBoolean(j(6), false);
            Bundle bundle3 = bundle.getBundle(j(7));
            w1.g gVar = bundle3 != null ? (w1.g) w1.g.f27201g.a(bundle3) : null;
            boolean z12 = bundle.getBoolean(j(8), false);
            long j13 = bundle.getLong(j(9), 0L);
            long j14 = bundle.getLong(j(10), C.TIME_UNSET);
            int i10 = bundle.getInt(j(11), 0);
            int i11 = bundle.getInt(j(12), 0);
            long j15 = bundle.getLong(j(13), 0L);
            d dVar = new d();
            dVar.k(f24535s, w1Var, null, j10, j11, j12, z10, z11, gVar, j13, j14, i10, i11, j15);
            dVar.f24549l = z12;
            return dVar;
        }

        private static String j(int i10) {
            return Integer.toString(i10, 36);
        }

        public final Bundle l(boolean z10) {
            Bundle bundle = new Bundle();
            bundle.putBundle(j(1), (z10 ? w1.f27146i : this.f24540c).toBundle());
            bundle.putLong(j(2), this.f24542e);
            bundle.putLong(j(3), this.f24543f);
            bundle.putLong(j(4), this.f24544g);
            bundle.putBoolean(j(5), this.f24545h);
            bundle.putBoolean(j(6), this.f24546i);
            w1.g gVar = this.f24548k;
            if (gVar != null) {
                bundle.putBundle(j(7), gVar.toBundle());
            }
            bundle.putBoolean(j(8), this.f24549l);
            bundle.putLong(j(9), this.f24550m);
            bundle.putLong(j(10), this.f24551n);
            bundle.putInt(j(11), this.f24552o);
            bundle.putInt(j(12), this.f24553p);
            bundle.putLong(j(13), this.f24554q);
            return bundle;
        }

        public long d() {
            return com.google.android.exoplayer2.util.p0.b0(this.f24544g);
        }

        public long e() {
            return com.google.android.exoplayer2.util.p0.e1(this.f24550m);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !d.class.equals(obj.getClass())) {
                return false;
            }
            d dVar = (d) obj;
            return com.google.android.exoplayer2.util.p0.c(this.f24538a, dVar.f24538a) && com.google.android.exoplayer2.util.p0.c(this.f24540c, dVar.f24540c) && com.google.android.exoplayer2.util.p0.c(this.f24541d, dVar.f24541d) && com.google.android.exoplayer2.util.p0.c(this.f24548k, dVar.f24548k) && this.f24542e == dVar.f24542e && this.f24543f == dVar.f24543f && this.f24544g == dVar.f24544g && this.f24545h == dVar.f24545h && this.f24546i == dVar.f24546i && this.f24549l == dVar.f24549l && this.f24550m == dVar.f24550m && this.f24551n == dVar.f24551n && this.f24552o == dVar.f24552o && this.f24553p == dVar.f24553p && this.f24554q == dVar.f24554q;
        }

        public long f() {
            return this.f24550m;
        }

        public long g() {
            return com.google.android.exoplayer2.util.p0.e1(this.f24551n);
        }

        public long h() {
            return this.f24554q;
        }

        public int hashCode() {
            int iHashCode = (((Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + this.f24538a.hashCode()) * 31) + this.f24540c.hashCode()) * 31;
            Object obj = this.f24541d;
            int iHashCode2 = (iHashCode + (obj == null ? 0 : obj.hashCode())) * 31;
            w1.g gVar = this.f24548k;
            int iHashCode3 = (iHashCode2 + (gVar != null ? gVar.hashCode() : 0)) * 31;
            long j10 = this.f24542e;
            int i10 = (iHashCode3 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
            long j11 = this.f24543f;
            int i11 = (i10 + ((int) (j11 ^ (j11 >>> 32)))) * 31;
            long j12 = this.f24544g;
            int i12 = (((((((i11 + ((int) (j12 ^ (j12 >>> 32)))) * 31) + (this.f24545h ? 1 : 0)) * 31) + (this.f24546i ? 1 : 0)) * 31) + (this.f24549l ? 1 : 0)) * 31;
            long j13 = this.f24550m;
            int i13 = (i12 + ((int) (j13 ^ (j13 >>> 32)))) * 31;
            long j14 = this.f24551n;
            int i14 = (((((i13 + ((int) (j14 ^ (j14 >>> 32)))) * 31) + this.f24552o) * 31) + this.f24553p) * 31;
            long j15 = this.f24554q;
            return i14 + ((int) (j15 ^ (j15 >>> 32)));
        }

        public boolean i() {
            com.google.android.exoplayer2.util.a.g(this.f24547j == (this.f24548k != null));
            return this.f24548k != null;
        }

        public d k(Object obj, w1 w1Var, Object obj2, long j10, long j11, long j12, boolean z10, boolean z11, w1.g gVar, long j13, long j14, int i10, int i11, long j15) {
            w1.h hVar;
            this.f24538a = obj;
            this.f24540c = w1Var != null ? w1Var : f24536t;
            this.f24539b = (w1Var == null || (hVar = w1Var.f27149b) == null) ? null : hVar.f27219h;
            this.f24541d = obj2;
            this.f24542e = j10;
            this.f24543f = j11;
            this.f24544g = j12;
            this.f24545h = z10;
            this.f24546i = z11;
            this.f24547j = gVar != null;
            this.f24548k = gVar;
            this.f24550m = j13;
            this.f24551n = j14;
            this.f24552o = i10;
            this.f24553p = i11;
            this.f24554q = j15;
            this.f24549l = false;
            return this;
        }

        @Override
        public Bundle toBundle() {
            return l(false);
        }
    }

    protected l3() {
    }

    public static l3 b(Bundle bundle) {
        ImmutableList immutableListC = c(d.f24537u, com.google.android.exoplayer2.util.c.a(bundle, w(0)));
        ImmutableList immutableListC2 = c(b.f24522h, com.google.android.exoplayer2.util.c.a(bundle, w(1)));
        int[] intArray = bundle.getIntArray(w(2));
        if (intArray == null) {
            intArray = d(immutableListC.size());
        }
        return new c(immutableListC, immutableListC2, intArray);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static ImmutableList c(k.a aVar, IBinder iBinder) {
        if (iBinder == null) {
            return ImmutableList.of();
        }
        ImmutableList.a aVar2 = new ImmutableList.a();
        ImmutableList immutableListA = j.a(iBinder);
        for (int i10 = 0; i10 < immutableListA.size(); i10++) {
            aVar2.a(aVar.a((Bundle) immutableListA.get(i10)));
        }
        return aVar2.e();
    }

    private static int[] d(int i10) {
        int[] iArr = new int[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            iArr[i11] = i11;
        }
        return iArr;
    }

    private static String w(int i10) {
        return Integer.toString(i10, 36);
    }

    public int e(boolean z10) {
        return u() ? -1 : 0;
    }

    public boolean equals(Object obj) {
        int iG;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l3)) {
            return false;
        }
        l3 l3Var = (l3) obj;
        if (l3Var.t() != t() || l3Var.m() != m()) {
            return false;
        }
        d dVar = new d();
        b bVar = new b();
        d dVar2 = new d();
        b bVar2 = new b();
        for (int i10 = 0; i10 < t(); i10++) {
            if (!r(i10, dVar).equals(l3Var.r(i10, dVar2))) {
                return false;
            }
        }
        for (int i11 = 0; i11 < m(); i11++) {
            if (!k(i11, bVar, true).equals(l3Var.k(i11, bVar2, true))) {
                return false;
            }
        }
        int iE = e(true);
        if (iE != l3Var.e(true) || (iG = g(true)) != l3Var.g(true)) {
            return false;
        }
        while (iE != iG) {
            int i12 = i(iE, 0, true);
            if (i12 != l3Var.i(iE, 0, true)) {
                return false;
            }
            iE = i12;
        }
        return true;
    }

    public abstract int f(Object obj);

    public int g(boolean z10) {
        if (u()) {
            return -1;
        }
        return t() - 1;
    }

    public final int h(int i10, b bVar, d dVar, int i11, boolean z10) {
        int i12 = j(i10, bVar).f24525c;
        if (r(i12, dVar).f24553p != i10) {
            return i10 + 1;
        }
        int i13 = i(i12, i11, z10);
        if (i13 == -1) {
            return -1;
        }
        return r(i13, dVar).f24552o;
    }

    public int hashCode() {
        d dVar = new d();
        b bVar = new b();
        int iT = Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + t();
        for (int i10 = 0; i10 < t(); i10++) {
            iT = (iT * 31) + r(i10, dVar).hashCode();
        }
        int iM = (iT * 31) + m();
        for (int i11 = 0; i11 < m(); i11++) {
            iM = (iM * 31) + k(i11, bVar, true).hashCode();
        }
        int iE = e(true);
        while (iE != -1) {
            iM = (iM * 31) + iE;
            iE = i(iE, 0, true);
        }
        return iM;
    }

    public int i(int i10, int i11, boolean z10) {
        if (i11 == 0) {
            if (i10 == g(z10)) {
                return -1;
            }
            return i10 + 1;
        }
        if (i11 == 1) {
            return i10;
        }
        if (i11 == 2) {
            return i10 == g(z10) ? e(z10) : i10 + 1;
        }
        throw new IllegalStateException();
    }

    public final b j(int i10, b bVar) {
        return k(i10, bVar, false);
    }

    public abstract b k(int i10, b bVar, boolean z10);

    public b l(Object obj, b bVar) {
        return k(f(obj), bVar, true);
    }

    public abstract int m();

    public final Pair n(d dVar, b bVar, int i10, long j10) {
        return (Pair) com.google.android.exoplayer2.util.a.e(o(dVar, bVar, i10, j10, 0L));
    }

    public final Pair o(d dVar, b bVar, int i10, long j10, long j11) {
        com.google.android.exoplayer2.util.a.c(i10, 0, t());
        s(i10, dVar, j11);
        if (j10 == C.TIME_UNSET) {
            j10 = dVar.f();
            if (j10 == C.TIME_UNSET) {
                return null;
            }
        }
        int i11 = dVar.f24552o;
        j(i11, bVar);
        while (i11 < dVar.f24553p && bVar.f24527e != j10) {
            int i12 = i11 + 1;
            if (j(i12, bVar).f24527e > j10) {
                break;
            }
            i11 = i12;
        }
        k(i11, bVar, true);
        long jMin = j10 - bVar.f24527e;
        long j12 = bVar.f24526d;
        if (j12 != C.TIME_UNSET) {
            jMin = Math.min(jMin, j12 - 1);
        }
        return Pair.create(com.google.android.exoplayer2.util.a.e(bVar.f24524b), Long.valueOf(Math.max(0L, jMin)));
    }

    public int p(int i10, int i11, boolean z10) {
        if (i11 == 0) {
            if (i10 == e(z10)) {
                return -1;
            }
            return i10 - 1;
        }
        if (i11 == 1) {
            return i10;
        }
        if (i11 == 2) {
            return i10 == e(z10) ? g(z10) : i10 - 1;
        }
        throw new IllegalStateException();
    }

    public abstract Object q(int i10);

    public final d r(int i10, d dVar) {
        return s(i10, dVar, 0L);
    }

    public abstract d s(int i10, d dVar, long j10);

    public abstract int t();

    @Override
    public final Bundle toBundle() {
        return x(false);
    }

    public final boolean u() {
        return t() == 0;
    }

    public final boolean v(int i10, b bVar, d dVar, int i11, boolean z10) {
        return h(i10, bVar, dVar, i11, z10) == -1;
    }

    public final Bundle x(boolean z10) {
        ArrayList arrayList = new ArrayList();
        int iT = t();
        d dVar = new d();
        for (int i10 = 0; i10 < iT; i10++) {
            arrayList.add(s(i10, dVar, 0L).l(z10));
        }
        ArrayList arrayList2 = new ArrayList();
        int iM = m();
        b bVar = new b();
        for (int i11 = 0; i11 < iM; i11++) {
            arrayList2.add(k(i11, bVar, false).toBundle());
        }
        int[] iArr = new int[iT];
        if (iT > 0) {
            iArr[0] = e(true);
        }
        for (int i12 = 1; i12 < iT; i12++) {
            iArr[i12] = i(iArr[i12 - 1], 0, true);
        }
        Bundle bundle = new Bundle();
        com.google.android.exoplayer2.util.c.c(bundle, w(0), new j(arrayList));
        com.google.android.exoplayer2.util.c.c(bundle, w(1), new j(arrayList2));
        bundle.putIntArray(w(2), iArr);
        return bundle;
    }
}
