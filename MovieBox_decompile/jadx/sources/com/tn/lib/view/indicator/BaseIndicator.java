package com.tn.lib.view.indicator;

import android.content.Context;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.card.MaterialCardView;

public class BaseIndicator extends View {

    protected a f40340a;

    protected Paint f40341b;

    protected float f40342c;

    public BaseIndicator(Context context) {
        this(context, null);
    }

    public a getIndicatorConfig() {
        return this.f40340a;
    }

    @NonNull
    public View getIndicatorView() {
        if (this.f40340a.l()) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            int iB = this.f40340a.b();
            if (iB == 0) {
                layoutParams.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_START;
            } else if (iB == 1) {
                layoutParams.gravity = 81;
            } else if (iB == 2) {
                layoutParams.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_END;
            }
            layoutParams.leftMargin = this.f40340a.f().f40367a;
            layoutParams.rightMargin = this.f40340a.f().f40369c;
            layoutParams.topMargin = this.f40340a.f().f40368b;
            layoutParams.bottomMargin = this.f40340a.f().f40370d;
            setLayoutParams(layoutParams);
        }
        return this;
    }

    public void onPageChanged(int i10, int i11) {
        this.f40340a.n(i10);
        this.f40340a.m(i11);
        requestLayout();
    }

    public void onPageScrolled(int i10, float f10, int i11) {
        this.f40342c = f10;
        invalidate();
    }

    public void onPageSelected(int i10) {
        this.f40340a.m(i10);
        invalidate();
    }

    public BaseIndicator(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BaseIndicator(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f40340a = new a();
        Paint paint = new Paint();
        this.f40341b = paint;
        paint.setAntiAlias(true);
        this.f40341b.setColor(0);
        this.f40341b.setColor(this.f40340a.g());
    }

    public void onPageScrollStateChanged(int i10) {
    }
}
