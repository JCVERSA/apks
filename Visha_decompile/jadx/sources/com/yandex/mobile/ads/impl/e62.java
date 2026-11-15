package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Looper;
import android.view.accessibility.CaptioningManager;
import androidx.annotation.Nullable;
import com.yandex.mobile.ads.impl.e62;
import com.yandex.mobile.ads.impl.km;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;

public class e62 implements km {
    public static final e62 B = new e62(new a());
    public final mk0<Integer> A;
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
    public final kk0<String> m;
    public final int n;
    public final kk0<String> o;
    public final int p;
    public final int q;
    public final int r;
    public final kk0<String> s;
    public final kk0<String> t;
    public final int u;
    public final int v;
    public final boolean w;
    public final boolean x;
    public final boolean y;
    public final lk0<y52, d62> z;

    public static class a {
        private int a;
        private int b;
        private int c;
        private int d;
        private int e;
        private int f;
        private int g;
        private int h;
        private int i;
        private int j;
        private boolean k;
        private kk0<String> l;
        private int m;
        private kk0<String> n;
        private int o;
        private int p;
        private int q;
        private kk0<String> r;
        private kk0<String> s;
        private int t;
        private int u;
        private boolean v;
        private boolean w;
        private boolean x;
        private HashMap<y52, d62> y;
        private HashSet<Integer> z;

        @Deprecated
        public a() {
            this.a = Integer.MAX_VALUE;
            this.b = Integer.MAX_VALUE;
            this.c = Integer.MAX_VALUE;
            this.d = Integer.MAX_VALUE;
            this.i = Integer.MAX_VALUE;
            this.j = Integer.MAX_VALUE;
            this.k = true;
            this.l = kk0.h();
            this.m = 0;
            this.n = kk0.h();
            this.o = 0;
            this.p = Integer.MAX_VALUE;
            this.q = Integer.MAX_VALUE;
            this.r = kk0.h();
            this.s = kk0.h();
            this.t = 0;
            this.u = 0;
            this.v = false;
            this.w = false;
            this.x = false;
            this.y = new HashMap<>();
            this.z = new HashSet<>();
        }

        private static kk0<String> a(String[] strArr) {
            int i = kk0.d;
            kk0.a aVar = new kk0.a();
            for (String str : strArr) {
                str.getClass();
                aVar.b(f92.e(str));
            }
            return aVar.a();
        }

        public void b(Context context) {
            Point pointC = f92.c(context);
            a(pointC.x, pointC.y);
        }

        public a a(int i, int i2) {
            this.i = i;
            this.j = i2;
            this.k = true;
            return this;
        }

        public void a(Context context) {
            CaptioningManager captioningManager;
            int i = f92.a;
            if (i >= 19) {
                if ((i >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled()) {
                    this.t = 1088;
                    Locale locale = captioningManager.getLocale();
                    if (locale != null) {
                        this.s = kk0.a(f92.a(locale));
                    }
                }
            }
        }

        public a(Context context) {
            this();
            a(context);
            b(context);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v35, types: [java.io.Serializable, java.lang.String[]] */
        /* JADX WARN: Type inference failed for: r0v44, types: [java.io.Serializable, java.lang.String[]] */
        /* JADX WARN: Type inference failed for: r0v59, types: [java.io.Serializable, java.lang.String[]] */
        /* JADX WARN: Type inference failed for: r0v65, types: [java.io.Serializable, java.lang.String[]] */
        /* JADX WARN: Type inference failed for: r0v91, types: [int[], java.io.Serializable] */
        /* JADX WARN: Type inference failed for: r3v0, types: [java.io.Serializable, java.lang.String[]] */
        /* JADX WARN: Type inference failed for: r3v2, types: [java.io.Serializable, java.lang.String[]] */
        /* JADX WARN: Type inference failed for: r3v6, types: [java.io.Serializable, java.lang.String[]] */
        /* JADX WARN: Type inference failed for: r3v7, types: [java.io.Serializable, java.lang.String[]] */
        /* JADX WARN: Type inference failed for: r7v1, types: [int[], java.io.Serializable] */
        public a(Bundle bundle) {
            kk0 kk0VarA;
            String strA = e62.a(6);
            e62 e62Var = e62.B;
            this.a = bundle.getInt(strA, e62Var.b);
            this.b = bundle.getInt(e62.a(7), e62Var.c);
            this.c = bundle.getInt(e62.a(8), e62Var.d);
            this.d = bundle.getInt(e62.a(9), e62Var.e);
            this.e = bundle.getInt(e62.a(10), e62Var.f);
            this.f = bundle.getInt(e62.a(11), e62Var.g);
            this.g = bundle.getInt(e62.a(12), e62Var.h);
            this.h = bundle.getInt(e62.a(13), e62Var.i);
            this.i = bundle.getInt(e62.a(14), e62Var.j);
            this.j = bundle.getInt(e62.a(15), e62Var.k);
            this.k = bundle.getBoolean(e62.a(16), e62Var.l);
            this.l = kk0.b((String[]) x11.a(bundle.getStringArray(e62.a(17)), new String[0]));
            this.m = bundle.getInt(e62.a(25), e62Var.n);
            this.n = a((String[]) x11.a(bundle.getStringArray(e62.a(1)), new String[0]));
            this.o = bundle.getInt(e62.a(2), e62Var.p);
            this.p = bundle.getInt(e62.a(18), e62Var.q);
            this.q = bundle.getInt(e62.a(19), e62Var.r);
            this.r = kk0.b((String[]) x11.a(bundle.getStringArray(e62.a(20)), new String[0]));
            this.s = a((String[]) x11.a(bundle.getStringArray(e62.a(3)), new String[0]));
            this.t = bundle.getInt(e62.a(4), e62Var.u);
            this.u = bundle.getInt(e62.a(26), e62Var.v);
            this.v = bundle.getBoolean(e62.a(5), e62Var.w);
            this.w = bundle.getBoolean(e62.a(21), e62Var.x);
            this.x = bundle.getBoolean(e62.a(22), e62Var.y);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(e62.a(23));
            if (parcelableArrayList == null) {
                kk0VarA = kk0.h();
            } else {
                kk0VarA = lm.a(d62.d, parcelableArrayList);
            }
            this.y = new HashMap<>();
            for (int i = 0; i < kk0VarA.size(); i++) {
                d62 d62Var = (d62) kk0VarA.get(i);
                this.y.put(d62Var.b, d62Var);
            }
            int[] iArr = (int[]) x11.a(bundle.getIntArray(e62.a(24)), new int[0]);
            this.z = new HashSet<>();
            for (int i2 : iArr) {
                this.z.add(Integer.valueOf(i2));
            }
        }
    }

    static {
        new km.a() {
            @Override
            public final km fromBundle(Bundle bundle) {
                return e62.a(bundle);
            }
        };
    }

    public e62(a aVar) {
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
        this.z = lk0.a(aVar.y);
        this.A = mk0.a(aVar.z);
    }

    public static String a(int i) {
        return Integer.toString(i, 36);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        e62 e62Var = (e62) obj;
        return this.b == e62Var.b && this.c == e62Var.c && this.d == e62Var.d && this.e == e62Var.e && this.f == e62Var.f && this.g == e62Var.g && this.h == e62Var.h && this.i == e62Var.i && this.l == e62Var.l && this.j == e62Var.j && this.k == e62Var.k && this.m.equals(e62Var.m) && this.n == e62Var.n && this.o.equals(e62Var.o) && this.p == e62Var.p && this.q == e62Var.q && this.r == e62Var.r && this.s.equals(e62Var.s) && this.t.equals(e62Var.t) && this.u == e62Var.u && this.v == e62Var.v && this.w == e62Var.w && this.x == e62Var.x && this.y == e62Var.y && this.z.equals(e62Var.z) && this.A.equals(e62Var.A);
    }

    public int hashCode() {
        return this.A.hashCode() + ((this.z.hashCode() + ((((((((((((this.t.hashCode() + ((this.s.hashCode() + ((((((((this.o.hashCode() + ((((this.m.hashCode() + ((((((((((((((((((((((this.b + 31) * 31) + this.c) * 31) + this.d) * 31) + this.e) * 31) + this.f) * 31) + this.g) * 31) + this.h) * 31) + this.i) * 31) + (this.l ? 1 : 0)) * 31) + this.j) * 31) + this.k) * 31)) * 31) + this.n) * 31)) * 31) + this.p) * 31) + this.q) * 31) + this.r) * 31)) * 31)) * 31) + this.u) * 31) + this.v) * 31) + (this.w ? 1 : 0)) * 31) + (this.x ? 1 : 0)) * 31) + (this.y ? 1 : 0)) * 31)) * 31);
    }

    public static e62 a(Bundle bundle) {
        return new e62(new a(bundle));
    }
}
