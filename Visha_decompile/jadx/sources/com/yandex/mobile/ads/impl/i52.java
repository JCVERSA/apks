package com.yandex.mobile.ads.impl;

import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import com.hunantv.media.drm.IDrmSession;
import com.yandex.mobile.ads.impl.i52;
import com.yandex.mobile.ads.impl.km;

public abstract class i52 implements km {
    public static final i52 b = new a();

    public class a extends i52 {
        @Override
        public final int a() {
            return 0;
        }

        @Override
        public final int b() {
            return 0;
        }

        @Override
        public final int a(Object obj) {
            return -1;
        }

        @Override
        public final d a(int i, d dVar, long j) {
            throw new IndexOutOfBoundsException();
        }

        @Override
        public final b a(int i, b bVar, boolean z) {
            throw new IndexOutOfBoundsException();
        }

        @Override
        public final Object a(int i) {
            throw new IndexOutOfBoundsException();
        }
    }

    public static final class b implements km {
        public static final km.a<b> i = new km.a() {
            @Override
            public final km fromBundle(Bundle bundle) {
                return i52.b.a(bundle);
            }
        };

        @Nullable
        public Object b;

        @Nullable
        public Object c;
        public int d;
        public long e;
        public long f;
        public boolean g;
        private n5 h = n5.h;

        public static b a(Bundle bundle) {
            int i2 = bundle.getInt(Integer.toString(0, 36), 0);
            long j = bundle.getLong(Integer.toString(1, 36), C.TIME_UNSET);
            long j2 = bundle.getLong(Integer.toString(2, 36), 0L);
            boolean z = bundle.getBoolean(Integer.toString(3, 36));
            Bundle bundle2 = bundle.getBundle(Integer.toString(4, 36));
            n5 n5Var = bundle2 != null ? (n5) n5.j.fromBundle(bundle2) : n5.h;
            b bVar = new b();
            bVar.a(null, null, i2, j, j2, n5Var, z);
            return bVar;
        }

        public final int d(int i2) {
            return this.h.a(i2).a(-1);
        }

        public final boolean e(int i2) {
            boolean z;
            n5.a aVarA = this.h.a(i2);
            if (aVarA.c == -1) {
                z = true;
                break;
            }
            z = false;
            for (int i3 = 0; i3 < aVarA.c; i3++) {
                int i4 = aVarA.e[i3];
                if (i4 == 0 || i4 == 1) {
                    z = true;
                    break;
                }
            }
            return !z;
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !b.class.equals(obj.getClass())) {
                return false;
            }
            b bVar = (b) obj;
            return f92.a(this.b, bVar.b) && f92.a(this.c, bVar.c) && this.d == bVar.d && this.e == bVar.e && this.f == bVar.f && this.g == bVar.g && f92.a(this.h, bVar.h);
        }

        public final boolean f(int i2) {
            return this.h.a(i2).h;
        }

        public final int hashCode() {
            Object obj = this.b;
            int iHashCode = ((obj == null ? 0 : obj.hashCode()) + IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY) * 31;
            Object obj2 = this.c;
            int iHashCode2 = (((iHashCode + (obj2 != null ? obj2.hashCode() : 0)) * 31) + this.d) * 31;
            long j = this.e;
            int i2 = (iHashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
            long j2 = this.f;
            return this.h.hashCode() + ((((i2 + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (this.g ? 1 : 0)) * 31);
        }

        public final int b(long j) {
            n5 n5Var = this.h;
            long j2 = this.e;
            int i2 = n5Var.c - 1;
            while (i2 >= 0 && j != Long.MIN_VALUE) {
                long j3 = n5Var.a(i2).b;
                if (j3 != Long.MIN_VALUE) {
                    if (j >= j3) {
                        break;
                    }
                    i2--;
                } else {
                    if (j2 != C.TIME_UNSET && j >= j2) {
                        break;
                    }
                    i2--;
                }
            }
            if (i2 >= 0) {
                n5.a aVarA = n5Var.a(i2);
                if (aVarA.c == -1) {
                    return i2;
                }
                for (int i3 = 0; i3 < aVarA.c; i3++) {
                    int i4 = aVarA.e[i3];
                    if (i4 == 0 || i4 == 1) {
                        return i2;
                    }
                }
            }
            return -1;
        }

        public final long c(int i2) {
            return this.h.a(i2).g;
        }

        public final int c(int i2, int i3) {
            return this.h.a(i2).a(i3);
        }

        public final int d() {
            return this.h.f;
        }

        public final long c() {
            return this.f;
        }

        public final long b(int i2) {
            return this.h.a(i2).b;
        }

        public final long b() {
            return this.h.d;
        }

        public final int b(int i2, int i3) {
            n5.a aVarA = this.h.a(i2);
            if (aVarA.c != -1) {
                return aVarA.e[i3];
            }
            return 0;
        }

        public final int a(int i2) {
            return this.h.a(i2).c;
        }

        public final long a(int i2, int i3) {
            n5.a aVarA = this.h.a(i2);
            return aVarA.c != -1 ? aVarA.f[i3] : C.TIME_UNSET;
        }

        public final int a() {
            return this.h.c;
        }

        public final int a(long j) {
            n5 n5Var = this.h;
            long j2 = this.e;
            n5Var.getClass();
            if (j == Long.MIN_VALUE) {
                return -1;
            }
            if (j2 != C.TIME_UNSET && j >= j2) {
                return -1;
            }
            int i2 = n5Var.f;
            while (i2 < n5Var.c) {
                if (n5Var.a(i2).b == Long.MIN_VALUE || n5Var.a(i2).b > j) {
                    n5.a aVarA = n5Var.a(i2);
                    if (aVarA.c == -1 || aVarA.a(-1) < aVarA.c) {
                        break;
                    }
                }
                i2++;
            }
            if (i2 < n5Var.c) {
                return i2;
            }
            return -1;
        }

        public final b a(@Nullable Object obj, @Nullable Object obj2, int i2, long j, long j2, n5 n5Var, boolean z) {
            this.b = obj;
            this.c = obj2;
            this.d = i2;
            this.e = j;
            this.f = j2;
            this.h = n5Var;
            this.g = z;
            return this;
        }
    }

    static {
        new km.a() {
            @Override
            public final km fromBundle(Bundle bundle) {
                return i52.a(bundle);
            }
        };
    }

    public static i52 a(Bundle bundle) {
        kk0 kk0VarA = a(d.v, jm.a(bundle, Integer.toString(0, 36)));
        kk0 kk0VarA2 = a(b.i, jm.a(bundle, Integer.toString(1, 36)));
        int[] intArray = bundle.getIntArray(Integer.toString(2, 36));
        if (intArray == null) {
            int size = kk0VarA.size();
            int[] iArr = new int[size];
            for (int i = 0; i < size; i++) {
                iArr[i] = i;
            }
            intArray = iArr;
        }
        return new c(kk0VarA, kk0VarA2, intArray);
    }

    public abstract int a();

    public abstract int a(Object obj);

    public abstract b a(int i, b bVar, boolean z);

    public abstract d a(int i, d dVar, long j);

    public abstract Object a(int i);

    public abstract int b();

    public final boolean c() {
        return b() == 0;
    }

    public final boolean equals(@Nullable Object obj) {
        int iB;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i52)) {
            return false;
        }
        i52 i52Var = (i52) obj;
        if (i52Var.b() != b() || i52Var.a() != a()) {
            return false;
        }
        d dVar = new d();
        b bVar = new b();
        d dVar2 = new d();
        b bVar2 = new b();
        for (int i = 0; i < b(); i++) {
            if (!a(i, dVar, 0L).equals(i52Var.a(i, dVar2, 0L))) {
                return false;
            }
        }
        for (int i2 = 0; i2 < a(); i2++) {
            if (!a(i2, bVar, true).equals(i52Var.a(i2, bVar2, true))) {
                return false;
            }
        }
        int iA = a(true);
        if (iA != i52Var.a(true) || (iB = b(true)) != i52Var.b(true)) {
            return false;
        }
        while (iA != iB) {
            int iA2 = a(iA, 0, true);
            if (iA2 != i52Var.a(iA, 0, true)) {
                return false;
            }
            iA = iA2;
        }
        return true;
    }

    public final int hashCode() {
        d dVar = new d();
        b bVar = new b();
        int iB = b() + IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY;
        for (int i = 0; i < b(); i++) {
            iB = (iB * 31) + a(i, dVar, 0L).hashCode();
        }
        int iA = a() + (iB * 31);
        for (int i2 = 0; i2 < a(); i2++) {
            iA = (iA * 31) + a(i2, bVar, true).hashCode();
        }
        int iA2 = a(true);
        while (iA2 != -1) {
            iA = (iA * 31) + iA2;
            iA2 = a(iA2, 0, true);
        }
        return iA;
    }

    public static final class c extends i52 {
        private final kk0<d> c;
        private final kk0<b> d;
        private final int[] e;
        private final int[] f;

        public c(kk0<d> kk0Var, kk0<b> kk0Var2, int[] iArr) {
            hg.a(kk0Var.size() == iArr.length);
            this.c = kk0Var;
            this.d = kk0Var2;
            this.e = iArr;
            this.f = new int[iArr.length];
            for (int i = 0; i < iArr.length; i++) {
                this.f[iArr[i]] = i;
            }
        }

        @Override
        public final int a(boolean z) {
            if (c()) {
                return -1;
            }
            if (z) {
                return this.e[0];
            }
            return 0;
        }

        @Override
        public final int b(boolean z) {
            if (c()) {
                return -1;
            }
            return z ? this.e[this.c.size() - 1] : this.c.size() - 1;
        }

        @Override
        public final int a(int i, int i2, boolean z) {
            if (i2 == 1) {
                return i;
            }
            if (i != b(z)) {
                return z ? this.e[this.f[i] + 1] : i + 1;
            }
            if (i2 == 2) {
                return a(z);
            }
            return -1;
        }

        @Override
        public final b a(int i, b bVar, boolean z) {
            b bVar2 = this.d.get(i);
            bVar.a(bVar2.b, bVar2.c, bVar2.d, bVar2.e, bVar2.f, bVar2.h, bVar2.g);
            return bVar;
        }

        @Override
        public final int b(int i, int i2, boolean z) {
            if (i2 == 1) {
                return i;
            }
            if (i != a(z)) {
                return z ? this.e[this.f[i] - 1] : i - 1;
            }
            if (i2 == 2) {
                return b(z);
            }
            return -1;
        }

        @Override
        public final int a() {
            return this.d.size();
        }

        @Override
        public final d a(int i, d dVar, long j) {
            d dVar2 = this.c.get(i);
            dVar.a(dVar2.b, dVar2.d, dVar2.e, dVar2.f, dVar2.g, dVar2.h, dVar2.i, dVar2.j, dVar2.l, dVar2.n, dVar2.o, dVar2.p, dVar2.q, dVar2.r);
            dVar.m = dVar2.m;
            return dVar;
        }

        @Override
        public final int b() {
            return this.c.size();
        }

        @Override
        public final int a(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override
        public final Object a(int i) {
            throw new UnsupportedOperationException();
        }
    }

    public int b(boolean z) {
        if (c()) {
            return -1;
        }
        return b() - 1;
    }

    public int b(int i, int i2, boolean z) {
        if (i2 == 0) {
            if (i == a(z)) {
                return -1;
            }
            return i - 1;
        }
        if (i2 == 1) {
            return i;
        }
        if (i2 == 2) {
            return i == a(z) ? b(z) : i - 1;
        }
        throw new IllegalStateException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T extends km> kk0<T> a(km.a<T> aVar, @Nullable IBinder iBinder) {
        int i;
        if (iBinder == null) {
            return kk0.h();
        }
        kk0.a aVar2 = new kk0.a();
        int i2 = im.a;
        int i3 = kk0.d;
        kk0.a aVar3 = new kk0.a();
        int i4 = 1;
        int i5 = 0;
        while (i4 != 0) {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInt(i5);
                try {
                    iBinder.transact(1, parcelObtain, parcelObtain2, 0);
                    while (true) {
                        i = parcelObtain2.readInt();
                        if (i == 1) {
                            Bundle bundle = parcelObtain2.readBundle();
                            bundle.getClass();
                            aVar3.b(bundle);
                            i5++;
                        }
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    i4 = i;
                } catch (RemoteException e) {
                    throw new RuntimeException(e);
                }
            } catch (Throwable th) {
                parcelObtain2.recycle();
                parcelObtain.recycle();
                throw th;
            }
        }
        kk0 kk0VarA = aVar3.a();
        for (int i6 = 0; i6 < kk0VarA.size(); i6++) {
            aVar2.b(aVar.fromBundle((Bundle) kk0VarA.get(i6)));
        }
        return aVar2.a();
    }

    public static final class d implements km {
        public static final Object s = new Object();
        private static final Object t = new Object();
        private static final jw0 u = new jw0.a().b("com.monetization.ads.exoplayer2.Timeline").a(Uri.EMPTY).a();
        public static final km.a<d> v = new km.a() {
            @Override
            public final km fromBundle(Bundle bundle) {
                return i52.d.a(bundle);
            }
        };

        @Nullable
        @Deprecated
        public Object c;

        @Nullable
        public Object e;
        public long f;
        public long g;
        public long h;
        public boolean i;
        public boolean j;

        @Deprecated
        public boolean k;

        @Nullable
        public jw0.e l;
        public boolean m;
        public long n;
        public long o;
        public int p;
        public int q;
        public long r;
        public Object b = s;
        public jw0 d = u;

        public static d a(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle(Integer.toString(1, 36));
            jw0 jw0Var = bundle2 != null ? (jw0) jw0.h.fromBundle(bundle2) : null;
            long j = bundle.getLong(Integer.toString(2, 36), C.TIME_UNSET);
            long j2 = bundle.getLong(Integer.toString(3, 36), C.TIME_UNSET);
            long j3 = bundle.getLong(Integer.toString(4, 36), C.TIME_UNSET);
            boolean z = bundle.getBoolean(Integer.toString(5, 36), false);
            boolean z2 = bundle.getBoolean(Integer.toString(6, 36), false);
            Bundle bundle3 = bundle.getBundle(Integer.toString(7, 36));
            jw0.e eVar = bundle3 != null ? (jw0.e) jw0.e.h.fromBundle(bundle3) : null;
            boolean z3 = bundle.getBoolean(Integer.toString(8, 36), false);
            long j4 = bundle.getLong(Integer.toString(9, 36), 0L);
            long j5 = bundle.getLong(Integer.toString(10, 36), C.TIME_UNSET);
            int i = bundle.getInt(Integer.toString(11, 36), 0);
            int i2 = bundle.getInt(Integer.toString(12, 36), 0);
            long j6 = bundle.getLong(Integer.toString(13, 36), 0L);
            d dVar = new d();
            dVar.a(t, jw0Var, null, j, j2, j3, z, z2, eVar, j4, j5, i, i2, j6);
            dVar.m = z3;
            return dVar;
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !d.class.equals(obj.getClass())) {
                return false;
            }
            d dVar = (d) obj;
            return f92.a(this.b, dVar.b) && f92.a(this.d, dVar.d) && f92.a(this.e, dVar.e) && f92.a(this.l, dVar.l) && this.f == dVar.f && this.g == dVar.g && this.h == dVar.h && this.i == dVar.i && this.j == dVar.j && this.m == dVar.m && this.n == dVar.n && this.o == dVar.o && this.p == dVar.p && this.q == dVar.q && this.r == dVar.r;
        }

        public final int hashCode() {
            int iHashCode = (this.d.hashCode() + ((this.b.hashCode() + IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY) * 31)) * 31;
            Object obj = this.e;
            int iHashCode2 = (iHashCode + (obj == null ? 0 : obj.hashCode())) * 31;
            jw0.e eVar = this.l;
            int iHashCode3 = (iHashCode2 + (eVar != null ? eVar.hashCode() : 0)) * 31;
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

        public final boolean a() {
            boolean z = this.k;
            jw0.e eVar = this.l;
            if (z == (eVar != null)) {
                return eVar != null;
            }
            throw new IllegalStateException();
        }

        public final d a(Object obj, @Nullable jw0 jw0Var, @Nullable Object obj2, long j, long j2, long j3, boolean z, boolean z2, @Nullable jw0.e eVar, long j4, long j5, int i, int i2, long j6) {
            jw0.g gVar;
            this.b = obj;
            this.d = jw0Var != null ? jw0Var : u;
            this.c = (jw0Var == null || (gVar = jw0Var.c) == null) ? null : gVar.g;
            this.e = obj2;
            this.f = j;
            this.g = j2;
            this.h = j3;
            this.i = z;
            this.j = z2;
            this.k = eVar != null;
            this.l = eVar;
            this.n = j4;
            this.o = j5;
            this.p = i;
            this.q = i2;
            this.r = j6;
            this.m = false;
            return this;
        }
    }

    public int a(boolean z) {
        return c() ? -1 : 0;
    }

    public final int a(int i, b bVar, d dVar, int i2, boolean z) {
        int i3 = a(i, bVar, false).d;
        if (a(i3, dVar, 0L).q != i) {
            return i + 1;
        }
        int iA = a(i3, i2, z);
        if (iA == -1) {
            return -1;
        }
        return a(iA, dVar, 0L).p;
    }

    public int a(int i, int i2, boolean z) {
        if (i2 == 0) {
            if (i == b(z)) {
                return -1;
            }
            return i + 1;
        }
        if (i2 == 1) {
            return i;
        }
        if (i2 == 2) {
            return i == b(z) ? a(z) : i + 1;
        }
        throw new IllegalStateException();
    }

    public final b a(int i, b bVar) {
        return a(i, bVar, false);
    }

    public b a(Object obj, b bVar) {
        return a(a(obj), bVar, true);
    }

    public final Pair<Object, Long> a(d dVar, b bVar, int i, long j) {
        Pair<Object, Long> pairA = a(dVar, bVar, i, j, 0L);
        pairA.getClass();
        return pairA;
    }

    @Nullable
    public final Pair<Object, Long> a(d dVar, b bVar, int i, long j, long j2) {
        hg.a(i, b());
        a(i, dVar, j2);
        if (j == C.TIME_UNSET) {
            j = dVar.n;
            if (j == C.TIME_UNSET) {
                return null;
            }
        }
        int i2 = dVar.p;
        a(i2, bVar, false);
        while (i2 < dVar.q && bVar.f != j) {
            int i3 = i2 + 1;
            if (a(i3, bVar, false).f > j) {
                break;
            }
            i2 = i3;
        }
        a(i2, bVar, true);
        long jMin = j - bVar.f;
        long j3 = bVar.e;
        if (j3 != C.TIME_UNSET) {
            jMin = Math.min(jMin, j3 - 1);
        }
        long jMax = Math.max(0L, jMin);
        Object obj = bVar.c;
        obj.getClass();
        return Pair.create(obj, Long.valueOf(jMax));
    }
}
