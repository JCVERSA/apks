package com.transsion.shorttv_pugc.base.widget.shimmer;

import android.content.res.TypedArray;
import android.graphics.RectF;
import androidx.core.view.ViewCompat;
import com.transsion.shorttv.R$styleable;

public class a {

    final float[] f51905a = new float[4];

    final int[] f51906b = new int[4];

    final RectF f51907c = new RectF();

    int f51908d = 0;

    int f51909e = -1;

    int f51910f = 1291845631;

    int f51911g = 0;

    int f51912h = 0;

    int f51913i = 0;

    float f51914j = 1.0f;

    float f51915k = 1.0f;

    float f51916l = 0.0f;

    float f51917m = 0.5f;

    float f51918n = 20.0f;

    boolean f51919o = true;

    boolean f51920p = true;

    boolean f51921q = true;

    int f51922r = -1;

    int f51923s = 1;

    long f51924t = 1000;

    long f51925u;

    public static class C0640a extends b {
        public C0640a() {
            this.f51926a.f51921q = true;
        }

        @Override
        public C0640a d() {
            return this;
        }
    }

    public static abstract class b {

        final a f51926a = new a();

        private static float b(float f10, float f11, float f12) {
            return Math.min(f11, Math.max(f10, f12));
        }

        public a a() {
            this.f51926a.b();
            this.f51926a.c();
            return this.f51926a;
        }

        b c(TypedArray typedArray) {
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_clip_to_children)) {
                g(typedArray.getBoolean(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_clip_to_children, this.f51926a.f51919o));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_auto_start)) {
                e(typedArray.getBoolean(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_auto_start, this.f51926a.f51920p));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_base_alpha)) {
                f(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_base_alpha, 0.3f));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_highlight_alpha)) {
                n(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_highlight_alpha, 1.0f));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_duration)) {
                j(typedArray.getInt(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_duration, (int) this.f51926a.f51924t));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_repeat_count)) {
                p(typedArray.getInt(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_repeat_count, this.f51926a.f51922r));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_repeat_delay)) {
                q(typedArray.getInt(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_repeat_delay, (int) this.f51926a.f51925u));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_repeat_mode)) {
                r(typedArray.getInt(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_repeat_mode, this.f51926a.f51923s));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_direction)) {
                int i10 = typedArray.getInt(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_direction, this.f51926a.f51908d);
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
                if (typedArray.getInt(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_shape, this.f51926a.f51911g) != 1) {
                    s(0);
                } else {
                    s(1);
                }
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_dropoff)) {
                i(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_dropoff, this.f51926a.f51917m));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_fixed_width)) {
                l(typedArray.getDimensionPixelSize(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_fixed_width, this.f51926a.f51912h));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_fixed_height)) {
                k(typedArray.getDimensionPixelSize(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_fixed_height, this.f51926a.f51913i));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_intensity)) {
                o(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_intensity, this.f51926a.f51916l));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_width_ratio)) {
                u(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_width_ratio, this.f51926a.f51914j));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_height_ratio)) {
                m(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_height_ratio, this.f51926a.f51915k));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_tilt)) {
                t(typedArray.getFloat(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_tilt, this.f51926a.f51918n));
            }
            return d();
        }

        protected abstract b d();

        public b e(boolean z10) {
            this.f51926a.f51920p = z10;
            return d();
        }

        public b f(float f10) {
            int iB = (int) (b(0.0f, 1.0f, f10) * 255.0f);
            a aVar = this.f51926a;
            aVar.f51910f = (iB << 24) | (aVar.f51910f & 16777215);
            return d();
        }

        public b g(boolean z10) {
            this.f51926a.f51919o = z10;
            return d();
        }

        public b h(int i10) {
            this.f51926a.f51908d = i10;
            return d();
        }

        public b i(float f10) {
            if (f10 >= 0.0f) {
                this.f51926a.f51917m = f10;
                return d();
            }
            throw new IllegalArgumentException("Given invalid dropoff value: " + f10);
        }

        public b j(long j10) {
            if (j10 >= 0) {
                this.f51926a.f51924t = j10;
                return d();
            }
            throw new IllegalArgumentException("Given a negative duration: " + j10);
        }

        public b k(int i10) {
            if (i10 >= 0) {
                this.f51926a.f51913i = i10;
                return d();
            }
            throw new IllegalArgumentException("Given invalid height: " + i10);
        }

        public b l(int i10) {
            if (i10 >= 0) {
                this.f51926a.f51912h = i10;
                return d();
            }
            throw new IllegalArgumentException("Given invalid width: " + i10);
        }

        public b m(float f10) {
            if (f10 >= 0.0f) {
                this.f51926a.f51915k = f10;
                return d();
            }
            throw new IllegalArgumentException("Given invalid height ratio: " + f10);
        }

        public b n(float f10) {
            int iB = (int) (b(0.0f, 1.0f, f10) * 255.0f);
            a aVar = this.f51926a;
            aVar.f51909e = (iB << 24) | (aVar.f51909e & 16777215);
            return d();
        }

        public b o(float f10) {
            if (f10 >= 0.0f) {
                this.f51926a.f51916l = f10;
                return d();
            }
            throw new IllegalArgumentException("Given invalid intensity value: " + f10);
        }

        public b p(int i10) {
            this.f51926a.f51922r = i10;
            return d();
        }

        public b q(long j10) {
            if (j10 >= 0) {
                this.f51926a.f51925u = j10;
                return d();
            }
            throw new IllegalArgumentException("Given a negative repeat delay: " + j10);
        }

        public b r(int i10) {
            this.f51926a.f51923s = i10;
            return d();
        }

        public b s(int i10) {
            this.f51926a.f51911g = i10;
            return d();
        }

        public b t(float f10) {
            this.f51926a.f51918n = f10;
            return d();
        }

        public b u(float f10) {
            if (f10 >= 0.0f) {
                this.f51926a.f51914j = f10;
                return d();
            }
            throw new IllegalArgumentException("Given invalid width ratio: " + f10);
        }
    }

    public static class c extends b {
        public c() {
            this.f51926a.f51921q = false;
        }

        @Override
        public c c(TypedArray typedArray) {
            super.c(typedArray);
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_base_color)) {
                x(typedArray.getColor(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_base_color, this.f51926a.f51910f));
            }
            if (typedArray.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_highlight_color)) {
                y(typedArray.getColor(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_highlight_color, this.f51926a.f51909e));
            }
            return d();
        }

        @Override
        public c d() {
            return this;
        }

        public c x(int i10) {
            a aVar = this.f51926a;
            aVar.f51910f = (i10 & 16777215) | (aVar.f51910f & ViewCompat.MEASURED_STATE_MASK);
            return d();
        }

        public c y(int i10) {
            this.f51926a.f51909e = i10;
            return d();
        }
    }

    a() {
    }

    int a(int i10) {
        int i11 = this.f51913i;
        return i11 > 0 ? i11 : Math.round(this.f51915k * i10);
    }

    void b() {
        if (this.f51911g != 1) {
            int[] iArr = this.f51906b;
            int i10 = this.f51910f;
            iArr[0] = i10;
            int i11 = this.f51909e;
            iArr[1] = i11;
            iArr[2] = i11;
            iArr[3] = i10;
            return;
        }
        int[] iArr2 = this.f51906b;
        int i12 = this.f51909e;
        iArr2[0] = i12;
        iArr2[1] = i12;
        int i13 = this.f51910f;
        iArr2[2] = i13;
        iArr2[3] = i13;
    }

    void c() {
        if (this.f51911g != 1) {
            this.f51905a[0] = Math.max(((1.0f - this.f51916l) - this.f51917m) / 2.0f, 0.0f);
            this.f51905a[1] = Math.max(((1.0f - this.f51916l) - 0.001f) / 2.0f, 0.0f);
            this.f51905a[2] = Math.min(((this.f51916l + 1.0f) + 0.001f) / 2.0f, 1.0f);
            this.f51905a[3] = Math.min(((this.f51916l + 1.0f) + this.f51917m) / 2.0f, 1.0f);
            return;
        }
        float[] fArr = this.f51905a;
        fArr[0] = 0.0f;
        fArr[1] = Math.min(this.f51916l, 1.0f);
        this.f51905a[2] = Math.min(this.f51916l + this.f51917m, 1.0f);
        this.f51905a[3] = 1.0f;
    }

    int d(int i10) {
        int i11 = this.f51912h;
        return i11 > 0 ? i11 : Math.round(this.f51914j * i10);
    }
}
