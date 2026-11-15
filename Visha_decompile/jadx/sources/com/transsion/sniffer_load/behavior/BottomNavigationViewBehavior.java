package com.transsion.sniffer_load.behavior;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import java.util.Objects;

public class BottomNavigationViewBehavior extends CoordinatorLayout.Behavior<View> {
    public BottomNavigationViewBehavior() {
    }

    @Override
    public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
        return view2 instanceof AppBarLayout;
    }

    @Override
    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) view2.getLayoutParams()).getBehavior();
        Objects.requireNonNull(behavior);
        view.setTranslationY(-(((AppBarLayout.Behavior) behavior).getTopAndBottomOffset() * (view.getMeasuredHeight() / view2.getMeasuredHeight())));
        return false;
    }

    @Override
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
        ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) view.getLayoutParams())).topMargin = coordinatorLayout.getMeasuredHeight() - view.getMeasuredHeight();
        return super.onLayoutChild(coordinatorLayout, view, i);
    }

    public BottomNavigationViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
