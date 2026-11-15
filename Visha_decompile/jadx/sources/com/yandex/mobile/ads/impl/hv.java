package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Layout;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import com.yandex.mobile.ads.impl.hv;
import com.yandex.mobile.ads.impl.km;
import java.util.Arrays;

public final class hv implements km {
    public static final hv s;
    public static final km.a<hv> t;

    @Nullable
    public final CharSequence b;

    @Nullable
    public final Layout.Alignment c;

    @Nullable
    public final Layout.Alignment d;

    @Nullable
    public final Bitmap e;
    public final float f;
    public final int g;
    public final int h;
    public final float i;
    public final int j;
    public final float k;
    public final float l;
    public final boolean m;
    public final int n;
    public final int o;
    public final float p;
    public final int q;
    public final float r;

    public static final class a {

        @Nullable
        private CharSequence a;

        @Nullable
        private Bitmap b;

        @Nullable
        private Layout.Alignment c;

        @Nullable
        private Layout.Alignment d;
        private float e;
        private int f;
        private int g;
        private float h;
        private int i;
        private int j;
        private float k;
        private float l;
        private float m;
        private boolean n;

        @ColorInt
        private int o;
        private int p;
        private float q;

        public a() {
            this.a = null;
            this.b = null;
            this.c = null;
            this.d = null;
            this.e = -3.4028235E38f;
            this.f = Integer.MIN_VALUE;
            this.g = Integer.MIN_VALUE;
            this.h = -3.4028235E38f;
            this.i = Integer.MIN_VALUE;
            this.j = Integer.MIN_VALUE;
            this.k = -3.4028235E38f;
            this.l = -3.4028235E38f;
            this.m = -3.4028235E38f;
            this.n = false;
            this.o = -16777216;
            this.p = Integer.MIN_VALUE;
        }

        public final a a(Bitmap bitmap) {
            this.b = bitmap;
            return this;
        }

        public final int b() {
            return this.g;
        }

        public final int c() {
            return this.i;
        }

        @Nullable
        public final CharSequence d() {
            return this.a;
        }

        public final a a(float f) {
            this.m = f;
            return this;
        }

        public final a b(float f) {
            this.h = f;
            return this;
        }

        public final void c(float f) {
            this.q = f;
        }

        public final a d(float f) {
            this.l = f;
            return this;
        }

        public final a a(int i, float f) {
            this.e = f;
            this.f = i;
            return this;
        }

        public final a b(int i) {
            this.i = i;
            return this;
        }

        public final a c(int i) {
            this.p = i;
            return this;
        }

        public final void d(@ColorInt int i) {
            this.o = i;
            this.n = true;
        }

        public final a b(@Nullable Layout.Alignment alignment) {
            this.c = alignment;
            return this;
        }

        public final a a(int i) {
            this.g = i;
            return this;
        }

        public final void b(int i, float f) {
            this.k = f;
            this.j = i;
        }

        public final void a(@Nullable Layout.Alignment alignment) {
            this.d = alignment;
        }

        public final a a(CharSequence charSequence) {
            this.a = charSequence;
            return this;
        }

        public final hv a() {
            return new hv(this.a, this.c, this.d, this.b, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q);
        }

        private a(hv hvVar) {
            this.a = hvVar.b;
            this.b = hvVar.e;
            this.c = hvVar.c;
            this.d = hvVar.d;
            this.e = hvVar.f;
            this.f = hvVar.g;
            this.g = hvVar.h;
            this.h = hvVar.i;
            this.i = hvVar.j;
            this.j = hvVar.o;
            this.k = hvVar.p;
            this.l = hvVar.k;
            this.m = hvVar.l;
            this.n = hvVar.m;
            this.o = hvVar.n;
            this.p = hvVar.q;
            this.q = hvVar.r;
        }
    }

    static {
        a aVar = new a();
        aVar.a = "";
        s = aVar.a();
        t = new km.a() {
            @Override
            public final km fromBundle(Bundle bundle) {
                return hv.a(bundle);
            }
        };
    }

    public final a a() {
        return new a();
    }

    public final boolean equals(@Nullable Object obj) {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (this == obj) {
            return true;
        }
        if (obj == null || hv.class != obj.getClass()) {
            return false;
        }
        hv hvVar = (hv) obj;
        return TextUtils.equals(this.b, hvVar.b) && this.c == hvVar.c && this.d == hvVar.d && ((bitmap = this.e) != null ? !((bitmap2 = hvVar.e) == null || !bitmap.sameAs(bitmap2)) : hvVar.e == null) && this.f == hvVar.f && this.g == hvVar.g && this.h == hvVar.h && this.i == hvVar.i && this.j == hvVar.j && this.k == hvVar.k && this.l == hvVar.l && this.m == hvVar.m && this.n == hvVar.n && this.o == hvVar.o && this.p == hvVar.p && this.q == hvVar.q && this.r == hvVar.r;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.b, this.c, this.d, this.e, Float.valueOf(this.f), Integer.valueOf(this.g), Integer.valueOf(this.h), Float.valueOf(this.i), Integer.valueOf(this.j), Float.valueOf(this.k), Float.valueOf(this.l), Boolean.valueOf(this.m), Integer.valueOf(this.n), Integer.valueOf(this.o), Float.valueOf(this.p), Integer.valueOf(this.q), Float.valueOf(this.r)});
    }

    private hv(@Nullable CharSequence charSequence, @Nullable Layout.Alignment alignment, @Nullable Layout.Alignment alignment2, @Nullable Bitmap bitmap, float f, int i, int i2, float f2, int i3, int i4, float f3, float f4, float f5, boolean z, int i5, int i6, float f6) {
        if (charSequence == null) {
            hg.a(bitmap);
        } else {
            hg.a(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.b = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.b = charSequence.toString();
        } else {
            this.b = null;
        }
        this.c = alignment;
        this.d = alignment2;
        this.e = bitmap;
        this.f = f;
        this.g = i;
        this.h = i2;
        this.i = f2;
        this.j = i3;
        this.k = f4;
        this.l = f5;
        this.m = z;
        this.n = i5;
        this.o = i4;
        this.p = f3;
        this.q = i6;
        this.r = f6;
    }

    public static final hv a(Bundle bundle) {
        a aVar = new a();
        CharSequence charSequence = bundle.getCharSequence(Integer.toString(0, 36));
        if (charSequence != null) {
            aVar.a = charSequence;
        }
        Layout.Alignment alignment = (Layout.Alignment) bundle.getSerializable(Integer.toString(1, 36));
        if (alignment != null) {
            aVar.c = alignment;
        }
        Layout.Alignment alignment2 = (Layout.Alignment) bundle.getSerializable(Integer.toString(2, 36));
        if (alignment2 != null) {
            aVar.d = alignment2;
        }
        Bitmap bitmap = (Bitmap) bundle.getParcelable(Integer.toString(3, 36));
        if (bitmap != null) {
            aVar.b = bitmap;
        }
        if (bundle.containsKey(Integer.toString(4, 36)) && bundle.containsKey(Integer.toString(5, 36))) {
            float f = bundle.getFloat(Integer.toString(4, 36));
            int i = bundle.getInt(Integer.toString(5, 36));
            aVar.e = f;
            aVar.f = i;
        }
        if (bundle.containsKey(Integer.toString(6, 36))) {
            aVar.g = bundle.getInt(Integer.toString(6, 36));
        }
        if (bundle.containsKey(Integer.toString(7, 36))) {
            aVar.h = bundle.getFloat(Integer.toString(7, 36));
        }
        if (bundle.containsKey(Integer.toString(8, 36))) {
            aVar.i = bundle.getInt(Integer.toString(8, 36));
        }
        if (bundle.containsKey(Integer.toString(10, 36)) && bundle.containsKey(Integer.toString(9, 36))) {
            float f2 = bundle.getFloat(Integer.toString(10, 36));
            int i2 = bundle.getInt(Integer.toString(9, 36));
            aVar.k = f2;
            aVar.j = i2;
        }
        if (bundle.containsKey(Integer.toString(11, 36))) {
            aVar.l = bundle.getFloat(Integer.toString(11, 36));
        }
        if (bundle.containsKey(Integer.toString(12, 36))) {
            aVar.m = bundle.getFloat(Integer.toString(12, 36));
        }
        if (bundle.containsKey(Integer.toString(13, 36))) {
            aVar.o = bundle.getInt(Integer.toString(13, 36));
            aVar.n = true;
        }
        if (!bundle.getBoolean(Integer.toString(14, 36), false)) {
            aVar.n = false;
        }
        if (bundle.containsKey(Integer.toString(15, 36))) {
            aVar.p = bundle.getInt(Integer.toString(15, 36));
        }
        if (bundle.containsKey(Integer.toString(16, 36))) {
            aVar.q = bundle.getFloat(Integer.toString(16, 36));
        }
        return aVar.a();
    }
}
