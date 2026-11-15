package com.transsion.baseui.widget.shimmer;

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

    private final ValueAnimator.AnimatorUpdateListener f42534a = new a();

    private final Paint f42535b;

    private final Rect f42536c;

    private final Matrix f42537d;

    private ValueAnimator f42538e;

    private com.transsion.baseui.widget.shimmer.a f42539f;

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
        this.f42535b = paint;
        this.f42536c = new Rect();
        this.f42537d = new Matrix();
        paint.setAntiAlias(true);
    }

    private float c(float f10, float f11, float f12) {
        return f10 + ((f11 - f10) * f12);
    }

    private void i() {
        com.transsion.baseui.widget.shimmer.a aVar;
        Shader radialGradient;
        Rect bounds = getBounds();
        int iWidth = bounds.width();
        int iHeight = bounds.height();
        if (iWidth == 0 || iHeight == 0 || (aVar = this.f42539f) == null) {
            return;
        }
        int iD = aVar.d(iWidth);
        int iA = this.f42539f.a(iHeight);
        com.transsion.baseui.widget.shimmer.a aVar2 = this.f42539f;
        boolean z10 = true;
        if (aVar2.f42518g != 1) {
            int i10 = aVar2.f42515d;
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
            com.transsion.baseui.widget.shimmer.a aVar3 = this.f42539f;
            radialGradient = new LinearGradient(0.0f, 0.0f, iD, f10, aVar3.f42513b, aVar3.f42512a, Shader.TileMode.CLAMP);
        } else {
            float f11 = iA / 2.0f;
            float fMax = (float) (((double) Math.max(iD, iA)) / Math.sqrt(2.0d));
            com.transsion.baseui.widget.shimmer.a aVar4 = this.f42539f;
            radialGradient = new RadialGradient(iD / 2.0f, f11, fMax, aVar4.f42513b, aVar4.f42512a, Shader.TileMode.CLAMP);
        }
        this.f42535b.setShader(radialGradient);
    }

    private void j() {
        boolean zIsStarted;
        if (this.f42539f == null) {
            return;
        }
        ValueAnimator valueAnimator = this.f42538e;
        if (valueAnimator != null) {
            zIsStarted = valueAnimator.isStarted();
            this.f42538e.cancel();
            this.f42538e.removeAllUpdateListeners();
        } else {
            zIsStarted = false;
        }
        com.transsion.baseui.widget.shimmer.a aVar = this.f42539f;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, (aVar.f42532u / aVar.f42531t) + 1.0f);
        this.f42538e = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setRepeatMode(this.f42539f.f42530s);
        this.f42538e.setRepeatCount(this.f42539f.f42529r);
        ValueAnimator valueAnimator2 = this.f42538e;
        com.transsion.baseui.widget.shimmer.a aVar2 = this.f42539f;
        valueAnimator2.setDuration(aVar2.f42531t + aVar2.f42532u);
        this.f42538e.addUpdateListener(this.f42534a);
        if (zIsStarted) {
            this.f42538e.start();
        }
    }

    public boolean a() {
        ValueAnimator valueAnimator = this.f42538e;
        return valueAnimator != null && valueAnimator.isStarted();
    }

    void b() {
        com.transsion.baseui.widget.shimmer.a aVar;
        ValueAnimator valueAnimator = this.f42538e;
        if (valueAnimator == null || valueAnimator.isStarted() || (aVar = this.f42539f) == null || !aVar.f42527p || getCallback() == null) {
            return;
        }
        this.f42538e.start();
    }

    public void d(com.transsion.baseui.widget.shimmer.a aVar) {
        this.f42539f = aVar;
        if (aVar != null) {
            this.f42535b.setXfermode(new PorterDuffXfermode(this.f42539f.f42528q ? PorterDuff.Mode.DST_IN : PorterDuff.Mode.SRC_IN));
        }
        i();
        j();
        invalidateSelf();
    }

    @Override
    public void draw(Canvas canvas) {
        float fC;
        float fC2;
        if (this.f42539f == null || this.f42535b.getShader() == null) {
            return;
        }
        float fTan = (float) Math.tan(Math.toRadians(this.f42539f.f42525n));
        float fHeight = this.f42536c.height() + (this.f42536c.width() * fTan);
        float fWidth = this.f42536c.width() + (fTan * this.f42536c.height());
        ValueAnimator valueAnimator = this.f42538e;
        float f10 = 0.0f;
        float animatedFraction = valueAnimator != null ? valueAnimator.getAnimatedFraction() : 0.0f;
        int i10 = this.f42539f.f42515d;
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
        this.f42537d.reset();
        this.f42537d.setRotate(this.f42539f.f42525n, this.f42536c.width() / 2.0f, this.f42536c.height() / 2.0f);
        this.f42537d.postTranslate(f10, fC);
        this.f42535b.getShader().setLocalMatrix(this.f42537d);
        canvas.drawRect(this.f42536c, this.f42535b);
    }

    public void e(Animator.AnimatorListener animatorListener) {
        ValueAnimator valueAnimator = this.f42538e;
        if (valueAnimator != null) {
            ArrayList<Animator.AnimatorListener> listeners = valueAnimator.getListeners();
            if (listeners != null && listeners.size() > 0) {
                listeners.clear();
            }
            this.f42538e.addListener(animatorListener);
        }
    }

    public void f() {
        if (this.f42538e == null || a() || getCallback() == null) {
            return;
        }
        this.f42538e.start();
    }

    public void g(int i10, AnimatorListenerAdapter animatorListenerAdapter) {
        com.transsion.baseui.widget.shimmer.a aVar;
        if (a() || getCallback() == null || (aVar = this.f42539f) == null) {
            return;
        }
        ValueAnimator valueAnimator = this.f42538e;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        } else {
            this.f42538e = ValueAnimator.ofFloat(0.0f, (aVar.f42532u / aVar.f42531t) + 1.0f);
        }
        this.f42538e.setRepeatMode(this.f42539f.f42530s);
        this.f42538e.setRepeatCount(i10);
        ValueAnimator valueAnimator2 = this.f42538e;
        com.transsion.baseui.widget.shimmer.a aVar2 = this.f42539f;
        valueAnimator2.setDuration(aVar2.f42531t + aVar2.f42532u);
        this.f42538e.addUpdateListener(this.f42534a);
        if (animatorListenerAdapter != null) {
            this.f42538e.addListener(animatorListenerAdapter);
        }
        this.f42538e.start();
    }

    @Override
    public int getOpacity() {
        com.transsion.baseui.widget.shimmer.a aVar = this.f42539f;
        return (aVar == null || !(aVar.f42526o || aVar.f42528q)) ? -1 : -3;
    }

    public void h() {
        if (this.f42538e == null || !a()) {
            return;
        }
        this.f42538e.end();
        this.f42538e.cancel();
    }

    @Override
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f42536c.set(0, 0, rect.width(), rect.height());
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
