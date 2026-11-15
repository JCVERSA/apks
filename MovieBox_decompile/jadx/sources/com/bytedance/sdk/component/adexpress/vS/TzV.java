package com.bytedance.sdk.component.adexpress.vS;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import android.view.animation.LinearInterpolator;

public class TzV extends View {
    private float Dq;
    private ValueAnimator EjP;
    private Paint HiB;
    private float Jcg;
    private float Sj;
    private int TEQ;
    private ValueAnimator TKC;
    private float sP;
    private Animator.AnimatorListener uA;
    private long vS;

    public TzV(Context context, int i10) {
        super(context);
        this.vS = 300L;
        this.Jcg = 0.0f;
        this.TEQ = i10;
        Sj();
    }

    public void TKC() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.Dq, 0.0f);
        this.EjP = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.vS);
        this.EjP.setInterpolator(new LinearInterpolator());
        this.EjP.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                TzV.this.Jcg = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                TzV.this.invalidate();
            }
        });
        Animator.AnimatorListener animatorListener = this.uA;
        if (animatorListener != null) {
            this.EjP.addListener(animatorListener);
        }
        this.EjP.start();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawCircle(this.Sj, this.sP, this.Jcg, this.HiB);
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.Sj = i10 / 2.0f;
        this.sP = i11 / 2.0f;
        this.Dq = (float) (Math.hypot(i10, i11) / 2.0d);
    }

    public void sP() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, this.Dq);
        this.TKC = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.vS);
        this.TKC.setInterpolator(new LinearInterpolator());
        this.TKC.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                TzV.this.Jcg = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                TzV.this.invalidate();
            }
        });
        this.TKC.start();
    }

    public void setAnimationListener(Animator.AnimatorListener animatorListener) {
        this.uA = animatorListener;
    }

    public void Sj() {
        Paint paint = new Paint(1);
        this.HiB = paint;
        paint.setStyle(Paint.Style.FILL);
        this.HiB.setColor(this.TEQ);
    }
}
