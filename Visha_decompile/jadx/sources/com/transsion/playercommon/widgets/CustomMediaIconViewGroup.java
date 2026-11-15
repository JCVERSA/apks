package com.transsion.playercommon.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.playercommon.R;
import defpackage.se;
import java.util.ArrayList;
import java.util.List;

public class CustomMediaIconViewGroup extends ViewGroup {
    public static final String f = "CustomMediaIconViewGroup";
    public List b;
    public int c;
    public int d;
    public GradientDrawable e;

    public CustomMediaIconViewGroup(Context context) {
        super(context);
        this.b = new ArrayList();
        a();
    }

    public final void a() {
        LogUtils.j(f, "init");
        updateBackgroundColors(true);
    }

    public void addIcon(@DrawableRes int i, int i2, int i3, @Nullable View.OnClickListener onClickListener) {
        ImageView imageView = new ImageView(getContext());
        imageView.setImageResource(i);
        if (onClickListener != null) {
            imageView.setOnClickListener(onClickListener);
        }
        addView(imageView, new ViewGroup.LayoutParams(i2, i3));
        this.b.add(imageView);
        requestLayout();
    }

    public ImageView getIconViewByIndex(int i) {
        if (i < 0 || i >= this.b.size()) {
            return null;
        }
        return (ImageView) this.b.get(i);
    }

    public void hideIcon(@NonNull ImageView imageView) {
        imageView.setVisibility(8);
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        updateBackgroundColors(true);
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = 0;
        int measuredWidth = 0;
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            measuredWidth += getChildAt(i6).getMeasuredWidth();
        }
        int measuredWidth2 = (((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) - measuredWidth) / (getChildCount() - 1);
        int paddingLeft = getPaddingLeft();
        int measuredHeight = getMeasuredHeight();
        while (i5 < getChildCount()) {
            View childAt = getChildAt(i5);
            int measuredWidth3 = childAt.getMeasuredWidth();
            int measuredHeight2 = childAt.getMeasuredHeight();
            int paddingTop = getPaddingTop() + ((((measuredHeight - getPaddingTop()) - getPaddingBottom()) - measuredHeight2) / 2);
            int i7 = paddingLeft + measuredWidth3;
            childAt.layout(paddingLeft, paddingTop, i7, measuredHeight2 + paddingTop);
            paddingLeft = i5 < getChildCount() + (-1) ? paddingLeft + measuredWidth3 + measuredWidth2 : i7;
            i5++;
        }
    }

    @Override
    public void onMeasure(int i, int i2) {
        int measuredWidth = 0;
        int iMax = 0;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
            measureChild(childAt, i, i2);
            measuredWidth += childAt.getMeasuredWidth();
            iMax = Math.max(iMax, childAt.getMeasuredHeight());
        }
        setMeasuredDimension(View.resolveSize(measuredWidth + getPaddingLeft() + getPaddingRight(), i), View.resolveSize(iMax + getPaddingTop() + getPaddingBottom(), i2));
    }

    public void removeIcon(@NonNull View view) {
        removeView(view);
        if (view instanceof ImageView) {
            this.b.remove(view);
        }
        requestLayout();
    }

    @Override
    public void setBackgroundColor(int i) {
        this.d = i;
        this.e.setColor(i);
    }

    public void setCornerRadius(int i) {
        this.c = i;
        this.e.setCornerRadius(i);
    }

    public void setIconClickListener(@NonNull ImageView imageView, View.OnClickListener onClickListener) {
        imageView.setOnClickListener(onClickListener);
    }

    @SuppressLint({"ResourceAsColor"})
    public void updateBackgroundColors(boolean z) {
        int i = z ? R.color.media_tool_button_background_color : android.R.color.transparent;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt instanceof ImageView) {
                this.b.add((ImageView) childAt);
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(1);
            gradientDrawable.setColor(se.a().getColor(i));
            childAt.setBackground(gradientDrawable);
        }
    }

    public CustomMediaIconViewGroup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new ArrayList();
        a();
    }

    public CustomMediaIconViewGroup(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new ArrayList();
        a();
    }
}
