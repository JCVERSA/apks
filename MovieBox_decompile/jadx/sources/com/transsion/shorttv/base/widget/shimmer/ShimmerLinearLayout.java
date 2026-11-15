package com.transsion.shorttv.base.widget.shimmer;

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

    private final Paint f50922a;

    private final b f50923b;

    private boolean f50924c;

    public ShimmerLinearLayout(Context context) {
        super(context);
        this.f50922a = new Paint();
        this.f50923b = new b();
        this.f50924c = true;
        a(context, null);
    }

    private void a(Context context, AttributeSet attributeSet) {
        setLayerType(1, null);
        setWillNotDraw(false);
        this.f50923b.setCallback(this);
        if (attributeSet == null) {
            setShimmer(new a.C0631a().a());
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ShortTvShimmerFrameLayout, 0, 0);
        try {
            setShimmer(((typedArrayObtainStyledAttributes.hasValue(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_colored) && typedArrayObtainStyledAttributes.getBoolean(R$styleable.ShortTvShimmerFrameLayout_short_tv_shimmer_colored, false)) ? new a.c() : new a.C0631a()).c(typedArrayObtainStyledAttributes).a());
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.f50924c) {
            this.f50923b.draw(canvas);
        }
    }

    public void hideShimmer() {
        stopShimmer();
        this.f50924c = false;
        invalidate();
    }

    public boolean isShimmerStarted() {
        return this.f50923b.a();
    }

    public boolean isShimmerVisible() {
        return this.f50924c;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f50924c && getVisibility() == 0) {
            this.f50923b.b();
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
        this.f50923b.setBounds(0, 0, getWidth(), getHeight());
    }

    @Override
    protected void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (i10 != 0) {
            stopShimmer();
        } else if (this.f50924c && isAttachedToWindow()) {
            this.f50923b.b();
        }
    }

    public ShimmerLinearLayout setShimmer(@Nullable a aVar) {
        this.f50923b.d(aVar);
        if (aVar == null || !aVar.f50939o) {
            setLayerType(0, null);
        } else {
            setLayerType(2, this.f50922a);
        }
        return this;
    }

    public void setShimmerListener(Animator.AnimatorListener animatorListener) {
        this.f50923b.e(animatorListener);
    }

    public void showShimmer(boolean z10) {
        this.f50924c = true;
        if (z10) {
            startShimmer();
        }
        invalidate();
    }

    public void startShimmer() {
        this.f50923b.f();
    }

    public void stopShimmer() {
        this.f50923b.h();
    }

    @Override
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f50923b;
    }

    public ShimmerLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f50922a = new Paint();
        this.f50923b = new b();
        this.f50924c = true;
        a(context, attributeSet);
    }

    public ShimmerLinearLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f50922a = new Paint();
        this.f50923b = new b();
        this.f50924c = true;
        a(context, attributeSet);
    }

    @TargetApi(21)
    public ShimmerLinearLayout(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f50922a = new Paint();
        this.f50923b = new b();
        this.f50924c = true;
        a(context, attributeSet);
    }
}
