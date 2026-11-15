package com.transsion.baseui.widget.shimmer;

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
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.transsion.baseui.R$styleable;

public class ShimmerFrameLayout extends FrameLayout {

    private final Paint f42506a;

    private final b f42507b;

    private boolean f42508c;

    public ShimmerFrameLayout(Context context) {
        super(context);
        this.f42506a = new Paint();
        this.f42507b = new b();
        this.f42508c = true;
        a(context, null);
    }

    private void a(Context context, AttributeSet attributeSet) {
        setLayerType(1, null);
        setWillNotDraw(false);
        this.f42507b.setCallback(this);
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
        if (this.f42508c) {
            this.f42507b.draw(canvas);
        }
    }

    public void hideShimmer() {
        stopShimmer();
        this.f42508c = false;
        invalidate();
    }

    public boolean isShimmerStarted() {
        return this.f42507b.a();
    }

    public boolean isShimmerVisible() {
        return this.f42508c;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f42508c && getVisibility() == 0) {
            this.f42507b.b();
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
        this.f42507b.setBounds(0, 0, getWidth(), getHeight());
    }

    @Override
    protected void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (i10 != 0) {
            stopShimmer();
        } else if (this.f42508c && isAttachedToWindow()) {
            this.f42507b.b();
        }
    }

    public ShimmerFrameLayout setShimmer(@Nullable a aVar) {
        this.f42507b.d(aVar);
        if (aVar == null || !aVar.f42526o) {
            setLayerType(0, null);
        } else {
            setLayerType(2, this.f42506a);
        }
        return this;
    }

    public void setShimmerListener(Animator.AnimatorListener animatorListener) {
        this.f42507b.e(animatorListener);
    }

    public void showShimmer(boolean z10) {
        this.f42508c = true;
        if (z10) {
            startShimmer();
        }
        invalidate();
    }

    public void startShimmer() {
        this.f42507b.f();
    }

    public void stopShimmer() {
        this.f42507b.h();
    }

    @Override
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f42507b;
    }

    public void startShimmer(int i10, AnimatorListenerAdapter animatorListenerAdapter) {
        this.f42507b.g(i10, animatorListenerAdapter);
    }

    public ShimmerFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f42506a = new Paint();
        this.f42507b = new b();
        this.f42508c = true;
        a(context, attributeSet);
    }

    public ShimmerFrameLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f42506a = new Paint();
        this.f42507b = new b();
        this.f42508c = true;
        a(context, attributeSet);
    }

    @TargetApi(21)
    public ShimmerFrameLayout(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f42506a = new Paint();
        this.f42507b = new b();
        this.f42508c = true;
        a(context, attributeSet);
    }
}
