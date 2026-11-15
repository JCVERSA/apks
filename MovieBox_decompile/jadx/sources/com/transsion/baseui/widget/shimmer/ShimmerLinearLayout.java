package com.transsion.baseui.widget.shimmer;

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
import com.transsion.baseui.R$styleable;

public class ShimmerLinearLayout extends LinearLayout {

    private final Paint f42509a;

    private final b f42510b;

    private boolean f42511c;

    public ShimmerLinearLayout(Context context) {
        super(context);
        this.f42509a = new Paint();
        this.f42510b = new b();
        this.f42511c = true;
        a(context, null);
    }

    private void a(Context context, AttributeSet attributeSet) {
        setLayerType(1, null);
        setWillNotDraw(false);
        this.f42510b.setCallback(this);
        if (attributeSet == null) {
            setShimmer(new a.C0584a().a());
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ShimmerFrameLayout, 0, 0);
        try {
            setShimmer(((typedArrayObtainStyledAttributes.hasValue(R$styleable.ShimmerFrameLayout_shimmer_colored) && typedArrayObtainStyledAttributes.getBoolean(R$styleable.ShimmerFrameLayout_shimmer_colored, false)) ? new a.c() : new a.C0584a()).c(typedArrayObtainStyledAttributes).a());
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.f42511c) {
            this.f42510b.draw(canvas);
        }
    }

    public void hideShimmer() {
        stopShimmer();
        this.f42511c = false;
        invalidate();
    }

    public boolean isShimmerStarted() {
        return this.f42510b.a();
    }

    public boolean isShimmerVisible() {
        return this.f42511c;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f42511c && getVisibility() == 0) {
            this.f42510b.b();
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
        this.f42510b.setBounds(0, 0, getWidth(), getHeight());
    }

    @Override
    protected void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (i10 != 0) {
            stopShimmer();
        } else if (this.f42511c && isAttachedToWindow()) {
            this.f42510b.b();
        }
    }

    public ShimmerLinearLayout setShimmer(@Nullable a aVar) {
        this.f42510b.d(aVar);
        if (aVar == null || !aVar.f42526o) {
            setLayerType(0, null);
        } else {
            setLayerType(2, this.f42509a);
        }
        return this;
    }

    public void setShimmerListener(Animator.AnimatorListener animatorListener) {
        this.f42510b.e(animatorListener);
    }

    public void showShimmer(boolean z10) {
        this.f42511c = true;
        if (z10) {
            startShimmer();
        }
        invalidate();
    }

    public void startShimmer() {
        this.f42510b.f();
    }

    public void stopShimmer() {
        this.f42510b.h();
    }

    @Override
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f42510b;
    }

    public ShimmerLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f42509a = new Paint();
        this.f42510b = new b();
        this.f42511c = true;
        a(context, attributeSet);
    }

    public ShimmerLinearLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f42509a = new Paint();
        this.f42510b = new b();
        this.f42511c = true;
        a(context, attributeSet);
    }

    @TargetApi(21)
    public ShimmerLinearLayout(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f42509a = new Paint();
        this.f42510b = new b();
        this.f42511c = true;
        a(context, attributeSet);
    }
}
