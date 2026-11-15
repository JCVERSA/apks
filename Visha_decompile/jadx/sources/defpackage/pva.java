package defpackage;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Looper;
import android.view.accessibility.CaptioningManager;
import com.google.android.exoplayer2.e;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.primitives.Ints;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;

public class pva implements e {
    public static final pva B;
    public static final pva C;
    public static final e.a D;
    public final ImmutableSet A;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final int i;
    public final int j;
    public final int k;
    public final boolean l;
    public final ImmutableList m;
    public final int n;
    public final ImmutableList o;
    public final int p;
    public final int q;
    public final int r;
    public final ImmutableList s;
    public final ImmutableList t;
    public final int u;
    public final int v;
    public final boolean w;
    public final boolean x;
    public final boolean y;
    public final ImmutableMap z;

    static {
        pva pvaVarA = new a().A();
        B = pvaVarA;
        C = pvaVarA;
        D = new e.a() {
            @Override
            public final e fromBundle(Bundle bundle) {
                return pva.a(bundle);
            }
        };
    }

    public pva(a aVar) {
        this.b = aVar.a;
        this.c = aVar.b;
        this.d = aVar.c;
        this.e = aVar.d;
        this.f = aVar.e;
        this.g = aVar.f;
        this.h = aVar.g;
        this.i = aVar.h;
        this.j = aVar.i;
        this.k = aVar.j;
        this.l = aVar.k;
        this.m = aVar.l;
        this.n = aVar.m;
        this.o = aVar.n;
        this.p = aVar.o;
        this.q = aVar.p;
        this.r = aVar.q;
        this.s = aVar.r;
        this.t = aVar.s;
        this.u = aVar.t;
        this.v = aVar.u;
        this.w = aVar.v;
        this.x = aVar.w;
        this.y = aVar.x;
        this.z = ImmutableMap.copyOf((Map) aVar.y);
        this.A = ImmutableSet.copyOf((Collection) aVar.z);
    }

    public static pva a(Bundle bundle) {
        return new a(bundle).A();
    }

    public static String b(int i) {
        return Integer.toString(i, 36);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        pva pvaVar = (pva) obj;
        return this.b == pvaVar.b && this.c == pvaVar.c && this.d == pvaVar.d && this.e == pvaVar.e && this.f == pvaVar.f && this.g == pvaVar.g && this.h == pvaVar.h && this.i == pvaVar.i && this.l == pvaVar.l && this.j == pvaVar.j && this.k == pvaVar.k && this.m.equals(pvaVar.m) && this.n == pvaVar.n && this.o.equals(pvaVar.o) && this.p == pvaVar.p && this.q == pvaVar.q && this.r == pvaVar.r && this.s.equals(pvaVar.s) && this.t.equals(pvaVar.t) && this.u == pvaVar.u && this.v == pvaVar.v && this.w == pvaVar.w && this.x == pvaVar.x && this.y == pvaVar.y && this.z.equals(pvaVar.z) && this.A.equals(pvaVar.A);
    }

    public int hashCode() {
        return ((((((((((((((((((((((((((((((((((((((((((((((((((this.b + 31) * 31) + this.c) * 31) + this.d) * 31) + this.e) * 31) + this.f) * 31) + this.g) * 31) + this.h) * 31) + this.i) * 31) + (this.l ? 1 : 0)) * 31) + this.j) * 31) + this.k) * 31) + this.m.hashCode()) * 31) + this.n) * 31) + this.o.hashCode()) * 31) + this.p) * 31) + this.q) * 31) + this.r) * 31) + this.s.hashCode()) * 31) + this.t.hashCode()) * 31) + this.u) * 31) + this.v) * 31) + (this.w ? 1 : 0)) * 31) + (this.x ? 1 : 0)) * 31) + (this.y ? 1 : 0)) * 31) + this.z.hashCode()) * 31) + this.A.hashCode();
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(b(6), this.b);
        bundle.putInt(b(7), this.c);
        bundle.putInt(b(8), this.d);
        bundle.putInt(b(9), this.e);
        bundle.putInt(b(10), this.f);
        bundle.putInt(b(11), this.g);
        bundle.putInt(b(12), this.h);
        bundle.putInt(b(13), this.i);
        bundle.putInt(b(14), this.j);
        bundle.putInt(b(15), this.k);
        bundle.putBoolean(b(16), this.l);
        bundle.putStringArray(b(17), (String[]) this.m.toArray(new String[0]));
        bundle.putInt(b(25), this.n);
        bundle.putStringArray(b(1), (String[]) this.o.toArray(new String[0]));
        bundle.putInt(b(2), this.p);
        bundle.putInt(b(18), this.q);
        bundle.putInt(b(19), this.r);
        bundle.putStringArray(b(20), (String[]) this.s.toArray(new String[0]));
        bundle.putStringArray(b(3), (String[]) this.t.toArray(new String[0]));
        bundle.putInt(b(4), this.u);
        bundle.putInt(b(26), this.v);
        bundle.putBoolean(b(5), this.w);
        bundle.putBoolean(b(21), this.x);
        bundle.putBoolean(b(22), this.y);
        bundle.putParcelableArrayList(b(23), xn0.d(this.z.values()));
        bundle.putIntArray(b(24), Ints.o(this.A));
        return bundle;
    }

    public static class a {
        public int a;
        public int b;
        public int c;
        public int d;
        public int e;
        public int f;
        public int g;
        public int h;
        public int i;
        public int j;
        public boolean k;
        public ImmutableList l;
        public int m;
        public ImmutableList n;
        public int o;
        public int p;
        public int q;
        public ImmutableList r;
        public ImmutableList s;
        public int t;
        public int u;
        public boolean v;
        public boolean w;
        public boolean x;
        public HashMap y;
        public HashSet z;

        public a() {
            this.a = Integer.MAX_VALUE;
            this.b = Integer.MAX_VALUE;
            this.c = Integer.MAX_VALUE;
            this.d = Integer.MAX_VALUE;
            this.i = Integer.MAX_VALUE;
            this.j = Integer.MAX_VALUE;
            this.k = true;
            this.l = ImmutableList.of();
            this.m = 0;
            this.n = ImmutableList.of();
            this.o = 0;
            this.p = Integer.MAX_VALUE;
            this.q = Integer.MAX_VALUE;
            this.r = ImmutableList.of();
            this.s = ImmutableList.of();
            this.t = 0;
            this.u = 0;
            this.v = false;
            this.w = false;
            this.x = false;
            this.y = new HashMap();
            this.z = new HashSet();
        }

        public static ImmutableList C(String[] strArr) {
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (String str : (String[]) zi.e(strArr)) {
                aVarBuilder.a(blb.v0((String) zi.e(str)));
            }
            return aVarBuilder.e();
        }

        public pva A() {
            return new pva(this);
        }

        public final void B(pva pvaVar) {
            this.a = pvaVar.b;
            this.b = pvaVar.c;
            this.c = pvaVar.d;
            this.d = pvaVar.e;
            this.e = pvaVar.f;
            this.f = pvaVar.g;
            this.g = pvaVar.h;
            this.h = pvaVar.i;
            this.i = pvaVar.j;
            this.j = pvaVar.k;
            this.k = pvaVar.l;
            this.l = pvaVar.m;
            this.m = pvaVar.n;
            this.n = pvaVar.o;
            this.o = pvaVar.p;
            this.p = pvaVar.q;
            this.q = pvaVar.r;
            this.r = pvaVar.s;
            this.s = pvaVar.t;
            this.t = pvaVar.u;
            this.u = pvaVar.v;
            this.v = pvaVar.w;
            this.w = pvaVar.x;
            this.x = pvaVar.y;
            this.z = new HashSet(pvaVar.A);
            this.y = new HashMap(pvaVar.z);
        }

        public a D(pva pvaVar) {
            B(pvaVar);
            return this;
        }

        public a E(Context context) {
            if (blb.a >= 19) {
                F(context);
            }
            return this;
        }

        public final void F(Context context) {
            CaptioningManager captioningManager;
            if ((blb.a >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled()) {
                this.t = 1088;
                Locale locale = captioningManager.getLocale();
                if (locale != null) {
                    this.s = ImmutableList.of(blb.R(locale));
                }
            }
        }

        public a G(int i, int i2, boolean z) {
            this.i = i;
            this.j = i2;
            this.k = z;
            return this;
        }

        public a H(Context context, boolean z) {
            Point pointI = blb.I(context);
            return G(pointI.x, pointI.y, z);
        }

        public a(Context context) {
            this();
            E(context);
            H(context, true);
        }

        public a(pva pvaVar) {
            B(pvaVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public a(Bundle bundle) {
            ImmutableList immutableListB;
            String strB = pva.b(6);
            pva pvaVar = pva.B;
            this.a = bundle.getInt(strB, pvaVar.b);
            this.b = bundle.getInt(pva.b(7), pvaVar.c);
            this.c = bundle.getInt(pva.b(8), pvaVar.d);
            this.d = bundle.getInt(pva.b(9), pvaVar.e);
            this.e = bundle.getInt(pva.b(10), pvaVar.f);
            this.f = bundle.getInt(pva.b(11), pvaVar.g);
            this.g = bundle.getInt(pva.b(12), pvaVar.h);
            this.h = bundle.getInt(pva.b(13), pvaVar.i);
            this.i = bundle.getInt(pva.b(14), pvaVar.j);
            this.j = bundle.getInt(pva.b(15), pvaVar.k);
            this.k = bundle.getBoolean(pva.b(16), pvaVar.l);
            this.l = ImmutableList.copyOf((String[]) zq6.a(bundle.getStringArray(pva.b(17)), new String[0]));
            this.m = bundle.getInt(pva.b(25), pvaVar.n);
            this.n = C((String[]) zq6.a(bundle.getStringArray(pva.b(1)), new String[0]));
            this.o = bundle.getInt(pva.b(2), pvaVar.p);
            this.p = bundle.getInt(pva.b(18), pvaVar.q);
            this.q = bundle.getInt(pva.b(19), pvaVar.r);
            this.r = ImmutableList.copyOf((String[]) zq6.a(bundle.getStringArray(pva.b(20)), new String[0]));
            this.s = C((String[]) zq6.a(bundle.getStringArray(pva.b(3)), new String[0]));
            this.t = bundle.getInt(pva.b(4), pvaVar.u);
            this.u = bundle.getInt(pva.b(26), pvaVar.v);
            this.v = bundle.getBoolean(pva.b(5), pvaVar.w);
            this.w = bundle.getBoolean(pva.b(21), pvaVar.x);
            this.x = bundle.getBoolean(pva.b(22), pvaVar.y);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(pva.b(23));
            if (parcelableArrayList == null) {
                immutableListB = ImmutableList.of();
            } else {
                immutableListB = xn0.b(lva.d, parcelableArrayList);
            }
            this.y = new HashMap();
            for (int i = 0; i < immutableListB.size(); i++) {
                lva lvaVar = (lva) immutableListB.get(i);
                this.y.put(lvaVar.b, lvaVar);
            }
            int[] iArr = (int[]) zq6.a(bundle.getIntArray(pva.b(24)), new int[0]);
            this.z = new HashSet();
            for (int i2 : iArr) {
                this.z.add(Integer.valueOf(i2));
            }
        }
    }
}
