package com.google.android.material.navigationrail;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.j0;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.f0;
import com.google.android.material.navigation.NavigationBarView;
import z0.c;

public class NavigationRailView extends NavigationBarView {

    private final int f28570e;

    private View f28571f;

    private Boolean f28572g;

    private Boolean f28573h;

    private Boolean f28574i;

    class a implements f0.d {
        a() {
        }

        @Override
        public WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, f0.e eVar) {
            c insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars());
            NavigationRailView navigationRailView = NavigationRailView.this;
            if (navigationRailView.l(navigationRailView.f28572g)) {
                eVar.f28383b += insets.f76466b;
            }
            NavigationRailView navigationRailView2 = NavigationRailView.this;
            if (navigationRailView2.l(navigationRailView2.f28573h)) {
                eVar.f28385d += insets.f76468d;
            }
            NavigationRailView navigationRailView3 = NavigationRailView.this;
            if (navigationRailView3.l(navigationRailView3.f28574i)) {
                eVar.f28382a += f0.p(view) ? insets.f76467c : insets.f76465a;
            }
            eVar.a(view);
            return windowInsetsCompat;
        }
    }

    public NavigationRailView(@NonNull Context context) {
        this(context, null);
    }

    private NavigationRailMenuView getNavigationRailMenuView() {
        return (NavigationRailMenuView) getMenuView();
    }

    private void h() {
        f0.f(this, new a());
    }

    private boolean j() {
        View view = this.f28571f;
        return (view == null || view.getVisibility() == 8) ? false : true;
    }

    private int k(int i10) {
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        if (View.MeasureSpec.getMode(i10) == 1073741824 || suggestedMinimumWidth <= 0) {
            return i10;
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i10), suggestedMinimumWidth + getPaddingLeft() + getPaddingRight()), 1073741824);
    }

    public boolean l(Boolean bool) {
        return bool != null ? bool.booleanValue() : ViewCompat.getFitsSystemWindows(this);
    }

    public void addHeaderView(int i10) {
        addHeaderView(LayoutInflater.from(getContext()).inflate(i10, (ViewGroup) this, false));
    }

    @Nullable
    public View getHeaderView() {
        return this.f28571f;
    }

    public int getItemMinimumHeight() {
        return ((NavigationRailMenuView) getMenuView()).getItemMinimumHeight();
    }

    @Override
    public int getMaxItemCount() {
        return 7;
    }

    public int getMenuGravity() {
        return getNavigationRailMenuView().getMenuGravity();
    }

    @Override
    public NavigationRailMenuView c(Context context) {
        return new NavigationRailMenuView(context);
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        NavigationRailMenuView navigationRailMenuView = getNavigationRailMenuView();
        int i14 = 0;
        if (j()) {
            int bottom = this.f28571f.getBottom() + this.f28570e;
            int top = navigationRailMenuView.getTop();
            if (top < bottom) {
                i14 = bottom - top;
            }
        } else if (navigationRailMenuView.m()) {
            i14 = this.f28570e;
        }
        if (i14 > 0) {
            navigationRailMenuView.layout(navigationRailMenuView.getLeft(), navigationRailMenuView.getTop() + i14, navigationRailMenuView.getRight(), navigationRailMenuView.getBottom() + i14);
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        int iK = k(i10);
        super.onMeasure(iK, i11);
        if (j()) {
            measureChild(getNavigationRailMenuView(), iK, View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - this.f28571f.getMeasuredHeight()) - this.f28570e, Integer.MIN_VALUE));
        }
    }

    public void removeHeaderView() {
        View view = this.f28571f;
        if (view != null) {
            removeView(view);
            this.f28571f = null;
        }
    }

    public void setItemMinimumHeight(int i10) {
        ((NavigationRailMenuView) getMenuView()).setItemMinimumHeight(i10);
    }

    public void setMenuGravity(int i10) {
        getNavigationRailMenuView().setMenuGravity(i10);
    }

    public NavigationRailView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.navigationRailStyle);
    }

    public void addHeaderView(@NonNull View view) {
        removeHeaderView();
        this.f28571f = view;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 49;
        layoutParams.topMargin = this.f28570e;
        addView(view, 0, layoutParams);
    }

    public NavigationRailView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.Widget_MaterialComponents_NavigationRailView);
    }

    public NavigationRailView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f28572g = null;
        this.f28573h = null;
        this.f28574i = null;
        this.f28570e = getResources().getDimensionPixelSize(R$dimen.mtrl_navigation_rail_margin);
        Context context2 = getContext();
        j0 j0VarJ = b0.j(context2, attributeSet, R$styleable.NavigationRailView, i10, i11, new int[0]);
        int iN = j0VarJ.n(R$styleable.NavigationRailView_headerLayout, 0);
        if (iN != 0) {
            addHeaderView(iN);
        }
        setMenuGravity(j0VarJ.k(R$styleable.NavigationRailView_menuGravity, 49));
        if (j0VarJ.s(R$styleable.NavigationRailView_itemMinHeight)) {
            setItemMinimumHeight(j0VarJ.f(R$styleable.NavigationRailView_itemMinHeight, -1));
        }
        if (j0VarJ.s(R$styleable.NavigationRailView_paddingTopSystemWindowInsets)) {
            this.f28572g = Boolean.valueOf(j0VarJ.a(R$styleable.NavigationRailView_paddingTopSystemWindowInsets, false));
        }
        if (j0VarJ.s(R$styleable.NavigationRailView_paddingBottomSystemWindowInsets)) {
            this.f28573h = Boolean.valueOf(j0VarJ.a(R$styleable.NavigationRailView_paddingBottomSystemWindowInsets, false));
        }
        if (j0VarJ.s(R$styleable.NavigationRailView_paddingStartSystemWindowInsets)) {
            this.f28574i = Boolean.valueOf(j0VarJ.a(R$styleable.NavigationRailView_paddingStartSystemWindowInsets, false));
        }
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R$dimen.m3_navigation_rail_item_padding_top_with_large_font);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R$dimen.m3_navigation_rail_item_padding_bottom_with_large_font);
        float fB = qa.a.b(0.0f, 1.0f, 0.3f, 1.0f, za.c.f(context2) - 1.0f);
        float fC = qa.a.c(getItemPaddingTop(), dimensionPixelOffset, fB);
        float fC2 = qa.a.c(getItemPaddingBottom(), dimensionPixelOffset2, fB);
        setItemPaddingTop(Math.round(fC));
        setItemPaddingBottom(Math.round(fC2));
        j0VarJ.x();
        h();
    }
}
