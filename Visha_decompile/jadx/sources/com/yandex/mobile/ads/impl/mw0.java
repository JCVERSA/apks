package com.yandex.mobile.ads.impl;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.yandex.mobile.ads.impl.km;
import com.yandex.mobile.ads.impl.mw0;
import java.util.Arrays;

public final class mw0 implements km {
    public static final mw0 H = new mw0(new a());
    public static final km.a<mw0> I = new km.a() {
        @Override
        public final km fromBundle(Bundle bundle) {
            return mw0.a(bundle);
        }
    };

    @Nullable
    public final CharSequence A;

    @Nullable
    public final Integer B;

    @Nullable
    public final Integer C;

    @Nullable
    public final CharSequence D;

    @Nullable
    public final CharSequence E;

    @Nullable
    public final CharSequence F;

    @Nullable
    public final Bundle G;

    @Nullable
    public final CharSequence b;

    @Nullable
    public final CharSequence c;

    @Nullable
    public final CharSequence d;

    @Nullable
    public final CharSequence e;

    @Nullable
    public final CharSequence f;

    @Nullable
    public final CharSequence g;

    @Nullable
    public final CharSequence h;

    @Nullable
    public final kn1 i;

    @Nullable
    public final kn1 j;

    @Nullable
    public final byte[] k;

    @Nullable
    public final Integer l;

    @Nullable
    public final Uri m;

    @Nullable
    public final Integer n;

    @Nullable
    public final Integer o;

    @Nullable
    public final Integer p;

    @Nullable
    public final Boolean q;

    @Nullable
    @Deprecated
    public final Integer r;

    @Nullable
    public final Integer s;

    @Nullable
    public final Integer t;

    @Nullable
    public final Integer u;

    @Nullable
    public final Integer v;

    @Nullable
    public final Integer w;

    @Nullable
    public final Integer x;

    @Nullable
    public final CharSequence y;

    @Nullable
    public final CharSequence z;

    public static final class a {

        @Nullable
        private Integer A;

        @Nullable
        private CharSequence B;

        @Nullable
        private CharSequence C;

        @Nullable
        private CharSequence D;

        @Nullable
        private Bundle E;

        @Nullable
        private CharSequence a;

        @Nullable
        private CharSequence b;

        @Nullable
        private CharSequence c;

        @Nullable
        private CharSequence d;

        @Nullable
        private CharSequence e;

        @Nullable
        private CharSequence f;

        @Nullable
        private CharSequence g;

        @Nullable
        private kn1 h;

        @Nullable
        private kn1 i;

        @Nullable
        private byte[] j;

        @Nullable
        private Integer k;

        @Nullable
        private Uri l;

        @Nullable
        private Integer m;

        @Nullable
        private Integer n;

        @Nullable
        private Integer o;

        @Nullable
        private Boolean p;

        @Nullable
        private Integer q;

        @Nullable
        private Integer r;

        @Nullable
        private Integer s;

        @Nullable
        private Integer t;

        @Nullable
        private Integer u;

        @Nullable
        private Integer v;

        @Nullable
        private CharSequence w;

        @Nullable
        private CharSequence x;

        @Nullable
        private CharSequence y;

        @Nullable
        private Integer z;

        public a() {
        }

        public final void a(int i, byte[] bArr) {
            if (this.j == null || f92.a((Object) Integer.valueOf(i), (Object) 3) || !f92.a((Object) this.k, (Object) 3)) {
                this.j = (byte[]) bArr.clone();
                this.k = Integer.valueOf(i);
            }
        }

        public final void b(@Nullable String str) {
            this.c = str;
        }

        public final void c(@Nullable String str) {
            this.b = str;
        }

        public final void d(@Nullable String str) {
            this.x = str;
        }

        public final void e(@Nullable String str) {
            this.y = str;
        }

        public final void f(@Nullable String str) {
            this.g = str;
        }

        public final void g(@Nullable String str) {
            this.B = str;
        }

        public final void h(@Nullable String str) {
            this.D = str;
        }

        public final void i(@Nullable String str) {
            this.a = str;
        }

        public final void j(@Nullable String str) {
            this.w = str;
        }

        private a(mw0 mw0Var) {
            this.a = mw0Var.b;
            this.b = mw0Var.c;
            this.c = mw0Var.d;
            this.d = mw0Var.e;
            this.e = mw0Var.f;
            this.f = mw0Var.g;
            this.g = mw0Var.h;
            this.h = mw0Var.i;
            this.i = mw0Var.j;
            this.j = mw0Var.k;
            this.k = mw0Var.l;
            this.l = mw0Var.m;
            this.m = mw0Var.n;
            this.n = mw0Var.o;
            this.o = mw0Var.p;
            this.p = mw0Var.q;
            this.q = mw0Var.s;
            this.r = mw0Var.t;
            this.s = mw0Var.u;
            this.t = mw0Var.v;
            this.u = mw0Var.w;
            this.v = mw0Var.x;
            this.w = mw0Var.y;
            this.x = mw0Var.z;
            this.y = mw0Var.A;
            this.z = mw0Var.B;
            this.A = mw0Var.C;
            this.B = mw0Var.D;
            this.C = mw0Var.E;
            this.D = mw0Var.F;
            this.E = mw0Var.G;
        }

        public final a b(@IntRange(from = 1, to = 12) @Nullable Integer num) {
            this.r = num;
            return this;
        }

        public final void c(@Nullable Integer num) {
            this.q = num;
        }

        public final void d(@IntRange(from = 1, to = 31) @Nullable Integer num) {
            this.v = num;
        }

        public final void e(@IntRange(from = 1, to = 12) @Nullable Integer num) {
            this.u = num;
        }

        public final void f(@Nullable Integer num) {
            this.t = num;
        }

        public final void g(@Nullable Integer num) {
            this.n = num;
        }

        public final a h(@Nullable Integer num) {
            this.m = num;
            return this;
        }

        public final a a(@Nullable mw0 mw0Var) {
            if (mw0Var == null) {
                return this;
            }
            CharSequence charSequence = mw0Var.b;
            if (charSequence != null) {
                this.a = charSequence;
            }
            CharSequence charSequence2 = mw0Var.c;
            if (charSequence2 != null) {
                this.b = charSequence2;
            }
            CharSequence charSequence3 = mw0Var.d;
            if (charSequence3 != null) {
                this.c = charSequence3;
            }
            CharSequence charSequence4 = mw0Var.e;
            if (charSequence4 != null) {
                this.d = charSequence4;
            }
            CharSequence charSequence5 = mw0Var.f;
            if (charSequence5 != null) {
                this.e = charSequence5;
            }
            CharSequence charSequence6 = mw0Var.g;
            if (charSequence6 != null) {
                this.f = charSequence6;
            }
            CharSequence charSequence7 = mw0Var.h;
            if (charSequence7 != null) {
                this.g = charSequence7;
            }
            kn1 kn1Var = mw0Var.i;
            if (kn1Var != null) {
                this.h = kn1Var;
            }
            kn1 kn1Var2 = mw0Var.j;
            if (kn1Var2 != null) {
                this.i = kn1Var2;
            }
            byte[] bArr = mw0Var.k;
            if (bArr != null) {
                Integer num = mw0Var.l;
                this.j = (byte[]) bArr.clone();
                this.k = num;
            }
            Uri uri = mw0Var.m;
            if (uri != null) {
                this.l = uri;
            }
            Integer num2 = mw0Var.n;
            if (num2 != null) {
                this.m = num2;
            }
            Integer num3 = mw0Var.o;
            if (num3 != null) {
                this.n = num3;
            }
            Integer num4 = mw0Var.p;
            if (num4 != null) {
                this.o = num4;
            }
            Boolean bool = mw0Var.q;
            if (bool != null) {
                this.p = bool;
            }
            Integer num5 = mw0Var.r;
            if (num5 != null) {
                this.q = num5;
            }
            Integer num6 = mw0Var.s;
            if (num6 != null) {
                this.q = num6;
            }
            Integer num7 = mw0Var.t;
            if (num7 != null) {
                this.r = num7;
            }
            Integer num8 = mw0Var.u;
            if (num8 != null) {
                this.s = num8;
            }
            Integer num9 = mw0Var.v;
            if (num9 != null) {
                this.t = num9;
            }
            Integer num10 = mw0Var.w;
            if (num10 != null) {
                this.u = num10;
            }
            Integer num11 = mw0Var.x;
            if (num11 != null) {
                this.v = num11;
            }
            CharSequence charSequence8 = mw0Var.y;
            if (charSequence8 != null) {
                this.w = charSequence8;
            }
            CharSequence charSequence9 = mw0Var.z;
            if (charSequence9 != null) {
                this.x = charSequence9;
            }
            CharSequence charSequence10 = mw0Var.A;
            if (charSequence10 != null) {
                this.y = charSequence10;
            }
            Integer num12 = mw0Var.B;
            if (num12 != null) {
                this.z = num12;
            }
            Integer num13 = mw0Var.C;
            if (num13 != null) {
                this.A = num13;
            }
            CharSequence charSequence11 = mw0Var.D;
            if (charSequence11 != null) {
                this.B = charSequence11;
            }
            CharSequence charSequence12 = mw0Var.E;
            if (charSequence12 != null) {
                this.C = charSequence12;
            }
            CharSequence charSequence13 = mw0Var.F;
            if (charSequence13 != null) {
                this.D = charSequence13;
            }
            Bundle bundle = mw0Var.G;
            if (bundle != null) {
                this.E = bundle;
            }
            return this;
        }

        public final void a(@Nullable String str) {
            this.d = str;
        }

        public final void a(@IntRange(from = 1, to = 31) @Nullable Integer num) {
            this.s = num;
        }

        public final mw0 a() {
            return new mw0(this);
        }
    }

    public final a a() {
        return new a();
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || mw0.class != obj.getClass()) {
            return false;
        }
        mw0 mw0Var = (mw0) obj;
        return f92.a(this.b, mw0Var.b) && f92.a(this.c, mw0Var.c) && f92.a(this.d, mw0Var.d) && f92.a(this.e, mw0Var.e) && f92.a(this.f, mw0Var.f) && f92.a(this.g, mw0Var.g) && f92.a(this.h, mw0Var.h) && f92.a(this.i, mw0Var.i) && f92.a(this.j, mw0Var.j) && Arrays.equals(this.k, mw0Var.k) && f92.a(this.l, mw0Var.l) && f92.a(this.m, mw0Var.m) && f92.a(this.n, mw0Var.n) && f92.a(this.o, mw0Var.o) && f92.a(this.p, mw0Var.p) && f92.a(this.q, mw0Var.q) && f92.a(this.s, mw0Var.s) && f92.a(this.t, mw0Var.t) && f92.a(this.u, mw0Var.u) && f92.a(this.v, mw0Var.v) && f92.a(this.w, mw0Var.w) && f92.a(this.x, mw0Var.x) && f92.a(this.y, mw0Var.y) && f92.a(this.z, mw0Var.z) && f92.a(this.A, mw0Var.A) && f92.a(this.B, mw0Var.B) && f92.a(this.C, mw0Var.C) && f92.a(this.D, mw0Var.D) && f92.a(this.E, mw0Var.E) && f92.a(this.F, mw0Var.F);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, Integer.valueOf(Arrays.hashCode(this.k)), this.l, this.m, this.n, this.o, this.p, this.q, this.s, this.t, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B, this.C, this.D, this.E, this.F});
    }

    private mw0(a aVar) {
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
        Integer num = aVar.q;
        this.r = num;
        this.s = num;
        this.t = aVar.r;
        this.u = aVar.s;
        this.v = aVar.t;
        this.w = aVar.u;
        this.x = aVar.v;
        this.y = aVar.w;
        this.z = aVar.x;
        this.A = aVar.y;
        this.B = aVar.z;
        this.C = aVar.A;
        this.D = aVar.B;
        this.E = aVar.C;
        this.F = aVar.D;
        this.G = aVar.E;
    }

    public static mw0 a(Bundle bundle) {
        Bundle bundle2;
        Bundle bundle3;
        a aVar = new a();
        aVar.a = bundle.getCharSequence(Integer.toString(0, 36));
        aVar.b = bundle.getCharSequence(Integer.toString(1, 36));
        aVar.c = bundle.getCharSequence(Integer.toString(2, 36));
        aVar.d = bundle.getCharSequence(Integer.toString(3, 36));
        aVar.e = bundle.getCharSequence(Integer.toString(4, 36));
        aVar.f = bundle.getCharSequence(Integer.toString(5, 36));
        aVar.g = bundle.getCharSequence(Integer.toString(6, 36));
        byte[] byteArray = bundle.getByteArray(Integer.toString(10, 36));
        Integer numValueOf = bundle.containsKey(Integer.toString(29, 36)) ? Integer.valueOf(bundle.getInt(Integer.toString(29, 36))) : null;
        aVar.j = byteArray != null ? (byte[]) byteArray.clone() : null;
        aVar.k = numValueOf;
        aVar.l = (Uri) bundle.getParcelable(Integer.toString(11, 36));
        aVar.w = bundle.getCharSequence(Integer.toString(22, 36));
        aVar.x = bundle.getCharSequence(Integer.toString(23, 36));
        aVar.y = bundle.getCharSequence(Integer.toString(24, 36));
        aVar.B = bundle.getCharSequence(Integer.toString(27, 36));
        aVar.C = bundle.getCharSequence(Integer.toString(28, 36));
        aVar.D = bundle.getCharSequence(Integer.toString(30, 36));
        aVar.E = bundle.getBundle(Integer.toString(1000, 36));
        if (bundle.containsKey(Integer.toString(8, 36)) && (bundle3 = bundle.getBundle(Integer.toString(8, 36))) != null) {
            aVar.h = (kn1) kn1.b.fromBundle(bundle3);
        }
        if (bundle.containsKey(Integer.toString(9, 36)) && (bundle2 = bundle.getBundle(Integer.toString(9, 36))) != null) {
            aVar.i = (kn1) kn1.b.fromBundle(bundle2);
        }
        if (bundle.containsKey(Integer.toString(12, 36))) {
            aVar.m = Integer.valueOf(bundle.getInt(Integer.toString(12, 36)));
        }
        if (bundle.containsKey(Integer.toString(13, 36))) {
            aVar.n = Integer.valueOf(bundle.getInt(Integer.toString(13, 36)));
        }
        if (bundle.containsKey(Integer.toString(14, 36))) {
            aVar.o = Integer.valueOf(bundle.getInt(Integer.toString(14, 36)));
        }
        if (bundle.containsKey(Integer.toString(15, 36))) {
            aVar.p = Boolean.valueOf(bundle.getBoolean(Integer.toString(15, 36)));
        }
        if (bundle.containsKey(Integer.toString(16, 36))) {
            aVar.q = Integer.valueOf(bundle.getInt(Integer.toString(16, 36)));
        }
        if (bundle.containsKey(Integer.toString(17, 36))) {
            aVar.r = Integer.valueOf(bundle.getInt(Integer.toString(17, 36)));
        }
        if (bundle.containsKey(Integer.toString(18, 36))) {
            aVar.s = Integer.valueOf(bundle.getInt(Integer.toString(18, 36)));
        }
        if (bundle.containsKey(Integer.toString(19, 36))) {
            aVar.t = Integer.valueOf(bundle.getInt(Integer.toString(19, 36)));
        }
        if (bundle.containsKey(Integer.toString(20, 36))) {
            aVar.u = Integer.valueOf(bundle.getInt(Integer.toString(20, 36)));
        }
        if (bundle.containsKey(Integer.toString(21, 36))) {
            aVar.v = Integer.valueOf(bundle.getInt(Integer.toString(21, 36)));
        }
        if (bundle.containsKey(Integer.toString(25, 36))) {
            aVar.z = Integer.valueOf(bundle.getInt(Integer.toString(25, 36)));
        }
        if (bundle.containsKey(Integer.toString(26, 36))) {
            aVar.A = Integer.valueOf(bundle.getInt(Integer.toString(26, 36)));
        }
        return new mw0(aVar);
    }
}
