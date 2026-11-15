package com.just.agentweb;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;

public class WebIndicator extends BaseIndicatorView implements BaseIndicatorSpec {
    public static final int DO_END_ANIMATION_DURATION = 600;
    public static final int FINISH = 2;
    public static final int MAX_DECELERATE_SPEED_DURATION = 450;
    public static final int MAX_UNIFORM_SPEED_DURATION = 8000;
    public static final int STARTED = 1;
    public static final int UN_START = 0;
    private int indicatorStatus;
    private Animator mAnimator;
    private AnimatorListenerAdapter mAnimatorListenerAdapter;
    private ValueAnimator.AnimatorUpdateListener mAnimatorUpdateListener;
    private int mBgColor;
    private Paint mBgPaint;
    private int mColor;
    private int mCurrentDoEndAnimationDuration;
    private int mCurrentMaxDecelerateSpeedDuration;
    private int mCurrentMaxUniformSpeedDuration;
    private float mCurrentProgress;
    private Paint mPaint;
    private int mTargetWidth;
    public int mWebIndicatorDefaultHeight;

    public WebIndicator(Context context) {
        this(context, null);
    }

    public void doEnd() {
        if (this.indicatorStatus == 2 && this.mCurrentProgress == 100.0f) {
            setVisibility(8);
            this.mCurrentProgress = 0.0f;
            setAlpha(1.0f);
        }
        this.indicatorStatus = 0;
    }

    private void init(Context context, AttributeSet attributeSet, int i) {
        this.mPaint = new Paint();
        this.mColor = Color.parseColor("#1aad19");
        this.mPaint.setAntiAlias(true);
        this.mPaint.setColor(this.mColor);
        this.mPaint.setDither(true);
        Paint paint = this.mPaint;
        Paint.Cap cap = Paint.Cap.SQUARE;
        paint.setStrokeCap(cap);
        this.mTargetWidth = context.getResources().getDisplayMetrics().widthPixels;
        this.mWebIndicatorDefaultHeight = AgentWebUtils.dp2px(context, 3.0f);
        Paint paint2 = new Paint();
        this.mBgPaint = paint2;
        paint2.setAntiAlias(true);
        this.mBgPaint.setColor(Color.parseColor("#f58220"));
        this.mBgPaint.setDither(true);
        this.mBgPaint.setStrokeCap(cap);
    }

    private void startAnim(boolean z) {
        ValueAnimator valueAnimatorOfFloat;
        float f = z ? 100.0f : 95.0f;
        Animator animator = this.mAnimator;
        if (animator != null && animator.isStarted()) {
            this.mAnimator.cancel();
        }
        float f2 = this.mCurrentProgress;
        if (f2 == 0.0f) {
            f2 = 1.0E-8f;
        }
        this.mCurrentProgress = f2;
        if (z) {
            if (f2 < 95.0f) {
                valueAnimatorOfFloat = ValueAnimator.ofFloat(f2, 95.0f);
                valueAnimatorOfFloat.setDuration((long) (((1.0f - (this.mCurrentProgress / 100.0f)) - 0.05f) * this.mCurrentMaxDecelerateSpeedDuration));
                valueAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
                valueAnimatorOfFloat.addUpdateListener(this.mAnimatorUpdateListener);
            } else {
                valueAnimatorOfFloat = null;
            }
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "alpha", 1.0f, 0.0f);
            objectAnimatorOfFloat.setDuration(this.mCurrentDoEndAnimationDuration);
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(95.0f, 100.0f);
            valueAnimatorOfFloat2.setDuration(this.mCurrentDoEndAnimationDuration);
            valueAnimatorOfFloat2.addUpdateListener(this.mAnimatorUpdateListener);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(objectAnimatorOfFloat, valueAnimatorOfFloat2);
            if (valueAnimatorOfFloat != null) {
                AnimatorSet animatorSet2 = new AnimatorSet();
                animatorSet2.play(animatorSet).after(valueAnimatorOfFloat);
                animatorSet = animatorSet2;
            }
            animatorSet.addListener(this.mAnimatorListenerAdapter);
            animatorSet.start();
            this.mAnimator = animatorSet;
        } else {
            AnimatorSet animatorSet3 = new AnimatorSet();
            float f3 = f * 0.6f;
            ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(this.mCurrentProgress, f3);
            ValueAnimator valueAnimatorOfFloat4 = ValueAnimator.ofFloat(f3, f);
            float f4 = (long) (((1.0f - (this.mCurrentProgress / 100.0f)) - 0.05f) * this.mCurrentMaxUniformSpeedDuration);
            valueAnimatorOfFloat3.setInterpolator(new LinearInterpolator());
            valueAnimatorOfFloat3.setDuration((long) (f4 * 0.4f));
            valueAnimatorOfFloat3.addUpdateListener(this.mAnimatorUpdateListener);
            valueAnimatorOfFloat4.setInterpolator(new LinearInterpolator());
            valueAnimatorOfFloat4.setDuration((long) (0.6f * f4));
            valueAnimatorOfFloat4.addUpdateListener(this.mAnimatorUpdateListener);
            animatorSet3.play(valueAnimatorOfFloat4).after(valueAnimatorOfFloat3);
            animatorSet3.start();
            this.mAnimator = animatorSet3;
        }
        this.indicatorStatus = 1;
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.mBgPaint);
        canvas.drawRect(0.0f, 0.0f, (this.mCurrentProgress / 100.0f) * getWidth(), getHeight(), this.mPaint);
    }

    @Override
    public void hide() {
        this.indicatorStatus = 2;
    }

    @Override
    public FrameLayout.LayoutParams offerLayoutParams() {
        return new FrameLayout.LayoutParams(-1, this.mWebIndicatorDefaultHeight);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Animator animator = this.mAnimator;
        if (animator == null || !animator.isStarted()) {
            return;
        }
        this.mAnimator.cancel();
        this.mAnimator = null;
    }

    @Override
    public void onDraw(Canvas canvas) {
    }

    @Override
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE && size > getContext().getResources().getDisplayMetrics().widthPixels) {
            size = getContext().getResources().getDisplayMetrics().widthPixels;
        }
        if (mode2 == Integer.MIN_VALUE) {
            size2 = this.mWebIndicatorDefaultHeight;
        }
        setMeasuredDimension(size, size2);
    }

    @Override
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.mTargetWidth = getMeasuredWidth();
        int i5 = getContext().getResources().getDisplayMetrics().widthPixels;
        int i6 = this.mTargetWidth;
        if (i6 >= i5) {
            this.mCurrentMaxDecelerateSpeedDuration = MAX_DECELERATE_SPEED_DURATION;
            this.mCurrentMaxUniformSpeedDuration = 8000;
            this.mCurrentDoEndAnimationDuration = MAX_DECELERATE_SPEED_DURATION;
        } else {
            float f = i6 / i5;
            this.mCurrentMaxUniformSpeedDuration = (int) (8000.0f * f);
            this.mCurrentMaxDecelerateSpeedDuration = (int) (450.0f * f);
            this.mCurrentDoEndAnimationDuration = (int) (f * 600.0f);
        }
        LogUtils.i("WebProgress", "CURRENT_MAX_UNIFORM_SPEED_DURATION" + this.mCurrentMaxUniformSpeedDuration);
    }

    @Override
    public void reset() {
        this.mCurrentProgress = 0.0f;
        Animator animator = this.mAnimator;
        if (animator == null || !animator.isStarted()) {
            return;
        }
        this.mAnimator.cancel();
    }

    public void setBgColor(int i) {
        this.mBgColor = i;
        this.mBgPaint.setColor(i);
    }

    public void setColor(int i) {
        this.mColor = i;
        this.mPaint.setColor(i);
    }

    public void setProgress(float f) {
        if (getVisibility() == 8) {
            setVisibility(0);
        }
        if (f >= 95.0f && this.indicatorStatus != 2) {
            startAnim(true);
        }
    }

    @Override
    public void show() {
        if (getVisibility() == 8) {
            setVisibility(0);
            this.mCurrentProgress = 0.0f;
            startAnim(false);
        }
    }

    public WebIndicator(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WebIndicator(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTargetWidth = 0;
        this.mCurrentMaxUniformSpeedDuration = 8000;
        this.mCurrentMaxDecelerateSpeedDuration = MAX_DECELERATE_SPEED_DURATION;
        this.mCurrentDoEndAnimationDuration = 600;
        this.indicatorStatus = 0;
        this.mCurrentProgress = 0.0f;
        this.mWebIndicatorDefaultHeight = 3;
        this.mAnimatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                WebIndicator.this.mCurrentProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                WebIndicator.this.invalidate();
            }
        };
        this.mAnimatorListenerAdapter = new AnimatorListenerAdapter() {
            @Override
            public void onAnimationEnd(Animator animator) {
                WebIndicator.this.doEnd();
            }
        };
        init(context, attributeSet, i);
    }

    @Override
    public void setProgress(int i) {
        setProgress(i);
    }
}
