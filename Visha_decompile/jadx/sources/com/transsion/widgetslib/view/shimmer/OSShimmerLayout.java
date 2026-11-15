package com.transsion.widgetslib.view.shimmer;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ComposeShader;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import com.google.android.gms.common.ConnectionResult;
import com.transsion.widgetslib.R;
import defpackage.olb;

public class OSShimmerLayout extends FrameLayout {
    public int b;
    public Rect c;
    public Paint d;
    public ValueAnimator e;
    public Bitmap f;
    public Bitmap g;
    public Canvas h;
    public boolean i;
    public boolean j;
    public boolean k;
    public int l;
    public int m;
    public int n;
    public float o;
    public float p;
    public ViewTreeObserver.OnPreDrawListener q;

    public class a implements ViewTreeObserver.OnPreDrawListener {
        public a() {
        }

        @Override
        public boolean onPreDraw() {
            OSShimmerLayout.this.getViewTreeObserver().removeOnPreDrawListener(OSShimmerLayout.this.q);
            OSShimmerLayout.this.q = null;
            OSShimmerLayout.this.startShimmerAnimation();
            return true;
        }
    }

    public class b implements ValueAnimator.AnimatorUpdateListener {
        public final int b;
        public final int c;

        public b(int i, int i2) {
            this.b = i;
            this.c = i2;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            OSShimmerLayout.this.b = this.b + ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (OSShimmerLayout.this.b + this.c >= 0) {
                OSShimmerLayout.this.invalidate();
            }
        }
    }

    public OSShimmerLayout(Context context) {
        this(context, null);
    }

    private float[] getGradientColorDistribution() {
        float[] fArr = {0.0f, 0.5f - (f / 2.0f), (f / 2.0f) + 0.5f, 1.0f};
        float f = this.p;
        return fArr;
    }

    private Bitmap getMaskBitmap() {
        if (this.g == null) {
            this.g = g((int) (this.c.width() / this.o), getHeight());
        }
        return this.g;
    }

    private Animator getShimmerAnimation() {
        ValueAnimator valueAnimator = this.e;
        if (valueAnimator != null) {
            return valueAnimator;
        }
        if (this.c == null) {
            this.c = e();
        }
        int height = ((int) ((((double) getHeight()) / Math.tan(Math.toRadians(Math.abs(this.n)))) * 2.0d)) + getWidth();
        int i = -this.c.width();
        int iWidth = this.c.width();
        ValueAnimator valueAnimatorOfInt = this.i ? ValueAnimator.ofInt(height, 0) : ValueAnimator.ofInt(0, height);
        this.e = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(this.l);
        this.e.setRepeatCount(-1);
        this.e.addUpdateListener(new b(i, iWidth));
        return this.e;
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        if (!this.j || getWidth() <= 0 || getHeight() <= 0) {
            super.dispatchDraw(canvas);
        } else {
            i(canvas);
        }
    }

    public final Rect e() {
        return new Rect(0, 0, f(), getHeight());
    }

    public final int f() {
        return (int) ((((double) (getWidth() * this.o)) / Math.cos(Math.toRadians(Math.abs(this.n)))) + (((double) getHeight()) * Math.tan(Math.toRadians(Math.abs(this.n)))));
    }

    public final Bitmap g(int i, int i2) {
        try {
            return Bitmap.createBitmap(i, i2, Bitmap.Config.ALPHA_8);
        } catch (OutOfMemoryError unused) {
            System.gc();
            return null;
        }
    }

    public final void h() {
        if (this.d != null) {
            return;
        }
        int iK = k(this.m);
        float width = getWidth() * this.o;
        float height = this.n >= 0 ? getHeight() : 0.0f;
        float fCos = ((float) Math.cos(Math.toRadians(this.n))) * width;
        float fSin = height + (((float) Math.sin(Math.toRadians(this.n))) * width);
        int i = this.m;
        int[] iArr = {iK, i, i, iK};
        float[] gradientColorDistribution = getGradientColorDistribution();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        ComposeShader composeShader = new ComposeShader(new LinearGradient(0.0f, height, fCos, fSin, iArr, gradientColorDistribution, tileMode), new BitmapShader(this.f, tileMode, tileMode), PorterDuff.Mode.DST_IN);
        Paint paint = new Paint();
        this.d = paint;
        paint.setAntiAlias(true);
        this.d.setDither(true);
        this.d.setFilterBitmap(true);
        this.d.setShader(composeShader);
    }

    public void hideProgressView() {
        setVisibility(8);
        stopShimmerAnimation();
        this.j = false;
    }

    public final void i(Canvas canvas) {
        super.dispatchDraw(canvas);
        Bitmap maskBitmap = getMaskBitmap();
        this.f = maskBitmap;
        if (maskBitmap == null) {
            return;
        }
        if (this.h == null) {
            this.h = new Canvas(this.f);
        }
        this.h.drawColor(0, PorterDuff.Mode.CLEAR);
        this.h.save();
        this.h.translate(-this.b, 0.0f);
        super.dispatchDraw(this.h);
        this.h.restore();
        j(canvas);
        this.f = null;
    }

    public final void j(Canvas canvas) {
        h();
        canvas.save();
        canvas.translate(this.b, 0.0f);
        Rect rect = this.c;
        canvas.drawRect(rect.left, 0.0f, rect.width() / this.o, this.c.height(), this.d);
        canvas.restore();
    }

    public final int k(int i) {
        return Color.argb(0, Color.red(i), Color.green(i), Color.blue(i));
    }

    public final void l() {
        this.h = null;
        Bitmap bitmap = this.g;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        this.g.recycle();
        this.g = null;
    }

    public final void m() {
        if (this.j) {
            n();
            startShimmerAnimation();
        }
    }

    public final void n() {
        ValueAnimator valueAnimator = this.e;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.e.removeAllUpdateListeners();
        }
        this.e = null;
        this.d = null;
        this.j = false;
        l();
    }

    @Override
    public void onDetachedFromWindow() {
        n();
        super.onDetachedFromWindow();
    }

    public void setAnimationReversed(boolean z) {
        this.i = z;
        m();
    }

    public void setGradientCenterColorWidth(float f) {
        if (f <= 0.0f || 1.0f <= f) {
            throw new IllegalArgumentException(String.format("gradientCenterColorWidth value must be higher than %d and less than %d", (byte) 0, (byte) 1));
        }
        this.p = f;
        m();
    }

    public void setMaskWidth(float f) {
        if (f <= 0.0f || 1.0f < f) {
            throw new IllegalArgumentException(String.format("maskWidth value must be higher than %d and less or equal to %d", (byte) 0, (byte) 1));
        }
        this.o = f;
        m();
    }

    public void setShimmerAngle(int i) {
        if (i < -45 || 45 < i) {
            throw new IllegalArgumentException(String.format("shimmerAngle value must be between %d and %d", (byte) -45, (byte) 45));
        }
        this.n = i;
        m();
    }

    public void setShimmerAnimationDuration(int i) {
        this.l = i;
        m();
    }

    public void setShimmerColor(int i) {
        this.m = i;
        m();
    }

    @Override
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i != 0) {
            stopShimmerAnimation();
        } else if (this.k) {
            startShimmerAnimation();
        }
    }

    public void showProgressView() {
        setVisibility(0);
        startShimmerAnimation();
    }

    public void startShimmerAnimation() {
        if (this.j) {
            return;
        }
        if (getWidth() == 0) {
            if (this.q == null) {
                this.q = new a();
                getViewTreeObserver().addOnPreDrawListener(this.q);
                return;
            }
            return;
        }
        Animator shimmerAnimation = getShimmerAnimation();
        shimmerAnimation.setInterpolator(new DecelerateInterpolator());
        shimmerAnimation.start();
        this.j = true;
    }

    public void stopShimmerAnimation() {
        if (this.q != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.q);
            this.q = null;
        }
        n();
    }

    public OSShimmerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public OSShimmerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setWillNotDraw(false);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.OSShimmerLayout, 0, 0);
        try {
            this.n = typedArrayObtainStyledAttributes.getInteger(R.styleable.OSShimmerLayout_os_shimmer_angle, 45);
            this.l = typedArrayObtainStyledAttributes.getInteger(R.styleable.OSShimmerLayout_os_shimmer_animation_duration, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
            this.m = typedArrayObtainStyledAttributes.getColor(R.styleable.OSShimmerLayout_os_shimmer_color, olb.m(getContext(), R.attr.os_fill_base, R.color.os_fill_base_hios));
            this.k = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSShimmerLayout_os_shimmer_auto_start, true);
            this.o = typedArrayObtainStyledAttributes.getFloat(R.styleable.OSShimmerLayout_os_shimmer_mask_width, 0.9f);
            this.p = typedArrayObtainStyledAttributes.getFloat(R.styleable.OSShimmerLayout_os_shimmer_gradient_center_color_width, 0.3f);
            this.i = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSShimmerLayout_os_shimmer_reverse_animation, false);
            typedArrayObtainStyledAttributes.recycle();
            setMaskWidth(this.o);
            setGradientCenterColorWidth(this.p);
            setShimmerAngle(this.n);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }
}
