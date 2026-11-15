package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;

public class h extends RecyclerView.w {

    protected PointF f14077k;

    private final DisplayMetrics f14078l;

    private float f14080n;

    protected final LinearInterpolator f14075i = new LinearInterpolator();

    protected final DecelerateInterpolator f14076j = new DecelerateInterpolator();

    private boolean f14079m = false;

    protected int f14081o = 0;

    protected int f14082p = 0;

    public h(Context context) {
        this.f14078l = context.getResources().getDisplayMetrics();
    }

    private float A() {
        if (!this.f14079m) {
            this.f14080n = v(this.f14078l);
            this.f14079m = true;
        }
        return this.f14080n;
    }

    private int y(int i10, int i11) {
        int i12 = i10 - i11;
        if (i10 * i12 <= 0) {
            return 0;
        }
        return i12;
    }

    protected int B() {
        PointF pointF = this.f14077k;
        if (pointF != null) {
            float f10 = pointF.y;
            if (f10 != 0.0f) {
                return f10 > 0.0f ? 1 : -1;
            }
        }
        return 0;
    }

    protected void C(RecyclerView.w.a aVar) {
        PointF pointFA = a(f());
        if (pointFA == null || (pointFA.x == 0.0f && pointFA.y == 0.0f)) {
            aVar.b(f());
            r();
            return;
        }
        i(pointFA);
        this.f14077k = pointFA;
        this.f14081o = (int) (pointFA.x * 10000.0f);
        this.f14082p = (int) (pointFA.y * 10000.0f);
        aVar.d((int) (this.f14081o * 1.2f), (int) (this.f14082p * 1.2f), (int) (x(10000) * 1.2f), this.f14075i);
    }

    @Override
    protected void l(int i10, int i11, RecyclerView.x xVar, RecyclerView.w.a aVar) {
        if (c() == 0) {
            r();
            return;
        }
        this.f14081o = y(this.f14081o, i10);
        int iY = y(this.f14082p, i11);
        this.f14082p = iY;
        if (this.f14081o == 0 && iY == 0) {
            C(aVar);
        }
    }

    @Override
    protected void n() {
        this.f14082p = 0;
        this.f14081o = 0;
        this.f14077k = null;
    }

    @Override
    protected void o(View view, RecyclerView.x xVar, RecyclerView.w.a aVar) {
        int iT = t(view, z());
        int iU = u(view, B());
        int iW = w((int) Math.sqrt((iT * iT) + (iU * iU)));
        if (iW > 0) {
            aVar.d(-iT, -iU, iW, this.f14076j);
        }
    }

    public int s(int i10, int i11, int i12, int i13, int i14) {
        if (i14 == -1) {
            return i12 - i10;
        }
        if (i14 != 0) {
            if (i14 == 1) {
                return i13 - i11;
            }
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
        int i15 = i12 - i10;
        if (i15 > 0) {
            return i15;
        }
        int i16 = i13 - i11;
        if (i16 < 0) {
            return i16;
        }
        return 0;
    }

    public int t(View view, int i10) {
        RecyclerView.m mVarE = e();
        if (mVarE == null || !mVarE.canScrollHorizontally()) {
            return 0;
        }
        RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
        return s(mVarE.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) nVar).leftMargin, mVarE.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) nVar).rightMargin, mVarE.getPaddingLeft(), mVarE.getWidth() - mVarE.getPaddingRight(), i10);
    }

    public int u(View view, int i10) {
        RecyclerView.m mVarE = e();
        if (mVarE == null || !mVarE.canScrollVertically()) {
            return 0;
        }
        RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
        return s(mVarE.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) nVar).topMargin, mVarE.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin, mVarE.getPaddingTop(), mVarE.getHeight() - mVarE.getPaddingBottom(), i10);
    }

    protected float v(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    protected int w(int i10) {
        return (int) Math.ceil(((double) x(i10)) / 0.3356d);
    }

    protected int x(int i10) {
        return (int) Math.ceil(Math.abs(i10) * A());
    }

    protected int z() {
        PointF pointF = this.f14077k;
        if (pointF != null) {
            float f10 = pointF.x;
            if (f10 != 0.0f) {
                return f10 > 0.0f ? 1 : -1;
            }
        }
        return 0;
    }

    @Override
    protected void m() {
    }
}
