package com.transsion.shorttv.base.widget.shimmer;

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

    private final Paint f50916a;

    private final b f50917b;

    private boolean f50918c;

    public ShimmerConstraintLayout(Context context) {
        super(context);
        this.f50916a = new Paint();
        this.f50917b = new b();
        this.f50918c = true;
        init(context, null);
    }

    private void init(Context context, AttributeSet attributeSet) {
        setLayerType(1, null);
        setWillNotDraw(false);
        this.f50917b.setCallback(this);
        if (attributeSet == null) {
            setShimmer(new a.C0631a().a());
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ShortTvShimmerConstraintLayout, 0, 0);
        try {
            setShimmer(((typedArrayObtainStyledAttributes.hasValue(R$styleable.ShortTvShimmerConstraintLayout_short_tv_shimmer_colored) && typedArrayObtainStyledAttributes.getBoolean(R$styleable.ShortTvShimmerConstraintLayout_short_tv_shimmer_colored, false)) ? new a.c() : new a.C0631a()).c(typedArrayObtainStyledAttributes).a());
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.f50918c) {
            this.f50917b.draw(canvas);
        }
    }

    public void hideShimmer() {
        stopShimmer();
        this.f50918c = false;
        invalidate();
    }

    public boolean isShimmerStarted() {
        return this.f50917b.a();
    }

    public boolean isShimmerVisible() {
        return this.f50918c;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f50918c && getVisibility() == 0) {
            this.f50917b.b();
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
        this.f50917b.setBounds(0, 0, getWidth(), getHeight());
    }

    @Override
    protected void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (i10 != 0) {
            stopShimmer();
        } else if (this.f50918c && isAttachedToWindow()) {
            this.f50917b.b();
        }
    }

    public ShimmerConstraintLayout setShimmer(@Nullable a aVar) {
        this.f50917b.d(aVar);
        if (aVar == null || !aVar.f50939o) {
            setLayerType(0, null);
        } else {
            setLayerType(2, this.f50916a);
        }
        return this;
    }

    public void setShimmerListener(Animator.AnimatorListener animatorListener) {
        this.f50917b.e(animatorListener);
    }

    public void showShimmer(boolean z10) {
        this.f50918c = true;
        if (z10) {
            startShimmer();
        }
        invalidate();
    }

    public void startShimmer() {
        this.f50917b.f();
    }

    public void stopShimmer() {
        this.f50917b.h();
    }

    @Override
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f50917b;
    }

    public void startShimmer(int i10, AnimatorListenerAdapter animatorListenerAdapter) {
        this.f50917b.g(i10, animatorListenerAdapter);
    }

    public ShimmerConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f50916a = new Paint();
        this.f50917b = new b();
        this.f50918c = true;
        init(context, attributeSet);
    }

    public ShimmerConstraintLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f50916a = new Paint();
        this.f50917b = new b();
        this.f50918c = true;
        init(context, attributeSet);
    }

    @TargetApi(21)
    public ShimmerConstraintLayout(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f50916a = new Paint();
        this.f50917b = new b();
        this.f50918c = true;
        init(context, attributeSet);
    }
}
