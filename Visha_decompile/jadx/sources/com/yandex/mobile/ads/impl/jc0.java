package com.yandex.mobile.ads.impl;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.yandex.mobile.ads.impl.jc0;
import com.yandex.mobile.ads.impl.km;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class jc0 implements km {
    private static final jc0 H = new jc0(new a());
    public static final km.a<jc0> I = new km.a() {
        @Override
        public final km fromBundle(Bundle bundle) {
            return jc0.a(bundle);
        }
    };
    public final int A;
    public final int B;
    public final int C;
    public final int D;
    public final int E;
    public final int F;
    private int G;

    @Nullable
    public final String b;

    @Nullable
    public final String c;

    @Nullable
    public final String d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final int i;

    @Nullable
    public final String j;

    @Nullable
    public final k01 k;

    @Nullable
    public final String l;

    @Nullable
    public final String m;
    public final int n;
    public final List<byte[]> o;

    @Nullable
    public final f40 p;
    public final long q;
    public final int r;
    public final int s;
    public final float t;
    public final int u;
    public final float v;

    @Nullable
    public final byte[] w;
    public final int x;

    @Nullable
    public final rq y;
    public final int z;

    public static final class a {
        private int A;
        private int B;
        private int C;
        private int D;

        @Nullable
        private String a;

        @Nullable
        private String b;

        @Nullable
        private String c;
        private int d;
        private int e;
        private int f;
        private int g;

        @Nullable
        private String h;

        @Nullable
        private k01 i;

        @Nullable
        private String j;

        @Nullable
        private String k;
        private int l;

        @Nullable
        private List<byte[]> m;

        @Nullable
        private f40 n;
        private long o;
        private int p;
        private int q;
        private float r;
        private int s;
        private float t;

        @Nullable
        private byte[] u;
        private int v;

        @Nullable
        private rq w;
        private int x;
        private int y;
        private int z;

        public a() {
            this.f = -1;
            this.g = -1;
            this.l = -1;
            this.o = Long.MAX_VALUE;
            this.p = -1;
            this.q = -1;
            this.r = -1.0f;
            this.t = 1.0f;
            this.v = -1;
            this.x = -1;
            this.y = -1;
            this.z = -1;
            this.C = -1;
            this.D = 0;
        }

        public final a a(int i) {
            this.C = i;
            return this;
        }

        public final a b(int i) {
            this.f = i;
            return this;
        }

        public final a c(int i) {
            this.x = i;
            return this;
        }

        public final a d(int i) {
            this.A = i;
            return this;
        }

        public final a e(int i) {
            this.B = i;
            return this;
        }

        public final a f(int i) {
            this.q = i;
            return this;
        }

        public final a g(int i) {
            this.a = Integer.toString(i);
            return this;
        }

        public final a h(int i) {
            this.l = i;
            return this;
        }

        public final a i(int i) {
            this.z = i;
            return this;
        }

        public final a j(int i) {
            this.g = i;
            return this;
        }

        public final a k(int i) {
            this.s = i;
            return this;
        }

        public final a l(int i) {
            this.y = i;
            return this;
        }

        public final a m(int i) {
            this.d = i;
            return this;
        }

        public final a n(int i) {
            this.v = i;
            return this;
        }

        public final a o(int i) {
            this.p = i;
            return this;
        }

        public final a a(@Nullable String str) {
            this.h = str;
            return this;
        }

        public final a b() {
            this.j = "image/jpeg";
            return this;
        }

        public final a c(@Nullable String str) {
            this.b = str;
            return this;
        }

        public final a d(@Nullable String str) {
            this.c = str;
            return this;
        }

        public final a e(@Nullable String str) {
            this.k = str;
            return this;
        }

        public final a a(@Nullable rq rqVar) {
            this.w = rqVar;
            return this;
        }

        public final a b(@Nullable String str) {
            this.a = str;
            return this;
        }

        public final a a(@Nullable f40 f40Var) {
            this.n = f40Var;
            return this;
        }

        public final a b(float f) {
            this.t = f;
            return this;
        }

        public final void a(float f) {
            this.r = f;
        }

        public final a a(@Nullable List<byte[]> list) {
            this.m = list;
            return this;
        }

        public final a a(@Nullable k01 k01Var) {
            this.i = k01Var;
            return this;
        }

        public final a a(@Nullable byte[] bArr) {
            this.u = bArr;
            return this;
        }

        public final a a(long j) {
            this.o = j;
            return this;
        }

        public final jc0 a() {
            return new jc0(this);
        }

        private a(jc0 jc0Var) {
            this.a = jc0Var.b;
            this.b = jc0Var.c;
            this.c = jc0Var.d;
            this.d = jc0Var.e;
            this.e = jc0Var.f;
            this.f = jc0Var.g;
            this.g = jc0Var.h;
            this.h = jc0Var.j;
            this.i = jc0Var.k;
            this.j = jc0Var.l;
            this.k = jc0Var.m;
            this.l = jc0Var.n;
            this.m = jc0Var.o;
            this.n = jc0Var.p;
            this.o = jc0Var.q;
            this.p = jc0Var.r;
            this.q = jc0Var.s;
            this.r = jc0Var.t;
            this.s = jc0Var.u;
            this.t = jc0Var.v;
            this.u = jc0Var.w;
            this.v = jc0Var.x;
            this.w = jc0Var.y;
            this.x = jc0Var.z;
            this.y = jc0Var.A;
            this.z = jc0Var.B;
            this.A = jc0Var.C;
            this.B = jc0Var.D;
            this.C = jc0Var.E;
            this.D = jc0Var.F;
        }
    }

    public final boolean a(jc0 jc0Var) {
        if (this.o.size() != jc0Var.o.size()) {
            return false;
        }
        for (int i = 0; i < this.o.size(); i++) {
            if (!Arrays.equals(this.o.get(i), jc0Var.o.get(i))) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(@Nullable Object obj) {
        int i;
        if (this == obj) {
            return true;
        }
        if (obj == null || jc0.class != obj.getClass()) {
            return false;
        }
        jc0 jc0Var = (jc0) obj;
        int i2 = this.G;
        if (i2 == 0 || (i = jc0Var.G) == 0 || i2 == i) {
            return this.e == jc0Var.e && this.f == jc0Var.f && this.g == jc0Var.g && this.h == jc0Var.h && this.n == jc0Var.n && this.q == jc0Var.q && this.r == jc0Var.r && this.s == jc0Var.s && this.u == jc0Var.u && this.x == jc0Var.x && this.z == jc0Var.z && this.A == jc0Var.A && this.B == jc0Var.B && this.C == jc0Var.C && this.D == jc0Var.D && this.E == jc0Var.E && this.F == jc0Var.F && Float.compare(this.t, jc0Var.t) == 0 && Float.compare(this.v, jc0Var.v) == 0 && f92.a(this.b, jc0Var.b) && f92.a(this.c, jc0Var.c) && f92.a(this.j, jc0Var.j) && f92.a(this.l, jc0Var.l) && f92.a(this.m, jc0Var.m) && f92.a(this.d, jc0Var.d) && Arrays.equals(this.w, jc0Var.w) && f92.a(this.k, jc0Var.k) && f92.a(this.y, jc0Var.y) && f92.a(this.p, jc0Var.p) && a(jc0Var);
        }
        return false;
    }

    public final int hashCode() {
        if (this.G == 0) {
            String str = this.b;
            int iHashCode = ((str == null ? 0 : str.hashCode()) + 527) * 31;
            String str2 = this.c;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.d;
            int iHashCode3 = (((((((((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.e) * 31) + this.f) * 31) + this.g) * 31) + this.h) * 31;
            String str4 = this.j;
            int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            k01 k01Var = this.k;
            int iHashCode5 = (iHashCode4 + (k01Var == null ? 0 : k01Var.hashCode())) * 31;
            String str5 = this.l;
            int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.m;
            this.G = ((((((((((((((((Float.floatToIntBits(this.v) + ((((Float.floatToIntBits(this.t) + ((((((((((iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.n) * 31) + ((int) this.q)) * 31) + this.r) * 31) + this.s) * 31)) * 31) + this.u) * 31)) * 31) + this.x) * 31) + this.z) * 31) + this.A) * 31) + this.B) * 31) + this.C) * 31) + this.D) * 31) + this.E) * 31) + this.F;
        }
        return this.G;
    }

    public final String toString() {
        return "Format(" + this.b + ", " + this.c + ", " + this.l + ", " + this.m + ", " + this.j + ", " + this.i + ", " + this.d + ", [" + this.r + ", " + this.s + ", " + this.t + "], [" + this.z + ", " + this.A + "])";
    }

    private jc0(a aVar) {
        this.b = aVar.a;
        this.c = aVar.b;
        this.d = f92.e(aVar.c);
        this.e = aVar.d;
        this.f = aVar.e;
        int i = aVar.f;
        this.g = i;
        int i2 = aVar.g;
        this.h = i2;
        this.i = i2 != -1 ? i2 : i;
        this.j = aVar.h;
        this.k = aVar.i;
        this.l = aVar.j;
        this.m = aVar.k;
        this.n = aVar.l;
        List<byte[]> list = aVar.m;
        this.o = list == null ? Collections.emptyList() : list;
        f40 f40Var = aVar.n;
        this.p = f40Var;
        this.q = aVar.o;
        this.r = aVar.p;
        this.s = aVar.q;
        this.t = aVar.r;
        int i3 = aVar.s;
        this.u = i3 == -1 ? 0 : i3;
        float f = aVar.t;
        this.v = f == -1.0f ? 1.0f : f;
        this.w = aVar.u;
        this.x = aVar.v;
        this.y = aVar.w;
        this.z = aVar.x;
        this.A = aVar.y;
        this.B = aVar.z;
        int i4 = aVar.A;
        this.C = i4 == -1 ? 0 : i4;
        int i5 = aVar.B;
        this.D = i5 != -1 ? i5 : 0;
        this.E = aVar.C;
        int i6 = aVar.D;
        if (i6 != 0 || f40Var == null) {
            this.F = i6;
        } else {
            this.F = 1;
        }
    }

    public final int b() {
        int i;
        int i2 = this.r;
        if (i2 == -1 || (i = this.s) == -1) {
            return -1;
        }
        return i2 * i;
    }

    public final a a() {
        return new a();
    }

    public final jc0 a(int i) {
        a aVar = new a();
        aVar.D = i;
        return new jc0(aVar);
    }

    public static jc0 a(Bundle bundle) {
        a aVar = new a();
        if (bundle != null) {
            ClassLoader classLoader = lm.class.getClassLoader();
            int i = f92.a;
            bundle.setClassLoader(classLoader);
        }
        int i2 = 0;
        String string = bundle.getString(Integer.toString(0, 36));
        jc0 jc0Var = H;
        String str = jc0Var.b;
        if (string == null) {
            string = str;
        }
        aVar.a = string;
        String string2 = bundle.getString(Integer.toString(1, 36));
        String str2 = jc0Var.c;
        if (string2 == null) {
            string2 = str2;
        }
        aVar.b = string2;
        String string3 = bundle.getString(Integer.toString(2, 36));
        String str3 = jc0Var.d;
        if (string3 == null) {
            string3 = str3;
        }
        aVar.c = string3;
        aVar.d = bundle.getInt(Integer.toString(3, 36), jc0Var.e);
        aVar.e = bundle.getInt(Integer.toString(4, 36), jc0Var.f);
        aVar.f = bundle.getInt(Integer.toString(5, 36), jc0Var.g);
        aVar.g = bundle.getInt(Integer.toString(6, 36), jc0Var.h);
        String string4 = bundle.getString(Integer.toString(7, 36));
        String str4 = jc0Var.j;
        if (string4 == null) {
            string4 = str4;
        }
        aVar.h = string4;
        k01 k01Var = (k01) bundle.getParcelable(Integer.toString(8, 36));
        k01 k01Var2 = jc0Var.k;
        if (k01Var == null) {
            k01Var = k01Var2;
        }
        aVar.i = k01Var;
        String string5 = bundle.getString(Integer.toString(9, 36));
        String str5 = jc0Var.l;
        if (string5 == null) {
            string5 = str5;
        }
        aVar.j = string5;
        String string6 = bundle.getString(Integer.toString(10, 36));
        String str6 = jc0Var.m;
        if (string6 == null) {
            string6 = str6;
        }
        aVar.k = string6;
        aVar.l = bundle.getInt(Integer.toString(11, 36), jc0Var.n);
        ArrayList arrayList = new ArrayList();
        while (true) {
            byte[] byteArray = bundle.getByteArray(Integer.toString(12, 36) + "_" + Integer.toString(i2, 36));
            if (byteArray == null) {
                break;
            }
            arrayList.add(byteArray);
            i2++;
        }
        aVar.m = arrayList;
        aVar.n = (f40) bundle.getParcelable(Integer.toString(13, 36));
        String string7 = Integer.toString(14, 36);
        jc0 jc0Var2 = H;
        aVar.o = bundle.getLong(string7, jc0Var2.q);
        aVar.p = bundle.getInt(Integer.toString(15, 36), jc0Var2.r);
        aVar.q = bundle.getInt(Integer.toString(16, 36), jc0Var2.s);
        aVar.r = bundle.getFloat(Integer.toString(17, 36), jc0Var2.t);
        aVar.s = bundle.getInt(Integer.toString(18, 36), jc0Var2.u);
        aVar.t = bundle.getFloat(Integer.toString(19, 36), jc0Var2.v);
        aVar.u = bundle.getByteArray(Integer.toString(20, 36));
        aVar.v = bundle.getInt(Integer.toString(21, 36), jc0Var2.x);
        Bundle bundle2 = bundle.getBundle(Integer.toString(22, 36));
        if (bundle2 != null) {
            aVar.w = (rq) rq.g.fromBundle(bundle2);
        }
        aVar.x = bundle.getInt(Integer.toString(23, 36), jc0Var2.z);
        aVar.y = bundle.getInt(Integer.toString(24, 36), jc0Var2.A);
        aVar.z = bundle.getInt(Integer.toString(25, 36), jc0Var2.B);
        aVar.A = bundle.getInt(Integer.toString(26, 36), jc0Var2.C);
        aVar.B = bundle.getInt(Integer.toString(27, 36), jc0Var2.D);
        aVar.C = bundle.getInt(Integer.toString(28, 36), jc0Var2.E);
        aVar.D = bundle.getInt(Integer.toString(29, 36), jc0Var2.F);
        return new jc0(aVar);
    }
}
