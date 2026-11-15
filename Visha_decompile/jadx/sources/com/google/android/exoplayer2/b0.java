package com.google.android.exoplayer2;

import android.os.Bundle;
import com.google.android.exoplayer2.b0;
import com.google.android.exoplayer2.e;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Booleans;
import defpackage.xn0;
import defpackage.zi;
import defpackage.zq6;
import defpackage.zua;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public final class b0 implements e {
    public static final b0 c = new b0(ImmutableList.of());
    public static final e.a d = new e.a() {
        @Override
        public final e fromBundle(Bundle bundle) {
            return b0.e(bundle);
        }
    };
    public final ImmutableList b;

    public static final class a implements e {
        public static final e.a g = new e.a() {
            @Override
            public final e fromBundle(Bundle bundle) {
                return b0.a.g(bundle);
            }
        };
        public final int b;
        public final zua c;
        public final boolean d;
        public final int[] e;
        public final boolean[] f;

        public a(zua zuaVar, boolean z, int[] iArr, boolean[] zArr) {
            int i = zuaVar.b;
            this.b = i;
            boolean z2 = false;
            zi.a(i == iArr.length && i == zArr.length);
            this.c = zuaVar;
            if (z && i > 1) {
                z2 = true;
            }
            this.d = z2;
            this.e = (int[]) iArr.clone();
            this.f = (boolean[]) zArr.clone();
        }

        private static String f(int i) {
            return Integer.toString(i, 36);
        }

        public static a g(Bundle bundle) {
            zua zuaVar = (zua) zua.g.fromBundle((Bundle) zi.e(bundle.getBundle(f(0))));
            return new a(zuaVar, bundle.getBoolean(f(4), false), (int[]) zq6.a(bundle.getIntArray(f(1)), new int[zuaVar.b]), (boolean[]) zq6.a(bundle.getBooleanArray(f(3)), new boolean[zuaVar.b]));
        }

        public k b(int i) {
            return this.c.c(i);
        }

        public int c() {
            return this.c.d;
        }

        public boolean d() {
            return Booleans.a(this.f, true);
        }

        public boolean e(int i) {
            return this.f[i];
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.d == aVar.d && this.c.equals(aVar.c) && Arrays.equals(this.e, aVar.e) && Arrays.equals(this.f, aVar.f);
        }

        public int hashCode() {
            return (((((this.c.hashCode() * 31) + (this.d ? 1 : 0)) * 31) + Arrays.hashCode(this.e)) * 31) + Arrays.hashCode(this.f);
        }

        @Override
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putBundle(f(0), this.c.toBundle());
            bundle.putIntArray(f(1), this.e);
            bundle.putBooleanArray(f(3), this.f);
            bundle.putBoolean(f(4), this.d);
            return bundle;
        }
    }

    public b0(List list) {
        this.b = ImmutableList.copyOf((Collection) list);
    }

    private static String d(int i) {
        return Integer.toString(i, 36);
    }

    public static b0 e(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(d(0));
        return new b0(parcelableArrayList == null ? ImmutableList.of() : xn0.b(a.g, parcelableArrayList));
    }

    public ImmutableList b() {
        return this.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean c(int i) {
        for (int i2 = 0; i2 < this.b.size(); i2++) {
            a aVar = (a) this.b.get(i2);
            if (aVar.d() && aVar.c() == i) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b0.class != obj.getClass()) {
            return false;
        }
        return this.b.equals(((b0) obj).b);
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(d(0), xn0.d(this.b));
        return bundle;
    }
}
