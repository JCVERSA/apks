package com.google.android.exoplayer2;

import android.os.Bundle;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Booleans;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public final class q3 implements k {

    public static final q3 f24963b = new q3(ImmutableList.of());

    public static final k.a f24964c = new k.a() {
        @Override
        public final k a(Bundle bundle) {
            return q3.f(bundle);
        }
    };

    private final ImmutableList f24965a;

    public static final class a implements k {

        public static final k.a f24966f = new k.a() {
            @Override
            public final k a(Bundle bundle) {
                return q3.a.k(bundle);
            }
        };

        public final int f24967a;

        private final v9.w f24968b;

        private final boolean f24969c;

        private final int[] f24970d;

        private final boolean[] f24971e;

        public a(v9.w wVar, boolean z10, int[] iArr, boolean[] zArr) {
            int i10 = wVar.f73554a;
            this.f24967a = i10;
            boolean z11 = false;
            com.google.android.exoplayer2.util.a.a(i10 == iArr.length && i10 == zArr.length);
            this.f24968b = wVar;
            if (z10 && i10 > 1) {
                z11 = true;
            }
            this.f24969c = z11;
            this.f24970d = (int[]) iArr.clone();
            this.f24971e = (boolean[]) zArr.clone();
        }

        private static String j(int i10) {
            return Integer.toString(i10, 36);
        }

        public static a k(Bundle bundle) {
            v9.w wVar = (v9.w) v9.w.f73553f.a((Bundle) com.google.android.exoplayer2.util.a.e(bundle.getBundle(j(0))));
            return new a(wVar, bundle.getBoolean(j(4), false), (int[]) com.google.common.base.h.a(bundle.getIntArray(j(1)), new int[wVar.f73554a]), (boolean[]) com.google.common.base.h.a(bundle.getBooleanArray(j(3)), new boolean[wVar.f73554a]));
        }

        public v9.w b() {
            return this.f24968b;
        }

        public p1 c(int i10) {
            return this.f24968b.c(i10);
        }

        public int d() {
            return this.f24968b.f73556c;
        }

        public boolean e() {
            return this.f24969c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f24969c == aVar.f24969c && this.f24968b.equals(aVar.f24968b) && Arrays.equals(this.f24970d, aVar.f24970d) && Arrays.equals(this.f24971e, aVar.f24971e);
        }

        public boolean f() {
            return Booleans.a(this.f24971e, true);
        }

        public boolean g(int i10) {
            return this.f24971e[i10];
        }

        public boolean h(int i10) {
            return i(i10, false);
        }

        public int hashCode() {
            return (((((this.f24968b.hashCode() * 31) + (this.f24969c ? 1 : 0)) * 31) + Arrays.hashCode(this.f24970d)) * 31) + Arrays.hashCode(this.f24971e);
        }

        public boolean i(int i10, boolean z10) {
            int i11 = this.f24970d[i10];
            return i11 == 4 || (z10 && i11 == 3);
        }

        @Override
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putBundle(j(0), this.f24968b.toBundle());
            bundle.putIntArray(j(1), this.f24970d);
            bundle.putBooleanArray(j(3), this.f24971e);
            bundle.putBoolean(j(4), this.f24969c);
            return bundle;
        }
    }

    public q3(List list) {
        this.f24965a = ImmutableList.copyOf((Collection) list);
    }

    private static String e(int i10) {
        return Integer.toString(i10, 36);
    }

    public static q3 f(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(e(0));
        return new q3(parcelableArrayList == null ? ImmutableList.of() : com.google.android.exoplayer2.util.d.b(a.f24966f, parcelableArrayList));
    }

    public ImmutableList b() {
        return this.f24965a;
    }

    public boolean c() {
        return this.f24965a.isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean d(int i10) {
        for (int i11 = 0; i11 < this.f24965a.size(); i11++) {
            a aVar = (a) this.f24965a.get(i11);
            if (aVar.f() && aVar.d() == i10) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || q3.class != obj.getClass()) {
            return false;
        }
        return this.f24965a.equals(((q3) obj).f24965a);
    }

    public int hashCode() {
        return this.f24965a.hashCode();
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(e(0), com.google.android.exoplayer2.util.d.d(this.f24965a));
        return bundle;
    }
}
