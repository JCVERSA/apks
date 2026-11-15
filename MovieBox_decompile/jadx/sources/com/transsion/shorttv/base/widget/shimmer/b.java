package com.transsion.shorttv.base.widget.shimmer;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import java.util.ArrayList;

public final class b extends Drawable {

    private final ValueAnimator.AnimatorUpdateListener f50947a = new a();

    private final Paint f50948b;

    private final Rect f50949c;

    private final Matrix f50950d;

    private ValueAnimator f50951e;

    private com.transsion.shorttv.base.widget.shimmer.a f50952f;

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            b.this.invalidateSelf();
        }
    }

    public b() {
        Paint paint = new Paint();
        this.f50948b = paint;
        this.f50949c = new Rect();
        this.f50950d = new Matrix();
        paint.setAntiAlias(true);
    }

    private float c(float f10, float f11, float f12) {
        return f10 + ((f11 - f10) * f12);
    }

    private void i() {
        com.transsion.shorttv.base.widget.shimmer.a aVar;
        Shader radialGradient;
        Rect bounds = getBounds();
        int iWidth = bounds.width();
        int iHeight = bounds.height();
        if (iWidth == 0 || iHeight == 0 || (aVar = this.f50952f) == null) {
            return;
        }
        int iD = aVar.d(iWidth);
        int iA = this.f50952f.a(iHeight);
        com.transsion.shorttv.base.widget.shimmer.a aVar2 = this.f50952f;
        boolean z10 = true;
        if (aVar2.f50931g != 1) {
            int i10 = aVar2.f50928d;
            if (i10 != 1 && i10 != 3) {
                z10 = false;
            }
            if (z10) {
                iD = 0;
            }
            if (!z10) {
                iA = 0;
            }
            float f10 = iA;
            com.transsion.shorttv.base.widget.shimmer.a aVar3 = this.f50952f;
            radialGradient = new LinearGradient(0.0f, 0.0f, iD, f10, aVar3.f50926b, aVar3.f50925a, Shader.TileMode.CLAMP);
        } else {
            float f11 = iA / 2.0f;
            float fMax = (float) (((double) Math.max(iD, iA)) / Math.sqrt(2.0d));
            com.transsion.shorttv.base.widget.shimmer.a aVar4 = this.f50952f;
            radialGradient = new RadialGradient(iD / 2.0f, f11, fMax, aVar4.f50926b, aVar4.f50925a, Shader.TileMode.CLAMP);
        }
        this.f50948b.setShader(radialGradient);
    }

    private void j() {
        boolean zIsStarted;
        if (this.f50952f == null) {
            return;
        }
        ValueAnimator valueAnimator = this.f50951e;
        if (valueAnimator != null) {
            zIsStarted = valueAnimator.isStarted();
            this.f50951e.cancel();
            this.f50951e.removeAllUpdateListeners();
        } else {
            zIsStarted = false;
        }
        com.transsion.shorttv.base.widget.shimmer.a aVar = this.f50952f;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, (aVar.f50945u / aVar.f50944t) + 1.0f);
        this.f50951e = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setRepeatMode(this.f50952f.f50943s);
        this.f50951e.setRepeatCount(this.f50952f.f50942r);
        ValueAnimator valueAnimator2 = this.f50951e;
        com.transsion.shorttv.base.widget.shimmer.a aVar2 = this.f50952f;
        valueAnimator2.setDuration(aVar2.f50944t + aVar2.f50945u);
        this.f50951e.addUpdateListener(this.f50947a);
        if (zIsStarted) {
            this.f50951e.start();
        }
    }

    public boolean a() {
        ValueAnimator valueAnimator = this.f50951e;
        return valueAnimator != null && valueAnimator.isStarted();
    }

    void b() {
        com.transsion.shorttv.base.widget.shimmer.a aVar;
        ValueAnimator valueAnimator = this.f50951e;
        if (valueAnimator == null || valueAnimator.isStarted() || (aVar = this.f50952f) == null || !aVar.f50940p || getCallback() == null) {
            return;
        }
        this.f50951e.start();
    }

    public void d(com.transsion.shorttv.base.widget.shimmer.a aVar) {
        this.f50952f = aVar;
        if (aVar != null) {
            this.f50948b.setXfermode(new PorterDuffXfermode(this.f50952f.f50941q ? PorterDuff.Mode.DST_IN : PorterDuff.Mode.SRC_IN));
        }
        i();
        j();
        invalidateSelf();
    }

    @Override
    public void draw(Canvas canvas) {
        float fC;
        float fC2;
        if (this.f50952f == null || this.f50948b.getShader() == null) {
            return;
        }
        float fTan = (float) Math.tan(Math.toRadians(this.f50952f.f50938n));
        float fHeight = this.f50949c.height() + (this.f50949c.width() * fTan);
        float fWidth = this.f50949c.width() + (fTan * this.f50949c.height());
        ValueAnimator valueAnimator = this.f50951e;
        float f10 = 0.0f;
        float animatedFraction = valueAnimator != null ? valueAnimator.getAnimatedFraction() : 0.0f;
        int i10 = this.f50952f.f50928d;
        if (i10 != 1) {
            if (i10 == 2) {
                fC2 = c(fWidth, -fWidth, animatedFraction);
            } else if (i10 != 3) {
                fC2 = c(-fWidth, fWidth, animatedFraction);
            } else {
                fC = c(fHeight, -fHeight, animatedFraction);
            }
            f10 = fC2;
            fC = 0.0f;
        } else {
            fC = c(-fHeight, fHeight, animatedFraction);
        }
        this.f50950d.reset();
        this.f50950d.setRotate(this.f50952f.f50938n, this.f50949c.width() / 2.0f, this.f50949c.height() / 2.0f);
        this.f50950d.postTranslate(f10, fC);
        this.f50948b.getShader().setLocalMatrix(this.f50950d);
        canvas.drawRect(this.f50949c, this.f50948b);
    }

    public void e(Animator.AnimatorListener animatorListener) {
        ValueAnimator valueAnimator = this.f50951e;
        if (valueAnimator != null) {
            ArrayList<Animator.AnimatorListener> listeners = valueAnimator.getListeners();
            if (listeners != null && listeners.size() > 0) {
                listeners.clear();
            }
            this.f50951e.addListener(animatorListener);
        }
    }

    public void f() {
        if (this.f50951e == null || a() || getCallback() == null) {
            return;
        }
        this.f50951e.start();
    }

    public void g(int i10, AnimatorListenerAdapter animatorListenerAdapter) {
        com.transsion.shorttv.base.widget.shimmer.a aVar;
        if (a() || getCallback() == null || (aVar = this.f50952f) == null) {
            return;
        }
        ValueAnimator valueAnimator = this.f50951e;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        } else {
            this.f50951e = ValueAnimator.ofFloat(0.0f, (aVar.f50945u / aVar.f50944t) + 1.0f);
        }
        this.f50951e.setRepeatMode(this.f50952f.f50943s);
        this.f50951e.setRepeatCount(i10);
        ValueAnimator valueAnimator2 = this.f50951e;
        com.transsion.shorttv.base.widget.shimmer.a aVar2 = this.f50952f;
        valueAnimator2.setDuration(aVar2.f50944t + aVar2.f50945u);
        this.f50951e.addUpdateListener(this.f50947a);
        if (animatorListenerAdapter != null) {
            this.f50951e.addListener(animatorListenerAdapter);
        }
        this.f50951e.start();
    }

    @Override
    public int getOpacity() {
        com.transsion.shorttv.base.widget.shimmer.a aVar = this.f50952f;
        return (aVar == null || !(aVar.f50939o || aVar.f50941q)) ? -1 : -3;
    }

    public void h() {
        if (this.f50951e == null || !a()) {
            return;
        }
        this.f50951e.end();
        this.f50951e.cancel();
    }

    @Override
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f50949c.set(0, 0, rect.width(), rect.height());
        i();
        b();
    }

    @Override
    public void setAlpha(int i10) {
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
