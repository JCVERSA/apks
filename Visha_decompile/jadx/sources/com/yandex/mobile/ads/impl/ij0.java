package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.s86;
import defpackage.wn8;
import defpackage.y45;

public abstract class ij0 {
    private final float a;

    public static final class d {
        private final int a;
        private final int b;

        public d(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        public final int a() {
            return this.b;
        }

        public final int b() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.a == dVar.a && this.b == dVar.b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
        }

        public final String toString() {
            return "Size(width=" + this.a + ", height=" + this.b + ")";
        }
    }

    public ij0(float f) {
        this.a = a(f);
    }

    public final float a() {
        return this.a;
    }

    public abstract float a(float f);

    public abstract d a(Context context, int i, int i2, int i3);

    public static final class b extends ij0 {
        public b(float f) {
            super(f);
        }

        @Override
        public final d a(Context context, int i, int i2, int i3) {
            y45.j(context, "context");
            int iC = s86.c(i * a());
            return new d(iC, s86.c(i3 * (iC / i2)));
        }

        @Override
        public final float a(float f) {
            return wn8.j(f, 0.01f, 1.0f);
        }
    }

    public static final class a extends ij0 {
        public a(float f) {
            super(f);
        }

        @Override
        public final d a(Context context, int i, int i2, int i3) {
            y45.j(context, "context");
            int iG = wn8.g(wh2.a(context, a()), i);
            return new d(iG, s86.c(i3 * (iG / i2)));
        }

        @Override
        public final float a(float f) {
            return wn8.c(f, 10.0f);
        }
    }

    public static final class c extends ij0 {
        public c(float f) {
            super(f);
        }

        @Override
        public final d a(Context context, int i, int i2, int i3) {
            y45.j(context, "context");
            int iA = wh2.a(context, 140);
            int iC = s86.c(i * a());
            if (i2 > iC) {
                i3 = s86.c(i3 / (i2 / iC));
                i2 = iC;
            }
            if (i3 > iA) {
                i2 = s86.c(i2 / (i3 / iA));
            } else {
                iA = i3;
            }
            return new d(i2, iA);
        }

        @Override
        public final float a(float f) {
            return wn8.j(f, 0.01f, 1.0f);
        }
    }
}
