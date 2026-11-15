package com.yandex.div.core.view2.items;

import android.util.DisplayMetrics;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import defpackage.ae5;
import defpackage.xi;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class c {
    public static final b b = new b(null);
    public final int a;

    public static final class a extends c {
        public final int c;
        public final int d;
        public final int e;
        public final int f;
        public final DisplayMetrics g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i, int i2, int i3, int i4, DisplayMetrics displayMetrics) {
            super(i2, null);
            y45.j(displayMetrics, "metrics");
            this.c = i;
            this.d = i2;
            this.e = i3;
            this.f = i4;
            this.g = displayMetrics;
        }

        @Override
        public int b(int i) {
            if (this.a <= 0) {
                return -1;
            }
            return Math.min(this.c + i, this.d - 1);
        }

        @Override
        public int c(int i) {
            return Math.min(Math.max(0, this.f + BaseDivViewExtensionsKt.L(Integer.valueOf(i), this.g)), this.e);
        }

        @Override
        public int d(int i) {
            if (this.a <= 0) {
                return -1;
            }
            return Math.max(0, this.c - i);
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a(String str, int i, int i2, int i3, int i4, DisplayMetrics displayMetrics) {
            y45.j(displayMetrics, "metrics");
            if (str == null ? true : y45.e(str, "clamp")) {
                return new a(i, i2, i3, i4, displayMetrics);
            }
            if (y45.e(str, "ring")) {
                return new C0292c(i, i2, i3, i4, displayMetrics);
            }
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                xi.i("Unsupported overflow " + str);
            }
            return new a(i, i2, i3, i4, displayMetrics);
        }

        public b() {
        }
    }

    public static final class C0292c extends c {
        public final int c;
        public final int d;
        public final int e;
        public final int f;
        public final DisplayMetrics g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0292c(int i, int i2, int i3, int i4, DisplayMetrics displayMetrics) {
            super(i2, null);
            y45.j(displayMetrics, "metrics");
            this.c = i;
            this.d = i2;
            this.e = i3;
            this.f = i4;
            this.g = displayMetrics;
        }

        @Override
        public int b(int i) {
            if (this.a <= 0) {
                return -1;
            }
            return (this.c + i) % this.d;
        }

        @Override
        public int c(int i) {
            int iL = this.f + BaseDivViewExtensionsKt.L(Integer.valueOf(i), this.g);
            int i2 = this.e;
            int i3 = iL % i2;
            return i3 < 0 ? i3 + i2 : i3;
        }

        @Override
        public int d(int i) {
            if (this.a <= 0) {
                return -1;
            }
            int i2 = this.c - i;
            int i3 = this.d;
            int i4 = i2 % i3;
            return (i3 & (((i4 ^ i3) & ((-i4) | i4)) >> 31)) + i4;
        }
    }

    public c(int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(i);
    }

    public abstract int b(int i);

    public abstract int c(int i);

    public abstract int d(int i);

    public c(int i) {
        this.a = i;
    }
}
