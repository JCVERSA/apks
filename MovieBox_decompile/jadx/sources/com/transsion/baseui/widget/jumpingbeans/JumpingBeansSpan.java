package com.transsion.baseui.widget.jumpingbeans;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.text.TextPaint;
import android.text.style.SuperscriptSpan;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import java.lang.ref.WeakReference;

final class JumpingBeansSpan extends SuperscriptSpan implements ValueAnimator.AnimatorUpdateListener {
    private final float animatedRange;
    private final int delay;
    private ValueAnimator jumpAnimator;
    private final int loopDuration;
    private int shift;
    private final WeakReference<TextView> textView;

    private static class a implements TimeInterpolator {

        private final float f42473a;

        public a(float f10) {
            this.f42473a = Math.abs(f10);
        }

        @Override
        public float getInterpolation(float f10) {
            float f11 = this.f42473a;
            if (f10 > f11) {
                return 0.0f;
            }
            return (float) Math.sin(((double) (f10 / f11)) * 3.141592653589793d);
        }
    }

    public JumpingBeansSpan(TextView textView, int i10, int i11, int i12, float f10) {
        this.textView = new WeakReference<>(textView);
        this.delay = i12 * i11;
        this.loopDuration = i10;
        this.animatedRange = f10;
    }

    private void a() {
        d();
        Log.w("JumpingBeans", "!!! Remember to call JumpingBeans.stopJumping() when appropriate !!!");
    }

    private void b(float f10) {
        if (this.jumpAnimator != null) {
            return;
        }
        this.shift = 0;
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, ((int) f10) / 2);
        this.jumpAnimator = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(this.loopDuration).setStartDelay(this.delay);
        this.jumpAnimator.setInterpolator(new a(this.animatedRange));
        this.jumpAnimator.setRepeatCount(-1);
        this.jumpAnimator.setRepeatMode(1);
        this.jumpAnimator.addUpdateListener(this);
        this.jumpAnimator.start();
    }

    private static boolean c(View view) {
        return view.isAttachedToWindow();
    }

    private void e(ValueAnimator valueAnimator, TextView textView) {
        if (c(textView)) {
            this.shift = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            textView.invalidate();
        }
    }

    public void d() {
        ValueAnimator valueAnimator = this.jumpAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.jumpAnimator.removeAllListeners();
        }
        if (this.textView.get() != null) {
            this.textView.clear();
        }
    }

    @Override
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        TextView textView = this.textView.get();
        if (textView != null) {
            e(valueAnimator, textView);
        } else {
            a();
        }
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        b(textPaint.ascent());
        textPaint.baselineShift = this.shift;
    }

    @Override
    public void updateMeasureState(TextPaint textPaint) {
        b(textPaint.ascent());
        textPaint.baselineShift = this.shift;
    }
}
