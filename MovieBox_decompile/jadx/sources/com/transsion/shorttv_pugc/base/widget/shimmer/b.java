package com.transsion.shorttv_pugc.base.widget.shimmer;

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

    private final ValueAnimator.AnimatorUpdateListener f51927a = new a();

    private final Paint f51928b;

    private final Rect f51929c;

    private final Matrix f51930d;

    private ValueAnimator f51931e;

    private com.transsion.shorttv_pugc.base.widget.shimmer.a f51932f;

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
        this.f51928b = paint;
        this.f51929c = new Rect();
        this.f51930d = new Matrix();
        paint.setAntiAlias(true);
    }

    private float c(float f10, float f11, float f12) {
        return f10 + ((f11 - f10) * f12);
    }

    private void i() {
        com.transsion.shorttv_pugc.base.widget.shimmer.a aVar;
        Shader radialGradient;
        Rect bounds = getBounds();
        int iWidth = bounds.width();
        int iHeight = bounds.height();
        if (iWidth == 0 || iHeight == 0 || (aVar = this.f51932f) == null) {
            return;
        }
        int iD = aVar.d(iWidth);
        int iA = this.f51932f.a(iHeight);
        com.transsion.shorttv_pugc.base.widget.shimmer.a aVar2 = this.f51932f;
        boolean z10 = true;
        if (aVar2.f51911g != 1) {
            int i10 = aVar2.f51908d;
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
            com.transsion.shorttv_pugc.base.widget.shimmer.a aVar3 = this.f51932f;
            radialGradient = new LinearGradient(0.0f, 0.0f, iD, f10, aVar3.f51906b, aVar3.f51905a, Shader.TileMode.CLAMP);
        } else {
            float f11 = iA / 2.0f;
            float fMax = (float) (((double) Math.max(iD, iA)) / Math.sqrt(2.0d));
            com.transsion.shorttv_pugc.base.widget.shimmer.a aVar4 = this.f51932f;
            radialGradient = new RadialGradient(iD / 2.0f, f11, fMax, aVar4.f51906b, aVar4.f51905a, Shader.TileMode.CLAMP);
        }
        this.f51928b.setShader(radialGradient);
    }

    private void j() {
        boolean zIsStarted;
        if (this.f51932f == null) {
            return;
        }
        ValueAnimator valueAnimator = this.f51931e;
        if (valueAnimator != null) {
            zIsStarted = valueAnimator.isStarted();
            this.f51931e.cancel();
            this.f51931e.removeAllUpdateListeners();
        } else {
            zIsStarted = false;
        }
        com.transsion.shorttv_pugc.base.widget.shimmer.a aVar = this.f51932f;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, (aVar.f51925u / aVar.f51924t) + 1.0f);
        this.f51931e = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setRepeatMode(this.f51932f.f51923s);
        this.f51931e.setRepeatCount(this.f51932f.f51922r);
        ValueAnimator valueAnimator2 = this.f51931e;
        com.transsion.shorttv_pugc.base.widget.shimmer.a aVar2 = this.f51932f;
        valueAnimator2.setDuration(aVar2.f51924t + aVar2.f51925u);
        this.f51931e.addUpdateListener(this.f51927a);
        if (zIsStarted) {
            this.f51931e.start();
        }
    }

    public boolean a() {
        ValueAnimator valueAnimator = this.f51931e;
        return valueAnimator != null && valueAnimator.isStarted();
    }

    void b() {
        com.transsion.shorttv_pugc.base.widget.shimmer.a aVar;
        ValueAnimator valueAnimator = this.f51931e;
        if (valueAnimator == null || valueAnimator.isStarted() || (aVar = this.f51932f) == null || !aVar.f51920p || getCallback() == null) {
            return;
        }
        this.f51931e.start();
    }

    public void d(com.transsion.shorttv_pugc.base.widget.shimmer.a aVar) {
        this.f51932f = aVar;
        if (aVar != null) {
            this.f51928b.setXfermode(new PorterDuffXfermode(this.f51932f.f51921q ? PorterDuff.Mode.DST_IN : PorterDuff.Mode.SRC_IN));
        }
        i();
        j();
        invalidateSelf();
    }

    @Override
    public void draw(Canvas canvas) {
        float fC;
        float fC2;
        if (this.f51932f == null || this.f51928b.getShader() == null) {
            return;
        }
        float fTan = (float) Math.tan(Math.toRadians(this.f51932f.f51918n));
        float fHeight = this.f51929c.height() + (this.f51929c.width() * fTan);
        float fWidth = this.f51929c.width() + (fTan * this.f51929c.height());
        ValueAnimator valueAnimator = this.f51931e;
        float f10 = 0.0f;
        float animatedFraction = valueAnimator != null ? valueAnimator.getAnimatedFraction() : 0.0f;
        int i10 = this.f51932f.f51908d;
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
        this.f51930d.reset();
        this.f51930d.setRotate(this.f51932f.f51918n, this.f51929c.width() / 2.0f, this.f51929c.height() / 2.0f);
        this.f51930d.postTranslate(f10, fC);
        this.f51928b.getShader().setLocalMatrix(this.f51930d);
        canvas.drawRect(this.f51929c, this.f51928b);
    }

    public void e(Animator.AnimatorListener animatorListener) {
        ValueAnimator valueAnimator = this.f51931e;
        if (valueAnimator != null) {
            ArrayList<Animator.AnimatorListener> listeners = valueAnimator.getListeners();
            if (listeners != null && listeners.size() > 0) {
                listeners.clear();
            }
            this.f51931e.addListener(animatorListener);
        }
    }

    public void f() {
        if (this.f51931e == null || a() || getCallback() == null) {
            return;
        }
        this.f51931e.start();
    }

    public void g(int i10, AnimatorListenerAdapter animatorListenerAdapter) {
        com.transsion.shorttv_pugc.base.widget.shimmer.a aVar;
        if (a() || getCallback() == null || (aVar = this.f51932f) == null) {
            return;
        }
        ValueAnimator valueAnimator = this.f51931e;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        } else {
            this.f51931e = ValueAnimator.ofFloat(0.0f, (aVar.f51925u / aVar.f51924t) + 1.0f);
        }
        this.f51931e.setRepeatMode(this.f51932f.f51923s);
        this.f51931e.setRepeatCount(i10);
        ValueAnimator valueAnimator2 = this.f51931e;
        com.transsion.shorttv_pugc.base.widget.shimmer.a aVar2 = this.f51932f;
        valueAnimator2.setDuration(aVar2.f51924t + aVar2.f51925u);
        this.f51931e.addUpdateListener(this.f51927a);
        if (animatorListenerAdapter != null) {
            this.f51931e.addListener(animatorListenerAdapter);
        }
        this.f51931e.start();
    }

    @Override
    public int getOpacity() {
        com.transsion.shorttv_pugc.base.widget.shimmer.a aVar = this.f51932f;
        return (aVar == null || !(aVar.f51919o || aVar.f51921q)) ? -1 : -3;
    }

    public void h() {
        if (this.f51931e == null || !a()) {
            return;
        }
        this.f51931e.end();
        this.f51931e.cancel();
    }

    @Override
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f51929c.set(0, 0, rect.width(), rect.height());
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
