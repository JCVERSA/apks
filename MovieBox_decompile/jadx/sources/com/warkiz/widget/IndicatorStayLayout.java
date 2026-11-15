package com.warkiz.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;

public class IndicatorStayLayout extends LinearLayout {
    public IndicatorStayLayout(Context context) {
        this(context, null);
    }

    private void a(View view, int i10) {
        if (view instanceof IndicatorSeekBar) {
            IndicatorSeekBar indicatorSeekBar = (IndicatorSeekBar) view;
            indicatorSeekBar.setIndicatorStayAlways(true);
            View indicatorContentView = indicatorSeekBar.getIndicatorContentView();
            if (indicatorContentView == null) {
                throw new IllegalStateException("Can not find any indicator in the IndicatorSeekBar, please make sure you have called the attr: SHOW_INDICATOR_TYPE for IndicatorSeekBar and the value is not IndicatorType.NONE.");
            }
            if (indicatorContentView instanceof IndicatorSeekBar) {
                throw new IllegalStateException("IndicatorSeekBar can not be a contentView for Indicator in case this inflating loop.");
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            marginLayoutParams.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, g.a(indicatorSeekBar.getContext(), 2.0f) - indicatorSeekBar.getPaddingTop());
            addView(indicatorContentView, i10, marginLayoutParams);
            indicatorSeekBar.Y();
        }
    }

    public void attachTo(IndicatorSeekBar indicatorSeekBar) {
        attachTo(indicatorSeekBar, -2);
    }

    @Override
    protected void onFinishInflate() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            a(getChildAt(childCount), childCount);
        }
        super.onFinishInflate();
    }

    @Override
    public void setOrientation(int i10) {
        if (i10 != 1) {
            throw new IllegalArgumentException("IndicatorStayLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i10);
    }

    public IndicatorStayLayout(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void attachTo(IndicatorSeekBar indicatorSeekBar, int i10) {
        if (indicatorSeekBar == null) {
            throw new NullPointerException("the seek bar wanna attach to IndicatorStayLayout can not be null value.");
        }
        a(indicatorSeekBar, i10);
        addView(indicatorSeekBar, i10 + 1);
    }

    public IndicatorStayLayout(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        setOrientation(1);
    }
}
