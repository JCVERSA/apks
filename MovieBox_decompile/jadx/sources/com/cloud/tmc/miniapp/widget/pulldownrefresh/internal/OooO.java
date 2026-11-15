package com.cloud.tmc.miniapp.widget.pulldownrefresh.internal;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import androidx.annotation.NonNull;

public class OooO extends OooO0o implements Animatable, ValueAnimator.AnimatorUpdateListener {
    public int OooO0O0 = 0;
    public int OooO0OO = 0;
    public int OooO0Oo = 0;
    public Path OooO0o = new Path();
    public ValueAnimator OooO0o0;

    public OooO() {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(30, 3600);
        this.OooO0o0 = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(10000L);
        this.OooO0o0.setInterpolator(null);
        this.OooO0o0.setRepeatCount(-1);
        this.OooO0o0.setRepeatMode(1);
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        int iWidth = bounds.width();
        int iHeight = bounds.height();
        float f10 = iWidth;
        float fMax = Math.max(1.0f, f10 / 22.0f);
        if (this.OooO0O0 != iWidth || this.OooO0OO != iHeight) {
            this.OooO0o.reset();
            Path path = this.OooO0o;
            float f11 = f10 - fMax;
            float f12 = iHeight / 2.0f;
            Path.Direction direction = Path.Direction.CW;
            path.addCircle(f11, f12, fMax, direction);
            float f13 = f10 - (5.0f * fMax);
            this.OooO0o.addRect(f13, f12 - fMax, f11, f12 + fMax, direction);
            this.OooO0o.addCircle(f13, f12, fMax, direction);
            this.OooO0O0 = iWidth;
            this.OooO0OO = iHeight;
        }
        canvas.save();
        float f14 = f10 / 2.0f;
        float f15 = iHeight / 2.0f;
        canvas.rotate(this.OooO0Oo, f14, f15);
        for (int i10 = 0; i10 < 12; i10++) {
            this.OooO00o.setAlpha((i10 + 5) * 17);
            canvas.rotate(30.0f, f14, f15);
            canvas.drawPath(this.OooO0o, this.OooO00o);
        }
        canvas.restore();
    }

    @Override
    public boolean isRunning() {
        return this.OooO0o0.isRunning();
    }

    @Override
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.OooO0Oo = (((Integer) valueAnimator.getAnimatedValue()).intValue() / 30) * 30;
        invalidateSelf();
    }

    @Override
    public void start() {
        if (this.OooO0o0.isRunning()) {
            return;
        }
        this.OooO0o0.addUpdateListener(this);
        this.OooO0o0.start();
    }

    @Override
    public void stop() {
        if (this.OooO0o0.isRunning()) {
            this.OooO0o0.removeAllListeners();
            this.OooO0o0.removeAllUpdateListeners();
            this.OooO0o0.cancel();
        }
    }
}
