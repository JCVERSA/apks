package com.transsion.baseui.widget.shimmer;

import android.content.res.TypedArray;
import android.graphics.RectF;
import androidx.core.view.ViewCompat;
import com.transsion.baseui.R$styleable;

public class a {

    final float[] f42512a = new float[4];

    final int[] f42513b = new int[4];

    final RectF f42514c = new RectF();

    int f42515d = 0;

    int f42516e = -1;

    int f42517f = 1291845631;

    int f42518g = 0;

    int f42519h = 0;

    int f42520i = 0;

    float f42521j = 1.0f;

    float f42522k = 1.0f;

    float f42523l = 0.0f;

    float f42524m = 0.5f;

    float f42525n = 20.0f;

    boolean f42526o = true;

    boolean f42527p = true;

    boolean f42528q = true;

    int f42529r = -1;

    int f42530s = 1;

    long f42531t = 1000;

    long f42532u;

    public static class C0584a extends b {
        public C0584a() {
            this.f42533a.f42528q = true;
        }

        @Override
        public C0584a d() {
            return this;
        }
    }

    public static abstract class b {

        final a f42533a = new a();

        private static float b(float f10, float f11, float f12) {
            return Math.min(f11, Math.max(f10, f12));
        }

        public a a() {
            this.f42533a.b();
            this.f42533a.c();
            return this.f42533a;
        }

        b c(TypedArray typedArray) {
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_clip_to_children)) {
                g(typedArray.getBoolean(R$styleable.ShimmerFrameLayout_shimmer_clip_to_children, this.f42533a.f42526o));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_auto_start)) {
                e(typedArray.getBoolean(R$styleable.ShimmerFrameLayout_shimmer_auto_start, this.f42533a.f42527p));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_base_alpha)) {
                f(typedArray.getFloat(R$styleable.ShimmerFrameLayout_shimmer_base_alpha, 0.3f));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_highlight_alpha)) {
                n(typedArray.getFloat(R$styleable.ShimmerFrameLayout_shimmer_highlight_alpha, 1.0f));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_duration)) {
                j(typedArray.getInt(R$styleable.ShimmerFrameLayout_shimmer_duration, (int) this.f42533a.f42531t));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_repeat_count)) {
                p(typedArray.getInt(R$styleable.ShimmerFrameLayout_shimmer_repeat_count, this.f42533a.f42529r));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_repeat_delay)) {
                q(typedArray.getInt(R$styleable.ShimmerFrameLayout_shimmer_repeat_delay, (int) this.f42533a.f42532u));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_repeat_mode)) {
                r(typedArray.getInt(R$styleable.ShimmerFrameLayout_shimmer_repeat_mode, this.f42533a.f42530s));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_direction)) {
                int i10 = typedArray.getInt(R$styleable.ShimmerFrameLayout_shimmer_direction, this.f42533a.f42515d);
                if (i10 == 1) {
                    h(1);
                } else if (i10 == 2) {
                    h(2);
                } else if (i10 != 3) {
                    h(0);
                } else {
                    h(3);
                }
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_shape)) {
                if (typedArray.getInt(R$styleable.ShimmerFrameLayout_shimmer_shape, this.f42533a.f42518g) != 1) {
                    s(0);
                } else {
                    s(1);
                }
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_dropoff)) {
                i(typedArray.getFloat(R$styleable.ShimmerFrameLayout_shimmer_dropoff, this.f42533a.f42524m));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_fixed_width)) {
                l(typedArray.getDimensionPixelSize(R$styleable.ShimmerFrameLayout_shimmer_fixed_width, this.f42533a.f42519h));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_fixed_height)) {
                k(typedArray.getDimensionPixelSize(R$styleable.ShimmerFrameLayout_shimmer_fixed_height, this.f42533a.f42520i));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_intensity)) {
                o(typedArray.getFloat(R$styleable.ShimmerFrameLayout_shimmer_intensity, this.f42533a.f42523l));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_width_ratio)) {
                u(typedArray.getFloat(R$styleable.ShimmerFrameLayout_shimmer_width_ratio, this.f42533a.f42521j));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_height_ratio)) {
                m(typedArray.getFloat(R$styleable.ShimmerFrameLayout_shimmer_height_ratio, this.f42533a.f42522k));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_tilt)) {
                t(typedArray.getFloat(R$styleable.ShimmerFrameLayout_shimmer_tilt, this.f42533a.f42525n));
            }
            return d();
        }

        protected abstract b d();

        public b e(boolean z10) {
            this.f42533a.f42527p = z10;
            return d();
        }

        public b f(float f10) {
            int iB = (int) (b(0.0f, 1.0f, f10) * 255.0f);
            a aVar = this.f42533a;
            aVar.f42517f = (iB << 24) | (aVar.f42517f & 16777215);
            return d();
        }

        public b g(boolean z10) {
            this.f42533a.f42526o = z10;
            return d();
        }

        public b h(int i10) {
            this.f42533a.f42515d = i10;
            return d();
        }

        public b i(float f10) {
            if (f10 >= 0.0f) {
                this.f42533a.f42524m = f10;
                return d();
            }
            throw new IllegalArgumentException("Given invalid dropoff value: " + f10);
        }

        public b j(long j10) {
            if (j10 >= 0) {
                this.f42533a.f42531t = j10;
                return d();
            }
            throw new IllegalArgumentException("Given a negative duration: " + j10);
        }

        public b k(int i10) {
            if (i10 >= 0) {
                this.f42533a.f42520i = i10;
                return d();
            }
            throw new IllegalArgumentException("Given invalid height: " + i10);
        }

        public b l(int i10) {
            if (i10 >= 0) {
                this.f42533a.f42519h = i10;
                return d();
            }
            throw new IllegalArgumentException("Given invalid width: " + i10);
        }

        public b m(float f10) {
            if (f10 >= 0.0f) {
                this.f42533a.f42522k = f10;
                return d();
            }
            throw new IllegalArgumentException("Given invalid height ratio: " + f10);
        }

        public b n(float f10) {
            int iB = (int) (b(0.0f, 1.0f, f10) * 255.0f);
            a aVar = this.f42533a;
            aVar.f42516e = (iB << 24) | (aVar.f42516e & 16777215);
            return d();
        }

        public b o(float f10) {
            if (f10 >= 0.0f) {
                this.f42533a.f42523l = f10;
                return d();
            }
            throw new IllegalArgumentException("Given invalid intensity value: " + f10);
        }

        public b p(int i10) {
            this.f42533a.f42529r = i10;
            return d();
        }

        public b q(long j10) {
            if (j10 >= 0) {
                this.f42533a.f42532u = j10;
                return d();
            }
            throw new IllegalArgumentException("Given a negative repeat delay: " + j10);
        }

        public b r(int i10) {
            this.f42533a.f42530s = i10;
            return d();
        }

        public b s(int i10) {
            this.f42533a.f42518g = i10;
            return d();
        }

        public b t(float f10) {
            this.f42533a.f42525n = f10;
            return d();
        }

        public b u(float f10) {
            if (f10 >= 0.0f) {
                this.f42533a.f42521j = f10;
                return d();
            }
            throw new IllegalArgumentException("Given invalid width ratio: " + f10);
        }
    }

    public static class c extends b {
        public c() {
            this.f42533a.f42528q = false;
        }

        @Override
        public c c(TypedArray typedArray) {
            super.c(typedArray);
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_base_color)) {
                x(typedArray.getColor(R$styleable.ShimmerFrameLayout_shimmer_base_color, this.f42533a.f42517f));
            }
            if (typedArray.hasValue(R$styleable.ShimmerFrameLayout_shimmer_highlight_color)) {
                y(typedArray.getColor(R$styleable.ShimmerFrameLayout_shimmer_highlight_color, this.f42533a.f42516e));
            }
            return d();
        }

        @Override
        public c d() {
            return this;
        }

        public c x(int i10) {
            a aVar = this.f42533a;
            aVar.f42517f = (i10 & 16777215) | (aVar.f42517f & ViewCompat.MEASURED_STATE_MASK);
            return d();
        }

        public c y(int i10) {
            this.f42533a.f42516e = i10;
            return d();
        }
    }

    a() {
    }

    int a(int i10) {
        int i11 = this.f42520i;
        return i11 > 0 ? i11 : Math.round(this.f42522k * i10);
    }

    void b() {
        if (this.f42518g != 1) {
            int[] iArr = this.f42513b;
            int i10 = this.f42517f;
            iArr[0] = i10;
            int i11 = this.f42516e;
            iArr[1] = i11;
            iArr[2] = i11;
            iArr[3] = i10;
            return;
        }
        int[] iArr2 = this.f42513b;
        int i12 = this.f42516e;
        iArr2[0] = i12;
        iArr2[1] = i12;
        int i13 = this.f42517f;
        iArr2[2] = i13;
        iArr2[3] = i13;
    }

    void c() {
        if (this.f42518g != 1) {
            this.f42512a[0] = Math.max(((1.0f - this.f42523l) - this.f42524m) / 2.0f, 0.0f);
            this.f42512a[1] = Math.max(((1.0f - this.f42523l) - 0.001f) / 2.0f, 0.0f);
            this.f42512a[2] = Math.min(((this.f42523l + 1.0f) + 0.001f) / 2.0f, 1.0f);
            this.f42512a[3] = Math.min(((this.f42523l + 1.0f) + this.f42524m) / 2.0f, 1.0f);
            return;
        }
        float[] fArr = this.f42512a;
        fArr[0] = 0.0f;
        fArr[1] = Math.min(this.f42523l, 1.0f);
        this.f42512a[2] = Math.min(this.f42523l + this.f42524m, 1.0f);
        this.f42512a[3] = 1.0f;
    }

    int d(int i10) {
        int i11 = this.f42519h;
        return i11 > 0 ? i11 : Math.round(this.f42521j * i10);
    }
}
