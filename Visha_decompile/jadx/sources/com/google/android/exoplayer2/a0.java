package com.google.android.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Pair;
import androidx.media3.common.C;
import com.google.android.exoplayer2.a0;
import com.google.android.exoplayer2.e;
import com.google.common.collect.ImmutableList;
import com.hunantv.media.drm.IDrmSession;
import defpackage.blb;
import defpackage.vn0;
import defpackage.wn0;
import defpackage.zi;
import java.util.ArrayList;

public abstract class a0 implements e {
    public static final a0 b = new a();
    public static final e.a c = new e.a() {
        @Override
        public final e fromBundle(Bundle bundle) {
            return a0.b(bundle);
        }
    };

    public class a extends a0 {
        @Override
        public int f(Object obj) {
            return -1;
        }

        @Override
        public b k(int i, b bVar, boolean z) {
            throw new IndexOutOfBoundsException();
        }

        @Override
        public int m() {
            return 0;
        }

        @Override
        public Object q(int i) {
            throw new IndexOutOfBoundsException();
        }

        @Override
        public d s(int i, d dVar, long j) {
            throw new IndexOutOfBoundsException();
        }

        @Override
        public int t() {
            return 0;
        }
    }

    public static final class b implements e {
        public static final e.a i = new e.a() {
            @Override
            public final e fromBundle(Bundle bundle) {
                return a0.b.c(bundle);
            }
        };
        public Object b;
        public Object c;
        public int d;
        public long e;
        public long f;
        public boolean g;
        public com.google.android.exoplayer2.source.ads.a h = com.google.android.exoplayer2.source.ads.a.h;

        public static b c(Bundle bundle) {
            int i2 = bundle.getInt(u(0), 0);
            long j = bundle.getLong(u(1), C.TIME_UNSET);
            long j2 = bundle.getLong(u(2), 0L);
            boolean z = bundle.getBoolean(u(3));
            Bundle bundle2 = bundle.getBundle(u(4));
            com.google.android.exoplayer2.source.ads.a aVar = bundle2 != null ? (com.google.android.exoplayer2.source.ads.a) com.google.android.exoplayer2.source.ads.a.j.fromBundle(bundle2) : com.google.android.exoplayer2.source.ads.a.h;
            b bVar = new b();
            bVar.w(null, null, i2, j, j2, aVar, z);
            return bVar;
        }

        private static String u(int i2) {
            return Integer.toString(i2, 36);
        }

        public int d(int i2) {
            return this.h.d(i2).c;
        }

        public long e(int i2, int i3) {
            com.google.android.exoplayer2.source.ads.a.C0082a c0082aD = this.h.d(i2);
            return c0082aD.c != -1 ? c0082aD.f[i3] : C.TIME_UNSET;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !b.class.equals(obj.getClass())) {
                return false;
            }
            b bVar = (b) obj;
            return blb.c(this.b, bVar.b) && blb.c(this.c, bVar.c) && this.d == bVar.d && this.e == bVar.e && this.f == bVar.f && this.g == bVar.g && blb.c(this.h, bVar.h);
        }

        public int f() {
            return this.h.c;
        }

        public int g(long j) {
            return this.h.e(j, this.e);
        }

        public int h(long j) {
            return this.h.f(j, this.e);
        }

        public int hashCode() {
            Object obj = this.b;
            int iHashCode = (IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY + (obj == null ? 0 : obj.hashCode())) * 31;
            Object obj2 = this.c;
            int iHashCode2 = (((iHashCode + (obj2 != null ? obj2.hashCode() : 0)) * 31) + this.d) * 31;
            long j = this.e;
            int i2 = (iHashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
            long j2 = this.f;
            return ((((i2 + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (this.g ? 1 : 0)) * 31) + this.h.hashCode();
        }

        public long i(int i2) {
            return this.h.d(i2).b;
        }

        public long j() {
            return this.h.d;
        }

        public int k(int i2, int i3) {
            com.google.android.exoplayer2.source.ads.a.C0082a c0082aD = this.h.d(i2);
            if (c0082aD.c != -1) {
                return c0082aD.e[i3];
            }
            return 0;
        }

        public long l(int i2) {
            return this.h.d(i2).g;
        }

        public long m() {
            return this.e;
        }

        public int n(int i2) {
            return this.h.d(i2).e();
        }

        public int o(int i2, int i3) {
            return this.h.d(i2).f(i3);
        }

        public long p() {
            return blb.P0(this.f);
        }

        public long q() {
            return this.f;
        }

        public int r() {
            return this.h.f;
        }

        public boolean s(int i2) {
            return !this.h.d(i2).g();
        }

        public boolean t(int i2) {
            return this.h.d(i2).h;
        }

        @Override
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(u(0), this.d);
            bundle.putLong(u(1), this.e);
            bundle.putLong(u(2), this.f);
            bundle.putBoolean(u(3), this.g);
            bundle.putBundle(u(4), this.h.toBundle());
            return bundle;
        }

        public b v(Object obj, Object obj2, int i2, long j, long j2) {
            return w(obj, obj2, i2, j, j2, com.google.android.exoplayer2.source.ads.a.h, false);
        }

        public b w(Object obj, Object obj2, int i2, long j, long j2, com.google.android.exoplayer2.source.ads.a aVar, boolean z) {
            this.b = obj;
            this.c = obj2;
            this.d = i2;
            this.e = j;
            this.f = j2;
            this.h = aVar;
            this.g = z;
            return this;
        }
    }

    public static final class c extends a0 {
        public final ImmutableList d;
        public final ImmutableList e;
        public final int[] f;
        public final int[] g;

        public c(ImmutableList immutableList, ImmutableList immutableList2, int[] iArr) {
            zi.a(immutableList.size() == iArr.length);
            this.d = immutableList;
            this.e = immutableList2;
            this.f = iArr;
            this.g = new int[iArr.length];
            for (int i = 0; i < iArr.length; i++) {
                this.g[iArr[i]] = i;
            }
        }

        @Override
        public int e(boolean z) {
            if (u()) {
                return -1;
            }
            if (z) {
                return this.f[0];
            }
            return 0;
        }

        @Override
        public int f(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int g(boolean z) {
            if (u()) {
                return -1;
            }
            return z ? this.f[t() - 1] : t() - 1;
        }

        @Override
        public int i(int i, int i2, boolean z) {
            if (i2 == 1) {
                return i;
            }
            if (i != g(z)) {
                return z ? this.f[this.g[i] + 1] : i + 1;
            }
            if (i2 == 2) {
                return e(z);
            }
            return -1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public b k(int i, b bVar, boolean z) {
            b bVar2 = (b) this.e.get(i);
            bVar.w(bVar2.b, bVar2.c, bVar2.d, bVar2.e, bVar2.f, bVar2.h, bVar2.g);
            return bVar;
        }

        @Override
        public int m() {
            return this.e.size();
        }

        @Override
        public int p(int i, int i2, boolean z) {
            if (i2 == 1) {
                return i;
            }
            if (i != e(z)) {
                return z ? this.f[this.g[i] - 1] : i - 1;
            }
            if (i2 == 2) {
                return g(z);
            }
            return -1;
        }

        @Override
        public Object q(int i) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public d s(int i, d dVar, long j) {
            d dVar2 = (d) this.d.get(i);
            dVar.k(dVar2.b, dVar2.d, dVar2.e, dVar2.f, dVar2.g, dVar2.h, dVar2.i, dVar2.j, dVar2.l, dVar2.n, dVar2.o, dVar2.p, dVar2.q, dVar2.r);
            dVar.m = dVar2.m;
            return dVar;
        }

        @Override
        public int t() {
            return this.d.size();
        }
    }

    public static final class d implements e {
        public static final Object s = new Object();
        public static final Object t = new Object();
        public static final n u = new n.c().d("com.google.android.exoplayer2.Timeline").i(Uri.EMPTY).a();
        public static final e.a v = new e.a() {
            @Override
            public final e fromBundle(Bundle bundle) {
                return a0.d.c(bundle);
            }
        };
        public Object c;
        public Object e;
        public long f;
        public long g;
        public long h;
        public boolean i;
        public boolean j;
        public boolean k;
        public n.g l;
        public boolean m;
        public long n;
        public long o;
        public int p;
        public int q;
        public long r;
        public Object b = s;
        public n d = u;

        public static d c(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle(j(1));
            n nVar = bundle2 != null ? (n) n.k.fromBundle(bundle2) : null;
            long j = bundle.getLong(j(2), C.TIME_UNSET);
            long j2 = bundle.getLong(j(3), C.TIME_UNSET);
            long j3 = bundle.getLong(j(4), C.TIME_UNSET);
            boolean z = bundle.getBoolean(j(5), false);
            boolean z2 = bundle.getBoolean(j(6), false);
            Bundle bundle3 = bundle.getBundle(j(7));
            n.g gVar = bundle3 != null ? (n.g) n.g.h.fromBundle(bundle3) : null;
            boolean z3 = bundle.getBoolean(j(8), false);
            long j4 = bundle.getLong(j(9), 0L);
            long j5 = bundle.getLong(j(10), C.TIME_UNSET);
            int i = bundle.getInt(j(11), 0);
            int i2 = bundle.getInt(j(12), 0);
            long j6 = bundle.getLong(j(13), 0L);
            d dVar = new d();
            dVar.k(t, nVar, null, j, j2, j3, z, z2, gVar, j4, j5, i, i2, j6);
            dVar.m = z3;
            return dVar;
        }

        private static String j(int i) {
            return Integer.toString(i, 36);
        }

        public final Bundle l(boolean z) {
            Bundle bundle = new Bundle();
            bundle.putBundle(j(1), (z ? n.j : this.d).toBundle());
            bundle.putLong(j(2), this.f);
            bundle.putLong(j(3), this.g);
            bundle.putLong(j(4), this.h);
            bundle.putBoolean(j(5), this.i);
            bundle.putBoolean(j(6), this.j);
            n.g gVar = this.l;
            if (gVar != null) {
                bundle.putBundle(j(7), gVar.toBundle());
            }
            bundle.putBoolean(j(8), this.m);
            bundle.putLong(j(9), this.n);
            bundle.putLong(j(10), this.o);
            bundle.putInt(j(11), this.p);
            bundle.putInt(j(12), this.q);
            bundle.putLong(j(13), this.r);
            return bundle;
        }

        public long d() {
            return blb.U(this.h);
        }

        public long e() {
            return blb.P0(this.n);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !d.class.equals(obj.getClass())) {
                return false;
            }
            d dVar = (d) obj;
            return blb.c(this.b, dVar.b) && blb.c(this.d, dVar.d) && blb.c(this.e, dVar.e) && blb.c(this.l, dVar.l) && this.f == dVar.f && this.g == dVar.g && this.h == dVar.h && this.i == dVar.i && this.j == dVar.j && this.m == dVar.m && this.n == dVar.n && this.o == dVar.o && this.p == dVar.p && this.q == dVar.q && this.r == dVar.r;
        }

        public long f() {
            return this.n;
        }

        public long g() {
            return blb.P0(this.o);
        }

        public long h() {
            return this.r;
        }

        public int hashCode() {
            int iHashCode = (((IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY + this.b.hashCode()) * 31) + this.d.hashCode()) * 31;
            Object obj = this.e;
            int iHashCode2 = (iHashCode + (obj == null ? 0 : obj.hashCode())) * 31;
            n.g gVar = this.l;
            int iHashCode3 = (iHashCode2 + (gVar != null ? gVar.hashCode() : 0)) * 31;
            long j = this.f;
            int i = (iHashCode3 + ((int) (j ^ (j >>> 32)))) * 31;
            long j2 = this.g;
            int i2 = (i + ((int) (j2 ^ (j2 >>> 32)))) * 31;
            long j3 = this.h;
            int i3 = (((((((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31) + (this.i ? 1 : 0)) * 31) + (this.j ? 1 : 0)) * 31) + (this.m ? 1 : 0)) * 31;
            long j4 = this.n;
            int i4 = (i3 + ((int) (j4 ^ (j4 >>> 32)))) * 31;
            long j5 = this.o;
            int i5 = (((((i4 + ((int) (j5 ^ (j5 >>> 32)))) * 31) + this.p) * 31) + this.q) * 31;
            long j6 = this.r;
            return i5 + ((int) (j6 ^ (j6 >>> 32)));
        }

        public boolean i() {
            zi.g(this.k == (this.l != null));
            return this.l != null;
        }

        public d k(Object obj, n nVar, Object obj2, long j, long j2, long j3, boolean z, boolean z2, n.g gVar, long j4, long j5, int i, int i2, long j6) {
            n.h hVar;
            this.b = obj;
            this.d = nVar != null ? nVar : u;
            this.c = (nVar == null || (hVar = nVar.c) == null) ? null : hVar.h;
            this.e = obj2;
            this.f = j;
            this.g = j2;
            this.h = j3;
            this.i = z;
            this.j = z2;
            this.k = gVar != null;
            this.l = gVar;
            this.n = j4;
            this.o = j5;
            this.p = i;
            this.q = i2;
            this.r = j6;
            this.m = false;
            return this;
        }

        @Override
        public Bundle toBundle() {
            return l(false);
        }
    }

    public static a0 b(Bundle bundle) {
        ImmutableList immutableListC = c(d.v, wn0.a(bundle, w(0)));
        ImmutableList immutableListC2 = c(b.i, wn0.a(bundle, w(1)));
        int[] intArray = bundle.getIntArray(w(2));
        if (intArray == null) {
            intArray = d(immutableListC.size());
        }
        return new c(immutableListC, immutableListC2, intArray);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ImmutableList c(e.a aVar, IBinder iBinder) {
        if (iBinder == null) {
            return ImmutableList.of();
        }
        ImmutableList.a aVar2 = new ImmutableList.a();
        ImmutableList immutableListA = vn0.a(iBinder);
        for (int i = 0; i < immutableListA.size(); i++) {
            aVar2.a(aVar.fromBundle((Bundle) immutableListA.get(i)));
        }
        return aVar2.e();
    }

    public static int[] d(int i) {
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = i2;
        }
        return iArr;
    }

    private static String w(int i) {
        return Integer.toString(i, 36);
    }

    public int e(boolean z) {
        return u() ? -1 : 0;
    }

    public boolean equals(Object obj) {
        int iG;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a0)) {
            return false;
        }
        a0 a0Var = (a0) obj;
        if (a0Var.t() != t() || a0Var.m() != m()) {
            return false;
        }
        d dVar = new d();
        b bVar = new b();
        d dVar2 = new d();
        b bVar2 = new b();
        for (int i = 0; i < t(); i++) {
            if (!r(i, dVar).equals(a0Var.r(i, dVar2))) {
                return false;
            }
        }
        for (int i2 = 0; i2 < m(); i2++) {
            if (!k(i2, bVar, true).equals(a0Var.k(i2, bVar2, true))) {
                return false;
            }
        }
        int iE = e(true);
        if (iE != a0Var.e(true) || (iG = g(true)) != a0Var.g(true)) {
            return false;
        }
        while (iE != iG) {
            int i3 = i(iE, 0, true);
            if (i3 != a0Var.i(iE, 0, true)) {
                return false;
            }
            iE = i3;
        }
        return true;
    }

    public abstract int f(Object obj);

    public int g(boolean z) {
        if (u()) {
            return -1;
        }
        return t() - 1;
    }

    public final int h(int i, b bVar, d dVar, int i2, boolean z) {
        int i3 = j(i, bVar).d;
        if (r(i3, dVar).q != i) {
            return i + 1;
        }
        int i4 = i(i3, i2, z);
        if (i4 == -1) {
            return -1;
        }
        return r(i4, dVar).p;
    }

    public int hashCode() {
        d dVar = new d();
        b bVar = new b();
        int iT = IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY + t();
        for (int i = 0; i < t(); i++) {
            iT = (iT * 31) + r(i, dVar).hashCode();
        }
        int iM = (iT * 31) + m();
        for (int i2 = 0; i2 < m(); i2++) {
            iM = (iM * 31) + k(i2, bVar, true).hashCode();
        }
        int iE = e(true);
        while (iE != -1) {
            iM = (iM * 31) + iE;
            iE = i(iE, 0, true);
        }
        return iM;
    }

    public int i(int i, int i2, boolean z) {
        if (i2 == 0) {
            if (i == g(z)) {
                return -1;
            }
            return i + 1;
        }
        if (i2 == 1) {
            return i;
        }
        if (i2 == 2) {
            return i == g(z) ? e(z) : i + 1;
        }
        throw new IllegalStateException();
    }

    public final b j(int i, b bVar) {
        return k(i, bVar, false);
    }

    public abstract b k(int i, b bVar, boolean z);

    public b l(Object obj, b bVar) {
        return k(f(obj), bVar, true);
    }

    public abstract int m();

    public final Pair n(d dVar, b bVar, int i, long j) {
        return (Pair) zi.e(o(dVar, bVar, i, j, 0L));
    }

    public final Pair o(d dVar, b bVar, int i, long j, long j2) {
        zi.c(i, 0, t());
        s(i, dVar, j2);
        if (j == C.TIME_UNSET) {
            j = dVar.f();
            if (j == C.TIME_UNSET) {
                return null;
            }
        }
        int i2 = dVar.p;
        j(i2, bVar);
        while (i2 < dVar.q && bVar.f != j) {
            int i3 = i2 + 1;
            if (j(i3, bVar).f > j) {
                break;
            }
            i2 = i3;
        }
        k(i2, bVar, true);
        long jMin = j - bVar.f;
        long j3 = bVar.e;
        if (j3 != C.TIME_UNSET) {
            jMin = Math.min(jMin, j3 - 1);
        }
        return Pair.create(zi.e(bVar.c), Long.valueOf(Math.max(0L, jMin)));
    }

    public int p(int i, int i2, boolean z) {
        if (i2 == 0) {
            if (i == e(z)) {
                return -1;
            }
            return i - 1;
        }
        if (i2 == 1) {
            return i;
        }
        if (i2 == 2) {
            return i == e(z) ? g(z) : i - 1;
        }
        throw new IllegalStateException();
    }

    public abstract Object q(int i);

    public final d r(int i, d dVar) {
        return s(i, dVar, 0L);
    }

    public abstract d s(int i, d dVar, long j);

    public abstract int t();

    @Override
    public final Bundle toBundle() {
        return x(false);
    }

    public final boolean u() {
        return t() == 0;
    }

    public final boolean v(int i, b bVar, d dVar, int i2, boolean z) {
        return h(i, bVar, dVar, i2, z) == -1;
    }

    public final Bundle x(boolean z) {
        ArrayList arrayList = new ArrayList();
        int iT = t();
        d dVar = new d();
        for (int i = 0; i < iT; i++) {
            arrayList.add(s(i, dVar, 0L).l(z));
        }
        ArrayList arrayList2 = new ArrayList();
        int iM = m();
        b bVar = new b();
        for (int i2 = 0; i2 < iM; i2++) {
            arrayList2.add(k(i2, bVar, false).toBundle());
        }
        int[] iArr = new int[iT];
        if (iT > 0) {
            iArr[0] = e(true);
        }
        for (int i3 = 1; i3 < iT; i3++) {
            iArr[i3] = i(iArr[i3 - 1], 0, true);
        }
        Bundle bundle = new Bundle();
        wn0.c(bundle, w(0), new vn0(arrayList));
        wn0.c(bundle, w(1), new vn0(arrayList2));
        bundle.putIntArray(w(2), iArr);
        return bundle;
    }
}
