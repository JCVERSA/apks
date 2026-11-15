package com.bytedance.sdk.openadsdk.core.HiB;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RotateDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class vS extends FrameLayout {
    private boolean Dq;
    private Drawable EjP;
    private Drawable HiB;
    private ValueAnimator Jcg;
    private int Sj;
    private Drawable TKC;
    private int sP;
    private boolean vS;

    public vS(Context context) {
        super(context);
        this.Sj = 100;
    }

    private void Sj() {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 10000);
        this.Jcg = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(2000L);
        this.Jcg.setRepeatCount(-1);
        this.Jcg.setInterpolator(new LinearInterpolator());
        this.Jcg.setRepeatMode(1);
        this.Jcg.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                vS.this.setProgress(((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        this.Jcg.start();
        setMax(10000);
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.vS = true;
        if (this.HiB != null) {
            Sj();
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.vS = false;
        ValueAnimator valueAnimator = this.Jcg;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.Jcg.removeAllUpdateListeners();
            this.Jcg = null;
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
    }

    @Override
    protected void onVisibilityChanged(@NonNull View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (i10 != 0) {
            ValueAnimator valueAnimator = this.Jcg;
            if (valueAnimator == null || this.Dq) {
                return;
            }
            this.Dq = true;
            valueAnimator.pause();
            return;
        }
        if (this.Dq) {
            this.Dq = false;
            ValueAnimator valueAnimator2 = this.Jcg;
            if (valueAnimator2 != null) {
                valueAnimator2.resume();
            } else {
                Sj();
            }
        }
    }

    public void setIndeterminateDrawable(Drawable drawable) {
        this.HiB = drawable;
        setProgressDrawable(drawable);
        if (this.vS && this.Jcg == null) {
            Sj();
        }
    }

    @Override
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(uA.Sj(this, layoutParams));
    }

    public void setMax(int i10) {
        this.Sj = i10;
    }

    @Override
    public void setPadding(int i10, int i11, int i12, int i13) {
        super.setPaddingRelative(i10, i11, i12, i13);
    }

    public void setProgress(int i10) {
        this.sP = i10;
        Drawable drawable = this.TKC;
        if (drawable != null) {
            drawable.setLevel((int) ((i10 * 10000.0f) / this.Sj));
        }
    }

    public void setProgressDrawable(Drawable drawable) {
        this.EjP = drawable;
        setBackground(drawable);
        Drawable drawable2 = this.EjP;
        if (drawable2 instanceof LayerDrawable) {
            int numberOfLayers = ((LayerDrawable) drawable2).getNumberOfLayers();
            for (int i10 = 0; i10 < numberOfLayers; i10++) {
                Drawable drawable3 = ((LayerDrawable) this.EjP).getDrawable(i10);
                if ((drawable3 instanceof ScaleDrawable) || (drawable3 instanceof ClipDrawable)) {
                    this.TKC = drawable3;
                }
            }
        }
        Drawable drawable4 = this.EjP;
        if (drawable4 instanceof RotateDrawable) {
            this.TKC = drawable4;
        }
    }

    public vS(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.Sj = 100;
    }
}
