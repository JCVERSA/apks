package com.transsion.playercommon.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.playercommon.R;

public class CircleIndicator extends LinearLayout {
    public int b;
    public int c;
    public int d;
    public int e;
    public Drawable f;
    public Drawable g;

    public class a extends ViewPager2.OnPageChangeCallback {
        public a() {
        }

        @Override
        public void onPageSelected(int i) {
            super.onPageSelected(i);
            CircleIndicator.this.d(i);
        }
    }

    public CircleIndicator(Context context) {
        super(context);
        c(context, null);
    }

    public final void b(Context context) {
        removeAllViews();
        for (int i = 0; i < this.d; i++) {
            View view = new View(context);
            int i2 = this.b;
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i2, i2);
            int i3 = this.c;
            layoutParams.leftMargin = i3;
            layoutParams.rightMargin = i3;
            view.setLayoutParams(layoutParams);
            view.setBackground(this.g);
            addView(view);
        }
        d(this.e);
    }

    public final void c(Context context, AttributeSet attributeSet) {
        setOrientation(0);
        this.b = com.transsion.utils.a.d(context, 6.0f);
        this.c = com.transsion.utils.a.d(context, 8.0f);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CircleIndicator);
            this.b = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.CircleIndicator_indicatorSize, this.b);
            this.c = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.CircleIndicator_indicatorSpacing, this.c);
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f = context.getResources().getDrawable(R.drawable.bg_indicator_selected);
        this.g = context.getResources().getDrawable(R.drawable.bg_indicator_unselected);
    }

    public final void d(int i) {
        if (i < 0 || i >= this.d) {
            return;
        }
        View childAt = getChildAt(this.e);
        if (childAt != null) {
            childAt.setBackground(this.g);
        }
        View childAt2 = getChildAt(i);
        if (childAt2 != null) {
            childAt2.setBackground(this.f);
        }
        this.e = i;
    }

    public void setViewPager(ViewPager2 viewPager2) {
        this.d = viewPager2.getAdapter().getItemCount();
        this.e = viewPager2.getCurrentItem();
        b(getContext());
        viewPager2.registerOnPageChangeCallback(new a());
    }

    public CircleIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        c(context, attributeSet);
    }

    public CircleIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        c(context, attributeSet);
    }
}
