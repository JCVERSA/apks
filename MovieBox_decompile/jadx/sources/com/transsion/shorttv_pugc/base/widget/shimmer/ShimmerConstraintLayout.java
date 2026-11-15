package com.transsion.shorttv_pugc.base.widget.shimmer;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.shorttv.R$styleable;

public class ShimmerConstraintLayout extends ConstraintLayout {

    private final Paint f51896a;

    private final b f51897b;

    private boolean f51898c;

    public ShimmerConstraintLayout(Context context) {
        super(context);
        this.f51896a = new Paint();
        this.f51897b = new b();
        this.f51898c = true;
        init(context, null);
    }

    private void init(Context context, AttributeSet attributeSet) {
        setLayerType(1, null);
        setWillNotDraw(false);
        this.f51897b.setCallback(this);
        if (attributeSet == null) {
            setShimmer(new a.C0640a().a());
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ShortTvShimmerConstraintLayout, 0, 0);
        try {
            setShimmer(((typedArrayObtainStyledAttributes.hasValue(R$styleable.ShortTvShimmerConstraintLayout_short_tv_shimmer_colored) && typedArrayObtainStyledAttributes.getBoolean(R$styleable.ShortTvShimmerConstraintLayout_short_tv_shimmer_colored, false)) ? new a.c() : new a.C0640a()).c(typedArrayObtainStyledAttributes).a());
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.f51898c) {
            this.f51897b.draw(canvas);
        }
    }

    public void hideShimmer() {
        stopShimmer();
        this.f51898c = false;
        invalidate();
    }

    public boolean isShimmerStarted() {
        return this.f51897b.a();
    }

    public boolean isShimmerVisible() {
        return this.f51898c;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f51898c && getVisibility() == 0) {
            this.f51897b.b();
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
        this.f51897b.setBounds(0, 0, getWidth(), getHeight());
    }

    @Override
    protected void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (i10 != 0) {
            stopShimmer();
        } else if (this.f51898c && isAttachedToWindow()) {
            this.f51897b.b();
        }
    }

    public ShimmerConstraintLayout setShimmer(@Nullable a aVar) {
        this.f51897b.d(aVar);
        if (aVar == null || !aVar.f51919o) {
            setLayerType(0, null);
        } else {
            setLayerType(2, this.f51896a);
        }
        return this;
    }

    public void setShimmerListener(Animator.AnimatorListener animatorListener) {
        this.f51897b.e(animatorListener);
    }

    public void showShimmer(boolean z10) {
        this.f51898c = true;
        if (z10) {
            startShimmer();
        }
        invalidate();
    }

    public void startShimmer() {
        this.f51897b.f();
    }

    public void stopShimmer() {
        this.f51897b.h();
    }

    @Override
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f51897b;
    }

    public void startShimmer(int i10, AnimatorListenerAdapter animatorListenerAdapter) {
        this.f51897b.g(i10, animatorListenerAdapter);
    }

    public ShimmerConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f51896a = new Paint();
        this.f51897b = new b();
        this.f51898c = true;
        init(context, attributeSet);
    }

    public ShimmerConstraintLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f51896a = new Paint();
        this.f51897b = new b();
        this.f51898c = true;
        init(context, attributeSet);
    }

    @TargetApi(21)
    public ShimmerConstraintLayout(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f51896a = new Paint();
        this.f51897b = new b();
        this.f51898c = true;
        init(context, attributeSet);
    }
}
