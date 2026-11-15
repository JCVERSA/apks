package com.google.android.material.navigationrail;

import android.content.Context;
import android.view.View;
import com.google.android.material.R$dimen;
import com.google.android.material.R$layout;
import com.google.android.material.navigation.NavigationBarItemView;

final class a extends NavigationBarItemView {
    public a(Context context) {
        super(context);
    }

    @Override
    protected int getItemDefaultMarginResId() {
        return R$dimen.mtrl_navigation_rail_icon_margin;
    }

    @Override
    protected int getItemLayoutResId() {
        return R$layout.mtrl_navigation_rail_item;
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (View.MeasureSpec.getMode(i11) == 0) {
            setMeasuredDimension(getMeasuredWidthAndState(), Math.max(getMeasuredHeight(), View.MeasureSpec.getSize(i11)));
        }
    }
}
