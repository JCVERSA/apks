package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.card.MaterialCardView;
import java.util.List;

abstract class h extends i {

    final Rect f27440d;

    final Rect f27441e;

    private int f27442f;

    private int f27443g;

    public h() {
        this.f27440d = new Rect();
        this.f27441e = new Rect();
        this.f27442f = 0;
    }

    private static int N(int i10) {
        return i10 == 0 ? MaterialCardView.CHECKED_ICON_GRAVITY_TOP_START : i10;
    }

    @Override
    protected void F(CoordinatorLayout coordinatorLayout, View view, int i10) {
        View viewH = H(coordinatorLayout.getDependencies(view));
        if (viewH == null) {
            super.F(coordinatorLayout, view, i10);
            this.f27442f = 0;
            return;
        }
        CoordinatorLayout.f fVar = (CoordinatorLayout.f) view.getLayoutParams();
        Rect rect = this.f27440d;
        rect.set(coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, viewH.getBottom() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin, ((coordinatorLayout.getHeight() + viewH.getBottom()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin);
        WindowInsetsCompat lastWindowInsets = coordinatorLayout.getLastWindowInsets();
        if (lastWindowInsets != null && ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(view)) {
            rect.left += lastWindowInsets.getSystemWindowInsetLeft();
            rect.right -= lastWindowInsets.getSystemWindowInsetRight();
        }
        Rect rect2 = this.f27441e;
        GravityCompat.apply(N(fVar.f7600c), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i10);
        int I = I(viewH);
        view.layout(rect2.left, rect2.top - I, rect2.right, rect2.bottom - I);
        this.f27442f = rect2.top - viewH.getBottom();
    }

    abstract View H(List list);

    final int I(View view) {
        if (this.f27443g == 0) {
            return 0;
        }
        float fJ = J(view);
        int i10 = this.f27443g;
        return d1.a.b((int) (fJ * i10), 0, i10);
    }

    float J(View view) {
        return 1.0f;
    }

    public final int K() {
        return this.f27443g;
    }

    int L(View view) {
        return view.getMeasuredHeight();
    }

    final int M() {
        return this.f27442f;
    }

    public final void O(int i10) {
        this.f27443g = i10;
    }

    protected boolean P() {
        return false;
    }

    @Override
    public boolean m(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12, int i13) {
        View viewH;
        WindowInsetsCompat lastWindowInsets;
        int i14 = view.getLayoutParams().height;
        if ((i14 != -1 && i14 != -2) || (viewH = H(coordinatorLayout.getDependencies(view))) == null) {
            return false;
        }
        int size = View.MeasureSpec.getSize(i12);
        if (size <= 0) {
            size = coordinatorLayout.getHeight();
        } else if (ViewCompat.getFitsSystemWindows(viewH) && (lastWindowInsets = coordinatorLayout.getLastWindowInsets()) != null) {
            size += lastWindowInsets.getSystemWindowInsetTop() + lastWindowInsets.getSystemWindowInsetBottom();
        }
        int iL = size + L(viewH);
        int measuredHeight = viewH.getMeasuredHeight();
        if (P()) {
            view.setTranslationY(-measuredHeight);
        } else {
            view.setTranslationY(0.0f);
            iL -= measuredHeight;
        }
        coordinatorLayout.onMeasureChild(view, i10, i11, View.MeasureSpec.makeMeasureSpec(iL, i14 == -1 ? 1073741824 : Integer.MIN_VALUE), i13);
        return true;
    }

    public h(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f27440d = new Rect();
        this.f27441e = new Rect();
        this.f27442f = 0;
    }
}
