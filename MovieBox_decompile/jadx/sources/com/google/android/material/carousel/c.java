package com.google.android.material.carousel;

import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

abstract class c {

    final int f27785a;

    class a extends c {

        final CarouselLayoutManager f27786b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(int i10, CarouselLayoutManager carouselLayoutManager) {
            super(i10, null);
            this.f27786b = carouselLayoutManager;
        }

        @Override
        public void a(RectF rectF, RectF rectF2, RectF rectF3) {
            float f10 = rectF2.top;
            float f11 = rectF3.top;
            if (f10 < f11 && rectF2.bottom > f11) {
                float f12 = f11 - f10;
                rectF.top += f12;
                rectF3.top += f12;
            }
            float f13 = rectF2.bottom;
            float f14 = rectF3.bottom;
            if (f13 <= f14 || rectF2.top >= f14) {
                return;
            }
            float f15 = f13 - f14;
            rectF.bottom = Math.max(rectF.bottom - f15, rectF.top);
            rectF2.bottom = Math.max(rectF2.bottom - f15, rectF2.top);
        }

        @Override
        public float e(RecyclerView.n nVar) {
            return ((ViewGroup.MarginLayoutParams) nVar).topMargin + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin;
        }

        @Override
        public RectF f(float f10, float f11, float f12, float f13) {
            return new RectF(0.0f, f12, f11, f10 - f12);
        }

        @Override
        int g() {
            return this.f27786b.getHeight();
        }

        @Override
        int h() {
            return g();
        }

        @Override
        int i() {
            return this.f27786b.getPaddingLeft();
        }

        @Override
        int j() {
            return this.f27786b.getWidth() - this.f27786b.getPaddingRight();
        }

        @Override
        int k() {
            return l();
        }

        @Override
        int l() {
            return 0;
        }

        @Override
        public void m(View view, int i10, int i11) {
            int i12 = i();
            this.f27786b.layoutDecoratedWithMargins(view, i12, i10, i12 + p(view), i11);
        }

        @Override
        public void n(RectF rectF, RectF rectF2, RectF rectF3) {
            if (rectF2.bottom <= rectF3.top) {
                float fFloor = ((float) Math.floor(rectF.bottom)) - 1.0f;
                rectF.bottom = fFloor;
                rectF.top = Math.min(rectF.top, fFloor);
            }
            if (rectF2.top >= rectF3.bottom) {
                float fCeil = ((float) Math.ceil(rectF.top)) + 1.0f;
                rectF.top = fCeil;
                rectF.bottom = Math.max(fCeil, rectF.bottom);
            }
        }

        @Override
        public void o(View view, Rect rect, float f10, float f11) {
            view.offsetTopAndBottom((int) (f11 - (rect.top + f10)));
        }

        int p(View view) {
            RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
            return this.f27786b.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) nVar).leftMargin + ((ViewGroup.MarginLayoutParams) nVar).rightMargin;
        }
    }

    class b extends c {

        final CarouselLayoutManager f27787b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(int i10, CarouselLayoutManager carouselLayoutManager) {
            super(i10, null);
            this.f27787b = carouselLayoutManager;
        }

        @Override
        public void a(RectF rectF, RectF rectF2, RectF rectF3) {
            float f10 = rectF2.left;
            float f11 = rectF3.left;
            if (f10 < f11 && rectF2.right > f11) {
                float f12 = f11 - f10;
                rectF.left += f12;
                rectF2.left += f12;
            }
            float f13 = rectF2.right;
            float f14 = rectF3.right;
            if (f13 <= f14 || rectF2.left >= f14) {
                return;
            }
            float f15 = f13 - f14;
            rectF.right = Math.max(rectF.right - f15, rectF.left);
            rectF2.right = Math.max(rectF2.right - f15, rectF2.left);
        }

        @Override
        public float e(RecyclerView.n nVar) {
            return ((ViewGroup.MarginLayoutParams) nVar).rightMargin + ((ViewGroup.MarginLayoutParams) nVar).leftMargin;
        }

        @Override
        public RectF f(float f10, float f11, float f12, float f13) {
            return new RectF(f13, 0.0f, f11 - f13, f10);
        }

        @Override
        int g() {
            return this.f27787b.getHeight() - this.f27787b.getPaddingBottom();
        }

        @Override
        int h() {
            return this.f27787b.X() ? i() : j();
        }

        @Override
        int i() {
            return 0;
        }

        @Override
        int j() {
            return this.f27787b.getWidth();
        }

        @Override
        int k() {
            return this.f27787b.X() ? j() : i();
        }

        @Override
        int l() {
            return this.f27787b.getPaddingTop();
        }

        @Override
        public void m(View view, int i10, int i11) {
            int iL = l();
            this.f27787b.layoutDecoratedWithMargins(view, i10, iL, i11, iL + p(view));
        }

        @Override
        public void n(RectF rectF, RectF rectF2, RectF rectF3) {
            if (rectF2.right <= rectF3.left) {
                float fFloor = ((float) Math.floor(rectF.right)) - 1.0f;
                rectF.right = fFloor;
                rectF.left = Math.min(rectF.left, fFloor);
            }
            if (rectF2.left >= rectF3.right) {
                float fCeil = ((float) Math.ceil(rectF.left)) + 1.0f;
                rectF.left = fCeil;
                rectF.right = Math.max(fCeil, rectF.right);
            }
        }

        @Override
        public void o(View view, Rect rect, float f10, float f11) {
            view.offsetLeftAndRight((int) (f11 - (rect.left + f10)));
        }

        int p(View view) {
            RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
            return this.f27787b.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) nVar).topMargin + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin;
        }
    }

    c(int i10, a aVar) {
        this(i10);
    }

    private static c b(CarouselLayoutManager carouselLayoutManager) {
        return new b(0, carouselLayoutManager);
    }

    static c c(CarouselLayoutManager carouselLayoutManager, int i10) {
        if (i10 == 0) {
            return b(carouselLayoutManager);
        }
        if (i10 == 1) {
            return d(carouselLayoutManager);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    private static c d(CarouselLayoutManager carouselLayoutManager) {
        return new a(1, carouselLayoutManager);
    }

    abstract void a(RectF rectF, RectF rectF2, RectF rectF3);

    abstract float e(RecyclerView.n nVar);

    abstract RectF f(float f10, float f11, float f12, float f13);

    abstract int g();

    abstract int h();

    abstract int i();

    abstract int j();

    abstract int k();

    abstract int l();

    abstract void m(View view, int i10, int i11);

    abstract void n(RectF rectF, RectF rectF2, RectF rectF3);

    abstract void o(View view, Rect rect, float f10, float f11);

    private c(int i10) {
        this.f27785a = i10;
    }
}
