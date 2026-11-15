package com.transsion.shorttv_pugc.base.widget.shimmer;

import android.animation.Animator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.transsion.shorttv.R$styleable;

public class ShimmerLinearLayout extends LinearLayout {

    private final Paint f51902a;

    private final b f51903b;

    private boolean f51904c;

    public ShimmerLinearLayout(Context context) {
        super(context);
        this.f51902a = new Paint();
        this.f51903b = new b();
        this.f51904c = true;
        a(context, null);
    }

    private void a(Context context, AttributeSet attributeSet) {
        setLayerType(1, null);
        setWillNotDraw(false);
        this.f51903b.setCallback(this);
        if (attributeSet == null) {
            setShimmer(new a.C0640a().a());
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ShortTvShimmerFrameLayout, 0, 0);
        try {
            setShimmer(((typedArrayObtainStyledAttributes.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_colored) && typedArrayObtainStyledAttributes.getBoolean(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_colored, false)) ? new a.c() : new a.C0640a()).c(typedArrayObtainStyledAttributes).a());
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.f51904c) {
            this.f51903b.draw(canvas);
        }
    }

    public void hideShimmer() {
        stopShimmer();
        this.f51904c = false;
        invalidate();
    }

    public boolean isShimmerStarted() {
        return this.f51903b.a();
    }

    public boolean isShimmerVisible() {
        return this.f51904c;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f51904c && getVisibility() == 0) {
            this.f51903b.b();
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopShimmer();
    }

    @Override
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        this.f51903b.setBounds(0, 0, getWidth(), getHeight());
    }

    @Override
    protected void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (i10 != 0) {
            stopShimmer();
        } else if (this.f51904c && isAttachedToWindow()) {
            this.f51903b.b();
        }
    }

    public ShimmerLinearLayout setShimmer(@Nullable a aVar) {
        this.f51903b.d(aVar);
        if (aVar == null || !aVar.f51919o) {
            setLayerType(0, null);
        } else {
            setLayerType(2, this.f51902a);
        }
        return this;
    }

    public void setShimmerListener(Animator.AnimatorListener animatorListener) {
        this.f51903b.e(animatorListener);
    }

    public void showShimmer(boolean z10) {
        this.f51904c = true;
        if (z10) {
            startShimmer();
        }
        invalidate();
    }

    public void startShimmer() {
        this.f51903b.f();
    }

    public void stopShimmer() {
        this.f51903b.h();
    }

    @Override
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f51903b;
    }

    public ShimmerLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f51902a = new Paint();
        this.f51903b = new b();
        this.f51904c = true;
        a(context, attributeSet);
    }

    public ShimmerLinearLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f51902a = new Paint();
        this.f51903b = new b();
        this.f51904c = true;
        a(context, attributeSet);
    }

    @TargetApi(21)
    public ShimmerLinearLayout(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f51902a = new Paint();
        this.f51903b = new b();
        this.f51904c = true;
        a(context, attributeSet);
    }
}
