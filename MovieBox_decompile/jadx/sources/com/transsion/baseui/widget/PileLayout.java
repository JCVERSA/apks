package com.transsion.baseui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import com.transsion.baseui.R$styleable;

public class PileLayout extends ViewGroup {

    protected float f42413a;

    protected float f42414b;

    public PileLayout(Context context) {
        this(context, null, 0);
    }

    public float dp2px(float f10) {
        return TypedValue.applyDimension(1, f10, getResources().getDisplayMetrics());
    }

    @Override
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-2, -2);
    }

    @Override
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int i14 = i12 - i10;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        int iMax = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt = getChildAt(i16);
            if (childAt.getVisibility() != 8) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                int measuredWidth = marginLayoutParams.leftMargin + childAt.getMeasuredWidth() + marginLayoutParams.rightMargin;
                if (paddingLeft + measuredWidth + getPaddingRight() > i14) {
                    paddingLeft = getPaddingLeft();
                    paddingTop = (int) (paddingTop + iMax + this.f42413a);
                    iMax = 0;
                    i15 = 0;
                }
                int i17 = marginLayoutParams.leftMargin;
                childAt.layout(paddingLeft + i17, marginLayoutParams.topMargin + paddingTop, i17 + paddingLeft + childAt.getMeasuredWidth(), marginLayoutParams.topMargin + paddingTop + childAt.getMeasuredHeight());
                paddingLeft += measuredWidth;
                int measuredHeight = marginLayoutParams.topMargin + childAt.getMeasuredHeight() + marginLayoutParams.bottomMargin;
                if (i15 != childCount - 1) {
                    paddingLeft = (int) (paddingLeft - this.f42414b);
                }
                iMax = Math.max(iMax, measuredHeight);
                i15++;
            }
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        int childCount = getChildCount();
        int iMax = 0;
        int i12 = 0;
        int i13 = 0;
        int iMax2 = 0;
        int i14 = 0;
        int i15 = 0;
        while (i13 < childCount) {
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8) {
                int i16 = iMax;
                int i17 = i12;
                measureChildWithMargins(childAt, i10, 0, i11, 0);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                int measuredHeight = childAt.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                int i18 = i14 + measuredWidth;
                float f10 = i18;
                if (f10 - (i15 > 0 ? this.f42414b : 0.0f) > (size - getPaddingLeft()) - getPaddingRight()) {
                    iMax2 = Math.max(iMax2, i14);
                    i12 = (int) (i17 + i16 + this.f42413a);
                    i14 = measuredWidth;
                    iMax = measuredHeight;
                    i15 = 0;
                } else {
                    if (i15 > 0) {
                        i18 = (int) (f10 - this.f42414b);
                    }
                    i14 = i18;
                    iMax = Math.max(i16, measuredHeight);
                    i12 = i17;
                }
                if (i13 == childCount - 1) {
                    i12 += iMax;
                    iMax2 = Math.max(i14, iMax2);
                }
                i15++;
            } else if (i13 == childCount - 1) {
                i12 += iMax;
                iMax2 = Math.max(iMax2, i14);
            }
            i13++;
            size2 = size2;
        }
        int i19 = size2;
        int i20 = i12;
        if (mode != 1073741824) {
            size = iMax2 + getPaddingLeft() + getPaddingRight();
        }
        setMeasuredDimension(size, mode2 == 1073741824 ? i19 : i20 + getPaddingTop() + getPaddingBottom());
    }

    public PileLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    public PileLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.PileLayout);
        this.f42413a = typedArrayObtainStyledAttributes.getDimension(R$styleable.PileLayout_PileLayout_vertivalSpace, dp2px(4.0f));
        this.f42414b = typedArrayObtainStyledAttributes.getDimension(R$styleable.PileLayout_PileLayout_pileWidth, dp2px(10.0f));
        typedArrayObtainStyledAttributes.recycle();
    }
}
