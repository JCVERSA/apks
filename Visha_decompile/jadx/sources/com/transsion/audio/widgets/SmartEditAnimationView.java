package com.transsion.audio.widgets;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import androidx.annotation.NonNull;
import com.transsion.audio.R;
import defpackage.t53;

public class SmartEditAnimationView extends View {
    private static final float MERGE_PHASE_START = 0.8f;
    private static final float ROTATION_PHASE_END = 0.85f;
    private static final float SEPARATION_PHASE_END = 0.15f;
    private ValueAnimator animator;
    private float centerX;
    private float centerY;
    private Paint connectionPaint;
    private float dot1X;
    private float dot1Y;
    private float dot2X;
    private float dot2Y;
    private Paint dotPaint;
    private Drawable foregroundDrawable;
    LinearGradient gradient;
    private boolean isLoading;
    private float radius;
    private AnimatorSet scaleAnimator;

    public SmartEditAnimationView(Context context) {
        super(context);
        this.isLoading = false;
        this.gradient = new LinearGradient(this.dot1X, this.dot1Y, this.dot2X, this.dot2Y, new int[]{-1, 0, 0, -1}, new float[]{0.0f, 0.3f, 0.7f, 1.0f}, Shader.TileMode.CLAMP);
        init();
    }

    private void cancelAnimators() {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.animator.removeAllListeners();
            this.animator.removeAllUpdateListeners();
        }
        AnimatorSet animatorSet = this.scaleAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.scaleAnimator.removeAllListeners();
        }
    }

    private void init() {
        Paint paint = new Paint(1);
        this.dotPaint = paint;
        paint.setColor(-1);
        this.dotPaint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint(1);
        this.connectionPaint = paint2;
        paint2.setColor(-1);
        this.connectionPaint.setStyle(Paint.Style.STROKE);
        this.connectionPaint.setStrokeCap(Paint.Cap.ROUND);
    }

    private void initForegroundDrawable(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SmartEditAnimationView);
        try {
            this.foregroundDrawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.SmartEditAnimationView_foregroundSrc);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void startScaleAnimation() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<SmartEditAnimationView, Float>) View.SCALE_X, 1.0f, 0.8f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, (Property<SmartEditAnimationView, Float>) View.SCALE_Y, 1.0f, 0.8f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        this.scaleAnimator = animatorSet;
        animatorSet.setDuration(300L);
        this.scaleAnimator.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        this.scaleAnimator.setInterpolator(new t53(0.33f, 0.0f, 0.66f, 1.0f));
        this.scaleAnimator.start();
    }

    public boolean isLoading() {
        return this.isLoading;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cancelAnimators();
        Drawable drawable = this.foregroundDrawable;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    @Override
    public void onDraw(@NonNull Canvas canvas) {
        super.onDraw(canvas);
        if (!this.isLoading) {
            Drawable drawable = this.foregroundDrawable;
            if (drawable != null) {
                drawable.setBounds(0, 0, getWidth(), getHeight());
                this.foregroundDrawable.draw(canvas);
                return;
            }
            return;
        }
        float f = this.radius * 0.2f;
        float f2 = this.dot1X;
        float f3 = this.dot2X;
        if (f2 != f3 || this.dot1Y != this.dot2Y) {
            float fMax = Math.max(0.0f, 1.0f - (((float) Math.hypot(f3 - f2, this.dot2Y - this.dot1Y)) / (this.radius * 0.8f)));
            this.connectionPaint.setShader(this.gradient);
            this.connectionPaint.setStrokeWidth(1.5f * f * fMax);
            this.connectionPaint.setAlpha((int) (fMax * 255.0f));
            canvas.drawLine(this.dot1X, this.dot1Y, this.dot2X, this.dot2Y, this.connectionPaint);
        }
        canvas.drawCircle(this.dot1X, this.dot1Y, f, this.dotPaint);
        canvas.drawCircle(this.dot2X, this.dot2Y, f, this.dotPaint);
    }

    @Override
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.centerX = i / 2.0f;
        this.centerY = i2 / 2.0f;
        this.radius = (Math.min(i, i2) / 2.0f) * 0.8f;
        float f = this.centerX;
        this.dot1X = f;
        float f2 = this.centerY;
        this.dot1Y = f2;
        this.dot2X = f;
        this.dot2Y = f2;
    }

    public void setForegroundDrawable(Drawable drawable) {
        this.foregroundDrawable = drawable;
        invalidate();
    }

    public void setLoading(boolean z) {
        if (this.isLoading != z) {
            this.isLoading = z;
            if (z) {
                startScaleAnimation();
                startAnimation();
            } else {
                ValueAnimator valueAnimator = this.animator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                }
            }
            invalidate();
        }
    }

    @Override
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i != 0) {
            cancelAnimators();
        }
    }

    public void startAnimation() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.animator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(1500L);
        this.animator.setRepeatCount(-1);
        this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                float f = SmartEditAnimationView.this.radius * 0.4f;
                if (fFloatValue < SmartEditAnimationView.SEPARATION_PHASE_END) {
                    float f2 = 1.0f - (fFloatValue / SmartEditAnimationView.SEPARATION_PHASE_END);
                    float f3 = 1.0f - (f2 * f2);
                    SmartEditAnimationView smartEditAnimationView = SmartEditAnimationView.this;
                    float f4 = f * f3;
                    smartEditAnimationView.dot1X = smartEditAnimationView.centerX + f4;
                    SmartEditAnimationView smartEditAnimationView2 = SmartEditAnimationView.this;
                    smartEditAnimationView2.dot1Y = smartEditAnimationView2.centerY;
                    SmartEditAnimationView smartEditAnimationView3 = SmartEditAnimationView.this;
                    smartEditAnimationView3.dot2X = smartEditAnimationView3.centerX - f4;
                    SmartEditAnimationView smartEditAnimationView4 = SmartEditAnimationView.this;
                    smartEditAnimationView4.dot2Y = smartEditAnimationView4.centerY;
                } else if (fFloatValue < SmartEditAnimationView.ROTATION_PHASE_END) {
                    float f5 = (fFloatValue - SmartEditAnimationView.SEPARATION_PHASE_END) / 0.7f;
                    float f6 = 360.0f * f5;
                    if (f5 > 0.8f) {
                        float f7 = (f5 - 0.8f) / 0.2f;
                        f *= 1.0f - (f7 * f7);
                    }
                    SmartEditAnimationView smartEditAnimationView5 = SmartEditAnimationView.this;
                    double d = f6;
                    smartEditAnimationView5.dot1X = smartEditAnimationView5.centerX + (((float) Math.cos(Math.toRadians(d))) * f);
                    SmartEditAnimationView smartEditAnimationView6 = SmartEditAnimationView.this;
                    smartEditAnimationView6.dot1Y = smartEditAnimationView6.centerY + (((float) Math.sin(Math.toRadians(d))) * f);
                    SmartEditAnimationView smartEditAnimationView7 = SmartEditAnimationView.this;
                    double d2 = f6 + 180.0f;
                    smartEditAnimationView7.dot2X = smartEditAnimationView7.centerX + (((float) Math.cos(Math.toRadians(d2))) * f);
                    SmartEditAnimationView smartEditAnimationView8 = SmartEditAnimationView.this;
                    smartEditAnimationView8.dot2Y = smartEditAnimationView8.centerY + (f * ((float) Math.sin(Math.toRadians(d2))));
                } else {
                    SmartEditAnimationView smartEditAnimationView9 = SmartEditAnimationView.this;
                    smartEditAnimationView9.dot1X = smartEditAnimationView9.centerX;
                    SmartEditAnimationView smartEditAnimationView10 = SmartEditAnimationView.this;
                    smartEditAnimationView10.dot1Y = smartEditAnimationView10.centerY;
                    SmartEditAnimationView smartEditAnimationView11 = SmartEditAnimationView.this;
                    smartEditAnimationView11.dot2X = smartEditAnimationView11.centerX;
                    SmartEditAnimationView smartEditAnimationView12 = SmartEditAnimationView.this;
                    smartEditAnimationView12.dot2Y = smartEditAnimationView12.centerY;
                }
                SmartEditAnimationView.this.invalidate();
            }
        });
        this.animator.start();
    }

    public SmartEditAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isLoading = false;
        this.gradient = new LinearGradient(this.dot1X, this.dot1Y, this.dot2X, this.dot2Y, new int[]{-1, 0, 0, -1}, new float[]{0.0f, 0.3f, 0.7f, 1.0f}, Shader.TileMode.CLAMP);
        initForegroundDrawable(context, attributeSet);
        init();
    }

    public SmartEditAnimationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isLoading = false;
        this.gradient = new LinearGradient(this.dot1X, this.dot1Y, this.dot2X, this.dot2Y, new int[]{-1, 0, 0, -1}, new float[]{0.0f, 0.3f, 0.7f, 1.0f}, Shader.TileMode.CLAMP);
        initForegroundDrawable(context, attributeSet);
        init();
    }
}
