package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.j0;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$color;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.f0;
import com.google.android.material.navigation.NavigationBarMenuView;
import com.google.android.material.navigation.NavigationBarView;

public class BottomNavigationView extends NavigationBarView {

    class a implements f0.d {
        a() {
        }

        @Override
        public WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, f0.e eVar) {
            eVar.f28385d += windowInsetsCompat.getSystemWindowInsetBottom();
            boolean z10 = ViewCompat.getLayoutDirection(view) == 1;
            int systemWindowInsetLeft = windowInsetsCompat.getSystemWindowInsetLeft();
            int systemWindowInsetRight = windowInsetsCompat.getSystemWindowInsetRight();
            eVar.f28382a += z10 ? systemWindowInsetRight : systemWindowInsetLeft;
            int i10 = eVar.f28384c;
            if (!z10) {
                systemWindowInsetLeft = systemWindowInsetRight;
            }
            eVar.f28384c = i10 + systemWindowInsetLeft;
            eVar.a(view);
            return windowInsetsCompat;
        }
    }

    public interface b extends NavigationBarView.b {
    }

    public interface c extends NavigationBarView.c {
    }

    public BottomNavigationView(@NonNull Context context) {
        this(context, null);
    }

    private void d(Context context) {
        View view = new View(context);
        view.setBackgroundColor(androidx.core.content.b.getColor(context, R$color.design_bottom_navigation_shadow_color));
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R$dimen.design_bottom_navigation_shadow_height)));
        addView(view);
    }

    private void e() {
        f0.f(this, new a());
    }

    private int f(int i10) {
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        if (View.MeasureSpec.getMode(i10) == 1073741824 || suggestedMinimumHeight <= 0) {
            return i10;
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i10), suggestedMinimumHeight + getPaddingTop() + getPaddingBottom()), 1073741824);
    }

    private boolean g() {
        return false;
    }

    @Override
    protected NavigationBarMenuView c(Context context) {
        return new BottomNavigationMenuView(context);
    }

    @Override
    public int getMaxItemCount() {
        return 5;
    }

    public boolean isItemHorizontalTranslationEnabled() {
        return ((BottomNavigationMenuView) getMenuView()).isItemHorizontalTranslationEnabled();
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, f(i11));
    }

    public void setItemHorizontalTranslationEnabled(boolean z10) {
        BottomNavigationMenuView bottomNavigationMenuView = (BottomNavigationMenuView) getMenuView();
        if (bottomNavigationMenuView.isItemHorizontalTranslationEnabled() != z10) {
            bottomNavigationMenuView.setItemHorizontalTranslationEnabled(z10);
            getPresenter().h(false);
        }
    }

    @Deprecated
    public void setOnNavigationItemReselectedListener(@Nullable b bVar) {
        setOnItemReselectedListener(bVar);
    }

    @Deprecated
    public void setOnNavigationItemSelectedListener(@Nullable c cVar) {
        setOnItemSelectedListener(cVar);
    }

    public BottomNavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.bottomNavigationStyle);
    }

    public BottomNavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.Widget_Design_BottomNavigationView);
    }

    public BottomNavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        Context context2 = getContext();
        j0 j0VarJ = b0.j(context2, attributeSet, R$styleable.BottomNavigationView, i10, i11, new int[0]);
        setItemHorizontalTranslationEnabled(j0VarJ.a(R$styleable.BottomNavigationView_itemHorizontalTranslationEnabled, true));
        if (j0VarJ.s(R$styleable.BottomNavigationView_android_minHeight)) {
            setMinimumHeight(j0VarJ.f(R$styleable.BottomNavigationView_android_minHeight, 0));
        }
        if (j0VarJ.a(R$styleable.BottomNavigationView_compatShadowEnabled, true) && g()) {
            d(context2);
        }
        j0VarJ.x();
        e();
    }
}
