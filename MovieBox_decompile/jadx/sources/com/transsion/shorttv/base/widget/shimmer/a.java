package com.transsion.shorttv.base.widget.shimmer;

import android.content.res.TypedArray;
import android.graphics.RectF;
import androidx.core.view.ViewCompat;
import com.transsion.shorttv.R$styleable;

public class a {

    final float[] f50925a = new float[4];

    final int[] f50926b = new int[4];

    final RectF f50927c = new RectF();

    int f50928d = 0;

    int f50929e = -1;

    int f50930f = 1291845631;

    int f50931g = 0;

    int f50932h = 0;

    int f50933i = 0;

    float f50934j = 1.0f;

    float f50935k = 1.0f;

    float f50936l = 0.0f;

    float f50937m = 0.5f;

    float f50938n = 20.0f;

    boolean f50939o = true;

    boolean f50940p = true;

    boolean f50941q = true;

    int f50942r = -1;

    int f50943s = 1;

    long f50944t = 1000;

    long f50945u;

    public static class C0631a extends b {
        public C0631a() {
            this.f50946a.f50941q = true;
        }

        @Override
        public C0631a d() {
            return this;
        }
    }

    public static abstract class b {

        final a f50946a = new a();

        private static float b(float f10, float f11, float f12) {
            return Math.min(f11, Math.max(f10, f12));
        }

        public a a() {
            this.f50946a.b();
            this.f50946a.c();
            return this.f50946a;
        }

        b c(TypedArray typedArray) {
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_clip_to_children)) {
                g(typedArray.getBoolean(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_clip_to_children, this.f50946a.f50939o));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_auto_start)) {
                e(typedArray.getBoolean(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_auto_start, this.f50946a.f50940p));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_base_alpha)) {
                f(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_base_alpha, 0.3f));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_highlight_alpha)) {
                n(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_highlight_alpha, 1.0f));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_duration)) {
                j(typedArray.getInt(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_duration, (int) this.f50946a.f50944t));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_repeat_count)) {
                p(typedArray.getInt(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_repeat_count, this.f50946a.f50942r));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_repeat_delay)) {
                q(typedArray.getInt(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_repeat_delay, (int) this.f50946a.f50945u));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_repeat_mode)) {
                r(typedArray.getInt(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_repeat_mode, this.f50946a.f50943s));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_direction)) {
                int i10 = typedArray.getInt(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_direction, this.f50946a.f50928d);
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
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_shape)) {
                if (typedArray.getInt(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_shape, this.f50946a.f50931g) != 1) {
                    s(0);
                } else {
                    s(1);
                }
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_dropoff)) {
                i(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_dropoff, this.f50946a.f50937m));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_fixed_width)) {
                l(typedArray.getDimensionPixelSize(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_fixed_width, this.f50946a.f50932h));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_fixed_height)) {
                k(typedArray.getDimensionPixelSize(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_fixed_height, this.f50946a.f50933i));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_intensity)) {
                o(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_intensity, this.f50946a.f50936l));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_width_ratio)) {
                u(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_width_ratio, this.f50946a.f50934j));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_height_ratio)) {
                m(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_height_ratio, this.f50946a.f50935k));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_tilt)) {
                t(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_tilt, this.f50946a.f50938n));
            }
            return d();
        }

        protected abstract b d();

        public b e(boolean z10) {
            this.f50946a.f50940p = z10;
            return d();
        }

        public b f(float f10) {
            int iB = (int) (b(0.0f, 1.0f, f10) * 255.0f);
            a aVar = this.f50946a;
            aVar.f50930f = (iB << 24) | (aVar.f50930f & 16777215);
            return d();
        }

        public b g(boolean z10) {
            this.f50946a.f50939o = z10;
            return d();
        }

        public b h(int i10) {
            this.f50946a.f50928d = i10;
            return d();
        }

        public b i(float f10) {
            if (f10 >= 0.0f) {
                this.f50946a.f50937m = f10;
                return d();
            }
            throw new IllegalArgumentException("Given invalid dropoff value: " + f10);
        }

        public b j(long j10) {
            if (j10 >= 0) {
                this.f50946a.f50944t = j10;
                return d();
            }
            throw new IllegalArgumentException("Given a negative duration: " + j10);
        }

        public b k(int i10) {
            if (i10 >= 0) {
                this.f50946a.f50933i = i10;
                return d();
            }
            throw new IllegalArgumentException("Given invalid height: " + i10);
        }

        public b l(int i10) {
            if (i10 >= 0) {
                this.f50946a.f50932h = i10;
                return d();
            }
            throw new IllegalArgumentException("Given invalid width: " + i10);
        }

        public b m(float f10) {
            if (f10 >= 0.0f) {
                this.f50946a.f50935k = f10;
                return d();
            }
            throw new IllegalArgumentException("Given invalid height ratio: " + f10);
        }

        public b n(float f10) {
            int iB = (int) (b(0.0f, 1.0f, f10) * 255.0f);
            a aVar = this.f50946a;
            aVar.f50929e = (iB << 24) | (aVar.f50929e & 16777215);
            return d();
        }

        public b o(float f10) {
            if (f10 >= 0.0f) {
                this.f50946a.f50936l = f10;
                return d();
            }
            throw new IllegalArgumentException("Given invalid intensity value: " + f10);
        }

        public b p(int i10) {
            this.f50946a.f50942r = i10;
            return d();
        }

        public b q(long j10) {
            if (j10 >= 0) {
                this.f50946a.f50945u = j10;
                return d();
            }
            throw new IllegalArgumentException("Given a negative repeat delay: " + j10);
        }

        public b r(int i10) {
            this.f50946a.f50943s = i10;
            return d();
        }

        public b s(int i10) {
            this.f50946a.f50931g = i10;
            return d();
        }

        public b t(float f10) {
            this.f50946a.f50938n = f10;
            return d();
        }

        public b u(float f10) {
            if (f10 >= 0.0f) {
                this.f50946a.f50934j = f10;
                return d();
            }
            throw new IllegalArgumentException("Given invalid width ratio: " + f10);
        }
    }

    public static class c extends b {
        public c() {
            this.f50946a.f50941q = false;
        }

        @Override
        public c c(TypedArray typedArray) {
            super.c(typedArray);
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_base_color)) {
                x(typedArray.getColor(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_base_color, this.f50946a.f50930f));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_highlight_color)) {
                y(typedArray.getColor(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_highlight_color, this.f50946a.f50929e));
            }
            return d();
        }

        @Override
        public c d() {
            return this;
        }

        public c x(int i10) {
            a aVar = this.f50946a;
            aVar.f50930f = (i10 & 16777215) | (aVar.f50930f & ViewCompat.MEASURED_STATE_MASK);
            return d();
        }

        public c y(int i10) {
            this.f50946a.f50929e = i10;
            return d();
        }
    }

    a() {
    }

    int a(int i10) {
        int i11 = this.f50933i;
        return i11 > 0 ? i11 : Math.round(this.f50935k * i10);
    }

    void b() {
        if (this.f50931g != 1) {
            int[] iArr = this.f50926b;
            int i10 = this.f50930f;
            iArr[0] = i10;
            int i11 = this.f50929e;
            iArr[1] = i11;
            iArr[2] = i11;
            iArr[3] = i10;
            return;
        }
        int[] iArr2 = this.f50926b;
        int i12 = this.f50929e;
        iArr2[0] = i12;
        iArr2[1] = i12;
        int i13 = this.f50930f;
        iArr2[2] = i13;
        iArr2[3] = i13;
    }

    void c() {
        if (this.f50931g != 1) {
            this.f50925a[0] = Math.max(((1.0f - this.f50936l) - this.f50937m) / 2.0f, 0.0f);
            this.f50925a[1] = Math.max(((1.0f - this.f50936l) - 0.001f) / 2.0f, 0.0f);
            this.f50925a[2] = Math.min(((this.f50936l + 1.0f) + 0.001f) / 2.0f, 1.0f);
            this.f50925a[3] = Math.min(((this.f50936l + 1.0f) + this.f50937m) / 2.0f, 1.0f);
            return;
        }
        float[] fArr = this.f50925a;
        fArr[0] = 0.0f;
        fArr[1] = Math.min(this.f50936l, 1.0f);
        this.f50925a[2] = Math.min(this.f50936l + this.f50937m, 1.0f);
        this.f50925a[3] = 1.0f;
    }

    int d(int i10) {
        int i11 = this.f50932h;
        return i11 > 0 ? i11 : Math.round(this.f50934j * i10);
    }
}
