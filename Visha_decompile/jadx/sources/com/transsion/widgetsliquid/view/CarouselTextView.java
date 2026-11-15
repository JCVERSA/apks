package com.transsion.widgetsliquid.view;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.widgetslib.R;
import defpackage.bq5;
import defpackage.yj1;

public class CarouselTextView extends AppCompatTextView {
    public float c;
    public float d;
    public int e;
    public final int f;
    public final long g;
    public boolean h;
    public boolean i;
    public ValueAnimator j;
    public int k;
    public float l;
    public boolean m;
    public int n;
    public float o;
    public float p;
    public boolean q;
    public int[] r;
    public a s;

    public interface a {
        void a(int i);
    }

    public CarouselTextView(Context context) {
        this(context, null);
    }

    private void e() {
        setLayerType(1, null);
        setGravity(16);
        setSingleLine(true);
        setEllipsize(null);
        setTextAppearance(R.style.os_semibold_font);
        this.m = getResources().getConfiguration().getLayoutDirection() == 1;
    }

    private void j() {
        ValueAnimator valueAnimator = this.j;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.j = null;
        }
    }

    public void _setMaxWidth(int i) {
        this.n = i;
    }

    public final void c() {
        int iMeasureText = (int) getPaint().measureText(getText() != null ? getText().toString() : "");
        this.k = iMeasureText;
        this.l = iMeasureText + this.c;
    }

    public final void d() {
        int i = this.e + 1;
        this.e = i;
        if (i >= 2) {
            j();
        } else {
            this.i = true;
            postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.f();
                }
            }, 1000L);
        }
    }

    public final void f() {
        if (getWindowToken() != null) {
            this.i = false;
            if (this.h) {
                this.h = false;
            }
        }
    }

    public void forceScrollCheck() {
        h();
    }

    public final void g(float f, ValueAnimator valueAnimator) {
        if (this.i) {
            return;
        }
        this.d = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
        if (this.m) {
            float f2 = this.d;
            if (f2 > 1.0f || f2 < 0.0f) {
                return;
            }
        } else {
            float f3 = this.d;
            if (f3 < f - 1.0f || f3 > f) {
                return;
            }
        }
        d();
    }

    public final void h() {
        j();
        this.d = 0.0f;
        this.e = 0;
        this.h = true;
        this.i = false;
        i();
    }

    public final void i() {
        ValueAnimator valueAnimator = this.j;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            c();
            if (this.q) {
                final float f = this.l;
                long j = (long) (30.0f * f);
                if (this.m) {
                    this.d = 0.0f;
                    this.j = ValueAnimator.ofFloat(f, 0.0f);
                } else {
                    this.d = 0.0f;
                    this.j = ValueAnimator.ofFloat(0.0f, f);
                }
                this.j.setDuration(j);
                this.j.setInterpolator(new LinearInterpolator());
                this.j.setRepeatCount(-1);
                this.j.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                    @Override
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.b.g(f, valueAnimator2);
                    }
                });
                this.j.start();
            }
        }
    }

    public boolean isRtl() {
        return this.m;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        i();
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        boolean z = this.m;
        boolean z2 = configuration.getLayoutDirection() == 1;
        this.m = z2;
        if (z != z2) {
            h();
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j();
    }

    @Override
    public void onDraw(Canvas canvas) {
        CharSequence text = getText();
        if (text == null || text.length() == 0) {
            return;
        }
        String string = text.toString();
        TextPaint paint = getPaint();
        if (this.k == 0) {
            c();
        }
        int paddingStart = getPaddingStart();
        getPaddingEnd();
        int iSave = canvas.save();
        try {
            try {
                canvas.setMatrix(null);
                if (!this.q) {
                    canvas.drawText(string, paddingStart, getBaseline(), paint);
                } else if (this.m) {
                    float width = ((getWidth() - this.k) + this.l) - this.d;
                    canvas.drawText(string, width, getBaseline(), paint);
                    canvas.drawText(string, width - this.l, getBaseline(), paint);
                } else {
                    float f = paddingStart - this.d;
                    canvas.drawText(string, f, getBaseline(), paint);
                    canvas.drawText(string, f + this.l, getBaseline(), paint);
                }
            } catch (Exception e) {
                bq5.h("CarouselTextView", "Error in onDraw", e);
            }
        } finally {
            canvas.restoreToCount(iSave);
        }
    }

    @Override
    public void onMeasure(int i, int i2) {
        getPaint().setTextSize(this.o);
        c();
        this.q = false;
        int i3 = this.k;
        if (i3 > this.n) {
            getPaint().setTextSize(this.p);
            c();
            i3 = this.k;
            int i4 = this.n;
            if (i3 > i4) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), i2);
                this.q = true;
                i3 = i4;
            } else {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
            }
        } else {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
        }
        a aVar = this.s;
        if (aVar != null) {
            aVar.a(i3);
        }
    }

    @Override
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    @Override
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        h();
        requestLayout();
    }

    public void setIntervalTime(long j) {
        h();
    }

    public void setMaxCarouselCount(int i) {
        this.e = 0;
        h();
    }

    public void setOnWidthChangedListener(a aVar) {
        this.s = aVar;
    }

    public void setPaused(boolean z) {
        this.i = z;
    }

    public void setTextSpacing(float f) {
        this.c = f;
        c();
        h();
        requestLayout();
    }

    public CarouselTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @SuppressLint({"ResourceAsColor"})
    public CarouselTextView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = yj1.d(getContext(), 20);
        this.d = 0.0f;
        this.e = 0;
        this.f = 2;
        this.g = 1000L;
        this.h = true;
        this.i = false;
        this.m = false;
        this.n = Integer.MAX_VALUE;
        this.q = false;
        this.r = new int[]{com.transsion.widgetsliquid.R.attr.os_text_secondary};
        this.o = TypedValue.applyDimension(1, 14.0f, context.getResources().getDisplayMetrics());
        this.p = TypedValue.applyDimension(1, 12.0f, context.getResources().getDisplayMetrics());
        if (getTextSize() == 0.0f || getTextSize() != this.o) {
            getPaint().setTextSize(this.o);
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, this.r, i, 0);
        int color = typedArrayObtainStyledAttributes.getColor(0, com.transsion.widgetsliquid.R.color.os_color_black100);
        typedArrayObtainStyledAttributes.recycle();
        getPaint().setColor(color);
        e();
    }
}
