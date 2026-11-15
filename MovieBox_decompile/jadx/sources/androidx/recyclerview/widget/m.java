package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

public abstract class m {

    protected final RecyclerView.m f14092a;

    private int f14093b;

    final Rect f14094c;

    class a extends m {
        a(RecyclerView.m mVar) {
            super(mVar, null);
        }

        @Override
        public int d(View view) {
            return this.f14092a.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) view.getLayoutParams())).rightMargin;
        }

        @Override
        public int e(View view) {
            RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
            return this.f14092a.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) nVar).leftMargin + ((ViewGroup.MarginLayoutParams) nVar).rightMargin;
        }

        @Override
        public int f(View view) {
            RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
            return this.f14092a.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) nVar).topMargin + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin;
        }

        @Override
        public int g(View view) {
            return this.f14092a.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) view.getLayoutParams())).leftMargin;
        }

        @Override
        public int h() {
            return this.f14092a.getWidth();
        }

        @Override
        public int i() {
            return this.f14092a.getWidth() - this.f14092a.getPaddingRight();
        }

        @Override
        public int j() {
            return this.f14092a.getPaddingRight();
        }

        @Override
        public int k() {
            return this.f14092a.getWidthMode();
        }

        @Override
        public int l() {
            return this.f14092a.getHeightMode();
        }

        @Override
        public int m() {
            return this.f14092a.getPaddingLeft();
        }

        @Override
        public int n() {
            return (this.f14092a.getWidth() - this.f14092a.getPaddingLeft()) - this.f14092a.getPaddingRight();
        }

        @Override
        public int p(View view) {
            this.f14092a.getTransformedBoundingBox(view, true, this.f14094c);
            return this.f14094c.right;
        }

        @Override
        public int q(View view) {
            this.f14092a.getTransformedBoundingBox(view, true, this.f14094c);
            return this.f14094c.left;
        }

        @Override
        public void r(int i10) {
            this.f14092a.offsetChildrenHorizontal(i10);
        }
    }

    class b extends m {
        b(RecyclerView.m mVar) {
            super(mVar, null);
        }

        @Override
        public int d(View view) {
            return this.f14092a.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) view.getLayoutParams())).bottomMargin;
        }

        @Override
        public int e(View view) {
            RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
            return this.f14092a.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) nVar).topMargin + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin;
        }

        @Override
        public int f(View view) {
            RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
            return this.f14092a.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) nVar).leftMargin + ((ViewGroup.MarginLayoutParams) nVar).rightMargin;
        }

        @Override
        public int g(View view) {
            return this.f14092a.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) view.getLayoutParams())).topMargin;
        }

        @Override
        public int h() {
            return this.f14092a.getHeight();
        }

        @Override
        public int i() {
            return this.f14092a.getHeight() - this.f14092a.getPaddingBottom();
        }

        @Override
        public int j() {
            return this.f14092a.getPaddingBottom();
        }

        @Override
        public int k() {
            return this.f14092a.getHeightMode();
        }

        @Override
        public int l() {
            return this.f14092a.getWidthMode();
        }

        @Override
        public int m() {
            return this.f14092a.getPaddingTop();
        }

        @Override
        public int n() {
            return (this.f14092a.getHeight() - this.f14092a.getPaddingTop()) - this.f14092a.getPaddingBottom();
        }

        @Override
        public int p(View view) {
            this.f14092a.getTransformedBoundingBox(view, true, this.f14094c);
            return this.f14094c.bottom;
        }

        @Override
        public int q(View view) {
            this.f14092a.getTransformedBoundingBox(view, true, this.f14094c);
            return this.f14094c.top;
        }

        @Override
        public void r(int i10) {
            this.f14092a.offsetChildrenVertical(i10);
        }
    }

    m(RecyclerView.m mVar, a aVar) {
        this(mVar);
    }

    public static m a(RecyclerView.m mVar) {
        return new a(mVar);
    }

    public static m b(RecyclerView.m mVar, int i10) {
        if (i10 == 0) {
            return a(mVar);
        }
        if (i10 == 1) {
            return c(mVar);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public static m c(RecyclerView.m mVar) {
        return new b(mVar);
    }

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f(View view);

    public abstract int g(View view);

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public abstract int m();

    public abstract int n();

    public int o() {
        if (Integer.MIN_VALUE == this.f14093b) {
            return 0;
        }
        return n() - this.f14093b;
    }

    public abstract int p(View view);

    public abstract int q(View view);

    public abstract void r(int i10);

    public void s() {
        this.f14093b = n();
    }

    private m(RecyclerView.m mVar) {
        this.f14093b = Integer.MIN_VALUE;
        this.f14094c = new Rect();
        this.f14092a = mVar;
    }
}
