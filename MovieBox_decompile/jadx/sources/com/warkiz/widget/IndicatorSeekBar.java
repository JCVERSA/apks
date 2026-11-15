package com.warkiz.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import androidx.annotation.NonNull;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.math.BigDecimal;

public class IndicatorSeekBar extends View {
    private float[] A;
    private int A0;
    private boolean B;
    private Drawable B0;
    private boolean C;
    private Bitmap C0;
    private boolean D;
    private int D0;
    private int E;
    private boolean E0;
    private String[] F;
    private float F0;
    private float[] G;
    private int G0;
    private float[] H;
    private boolean H0;
    private float I;
    private boolean I0;
    private int J;
    private Typeface K;
    private int L;
    private int M;
    private int N;
    private CharSequence[] O;
    private d P;
    private int Q;
    private int R;
    private boolean S;
    private int T;
    private View U;
    private View V;
    private int W;

    private Context f58464a;

    private String f58465a0;

    private Paint f58466b;

    private float[] f58467b0;

    private TextPaint f58468c;

    private int f58469c0;

    private e f58470d;

    private int f58471d0;

    private Rect f58472e;

    private int f58473e0;

    private float f58474f;

    private float f58475f0;

    private float f58476g;

    private Bitmap f58477g0;

    private float f58478h;

    private Bitmap f58479h0;

    private float f58480i;

    private Drawable f58481i0;

    private boolean f58482j;

    private int f58483j0;

    private f f58484k;

    private boolean f58485k0;

    private int f58486l;

    private boolean f58487l0;

    private int f58488m;

    private int f58489m0;

    private int f58490n;

    private boolean f58491n0;

    private int f58492o;

    private RectF f58493o0;

    private float f58494p;

    private RectF f58495p0;

    private float f58496q;

    private int f58497q0;

    private boolean f58498r;

    private int f58499r0;

    private float f58500s;

    private int f58501s0;

    private float f58502t;

    private int f58503t0;

    private float f58504u;

    private int[] f58505u0;

    private boolean f58506v;

    private boolean f58507v0;

    private int f58508w;

    private float f58509w0;

    private boolean f58510x;

    private float f58511x0;

    private boolean f58512y;

    private Bitmap f58513y0;

    private boolean f58514z;

    private int f58515z0;

    class a implements ValueAnimator.AnimatorUpdateListener {

        final float f58516a;

        final int f58517b;

        a(float f10, int i10) {
            this.f58516a = f10;
            this.f58517b = i10;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            IndicatorSeekBar indicatorSeekBar = IndicatorSeekBar.this;
            indicatorSeekBar.f58476g = indicatorSeekBar.f58504u;
            if (this.f58516a - IndicatorSeekBar.this.A[this.f58517b] > 0.0f) {
                IndicatorSeekBar.this.f58504u = this.f58516a - ((Float) valueAnimator.getAnimatedValue()).floatValue();
            } else {
                IndicatorSeekBar.this.f58504u = this.f58516a + ((Float) valueAnimator.getAnimatedValue()).floatValue();
            }
            IndicatorSeekBar indicatorSeekBar2 = IndicatorSeekBar.this;
            indicatorSeekBar2.X(indicatorSeekBar2.f58504u);
            IndicatorSeekBar.this.setSeekListener(false);
            if (IndicatorSeekBar.this.P != null && IndicatorSeekBar.this.S) {
                IndicatorSeekBar.this.P.j();
                IndicatorSeekBar.this.a0();
            }
            IndicatorSeekBar.this.invalidate();
        }
    }

    public IndicatorSeekBar(Context context) {
        this(context, null);
    }

    private void A(Context context, AttributeSet attributeSet) {
        com.warkiz.widget.a aVar = new com.warkiz.widget.a(context);
        if (attributeSet == null) {
            l(aVar);
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.IndicatorSeekBar);
        this.f58500s = typedArrayObtainStyledAttributes.getFloat(R$styleable.IndicatorSeekBar_isb_max, aVar.f58520b);
        this.f58502t = typedArrayObtainStyledAttributes.getFloat(R$styleable.IndicatorSeekBar_isb_min, aVar.f58521c);
        this.f58504u = typedArrayObtainStyledAttributes.getFloat(R$styleable.IndicatorSeekBar_isb_progress, aVar.f58522d);
        this.f58506v = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IndicatorSeekBar_isb_progress_value_float, aVar.f58523e);
        this.f58510x = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IndicatorSeekBar_isb_user_seekable, aVar.f58526h);
        this.f58482j = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IndicatorSeekBar_isb_clear_default_padding, aVar.f58528j);
        this.f58512y = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IndicatorSeekBar_isb_only_thumb_draggable, aVar.f58527i);
        this.f58514z = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IndicatorSeekBar_isb_seek_smoothly, aVar.f58524f);
        this.B = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IndicatorSeekBar_isb_r2l, aVar.f58525g);
        this.f58497q0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.IndicatorSeekBar_isb_track_background_size, aVar.f58535q);
        this.f58499r0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.IndicatorSeekBar_isb_track_progress_size, aVar.f58537s);
        this.f58501s0 = typedArrayObtainStyledAttributes.getColor(R$styleable.IndicatorSeekBar_isb_track_background_color, aVar.f58536r);
        this.f58503t0 = typedArrayObtainStyledAttributes.getColor(R$styleable.IndicatorSeekBar_isb_track_progress_color, aVar.f58538t);
        this.f58491n0 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IndicatorSeekBar_isb_track_rounded_corners, aVar.f58539u);
        this.A0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.IndicatorSeekBar_isb_thumb_size, aVar.f58542x);
        this.B0 = typedArrayObtainStyledAttributes.getDrawable(R$styleable.IndicatorSeekBar_isb_thumb_drawable);
        this.I0 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IndicatorSeekBar_isb_thumb_adjust_auto, true);
        L(typedArrayObtainStyledAttributes.getColorStateList(R$styleable.IndicatorSeekBar_isb_thumb_color), aVar.f58543y);
        this.E0 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IndicatorSeekBar_isb_show_thumb_text, aVar.f58541w);
        this.G0 = typedArrayObtainStyledAttributes.getColor(R$styleable.IndicatorSeekBar_isb_thumb_text_color, aVar.f58540v);
        this.f58469c0 = typedArrayObtainStyledAttributes.getInt(R$styleable.IndicatorSeekBar_isb_ticks_count, aVar.H);
        this.f58483j0 = typedArrayObtainStyledAttributes.getInt(R$styleable.IndicatorSeekBar_isb_show_tick_marks_type, aVar.I);
        this.f58489m0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.IndicatorSeekBar_isb_tick_marks_size, aVar.K);
        N(typedArrayObtainStyledAttributes.getColorStateList(R$styleable.IndicatorSeekBar_isb_tick_marks_color), aVar.J);
        this.f58481i0 = typedArrayObtainStyledAttributes.getDrawable(R$styleable.IndicatorSeekBar_isb_tick_marks_drawable);
        this.f58487l0 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IndicatorSeekBar_isb_tick_marks_swept_hide, aVar.N);
        this.f58485k0 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IndicatorSeekBar_isb_tick_marks_ends_hide, aVar.M);
        this.C = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IndicatorSeekBar_isb_show_tick_texts, aVar.B);
        this.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.IndicatorSeekBar_isb_tick_texts_size, aVar.D);
        O(typedArrayObtainStyledAttributes.getColorStateList(R$styleable.IndicatorSeekBar_isb_tick_texts_color), aVar.C);
        this.O = typedArrayObtainStyledAttributes.getTextArray(R$styleable.IndicatorSeekBar_isb_tick_texts_array);
        J(typedArrayObtainStyledAttributes.getInt(R$styleable.IndicatorSeekBar_isb_tick_texts_typeface, -1), aVar.F);
        this.W = typedArrayObtainStyledAttributes.getInt(R$styleable.IndicatorSeekBar_isb_show_indicator, aVar.f58529k);
        this.Q = typedArrayObtainStyledAttributes.getColor(R$styleable.IndicatorSeekBar_isb_indicator_color, aVar.f58530l);
        this.T = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.IndicatorSeekBar_isb_indicator_text_size, aVar.f58532n);
        this.R = typedArrayObtainStyledAttributes.getColor(R$styleable.IndicatorSeekBar_isb_indicator_text_color, aVar.f58531m);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.IndicatorSeekBar_isb_indicator_content_layout, 0);
        if (resourceId > 0) {
            this.U = View.inflate(this.f58464a, resourceId, null);
        }
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.IndicatorSeekBar_isb_indicator_top_content_layout, 0);
        if (resourceId2 > 0) {
            this.V = View.inflate(this.f58464a, resourceId2, null);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void B() {
        if (this.f58482j) {
            return;
        }
        int iA = g.a(this.f58464a, 16.0f);
        if (getPaddingLeft() == 0) {
            setPadding(iA, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        if (getPaddingRight() == 0) {
            setPadding(getPaddingLeft(), getPaddingTop(), iA, getPaddingBottom());
        }
    }

    private void C() {
        int i10 = this.W;
        if (i10 != 0 && this.P == null) {
            d dVar = new d(this.f58464a, this, this.Q, i10, this.T, this.R, this.U, this.V);
            this.P = dVar;
            this.U = dVar.d();
        }
    }

    private void D() {
        E();
        int i10 = this.f58497q0;
        int i11 = this.f58499r0;
        if (i10 > i11) {
            this.f58497q0 = i11;
        }
        if (this.B0 == null) {
            float f10 = this.A0 / 2.0f;
            this.f58509w0 = f10;
            this.f58511x0 = f10 * 1.2f;
        } else {
            float fMin = Math.min(g.a(this.f58464a, 30.0f), this.A0) / 2.0f;
            this.f58509w0 = fMin;
            this.f58511x0 = fMin;
        }
        if (this.f58481i0 == null) {
            this.f58475f0 = this.f58489m0 / 2.0f;
        } else {
            this.f58475f0 = Math.min(g.a(this.f58464a, 30.0f), this.f58489m0) / 2.0f;
        }
        this.f58474f = Math.max(this.f58511x0, this.f58475f0) * 2.0f;
        G();
        S();
        this.f58476g = this.f58504u;
        q();
        this.f58493o0 = new RectF();
        this.f58495p0 = new RectF();
        B();
        C();
    }

    private void E() {
        float f10 = this.f58500s;
        float f11 = this.f58502t;
        if (f10 < f11) {
            throw new IllegalArgumentException("the Argument: MAX's value must be larger than MIN's.");
        }
        if (this.f58504u < f11) {
            this.f58504u = f11;
        }
        if (this.f58504u > f10) {
            this.f58504u = f10;
        }
    }

    private void F() {
        this.f58490n = getMeasuredWidth();
        this.f58486l = getPaddingStart();
        this.f58488m = getPaddingEnd();
        this.f58492o = getPaddingTop();
        float f10 = (this.f58490n - this.f58486l) - this.f58488m;
        this.f58494p = f10;
        int i10 = this.f58469c0;
        this.f58496q = f10 / (i10 + (-1) > 0 ? i10 - 1 : 1);
    }

    private void G() {
        if (this.f58466b == null) {
            this.f58466b = new Paint();
        }
        if (this.f58491n0) {
            this.f58466b.setStrokeCap(Paint.Cap.ROUND);
        }
        this.f58466b.setAntiAlias(true);
        int i10 = this.f58497q0;
        if (i10 > this.f58499r0) {
            this.f58499r0 = i10;
        }
    }

    private void H() {
        if (this.f58468c == null) {
            TextPaint textPaint = new TextPaint();
            this.f58468c = textPaint;
            textPaint.setAntiAlias(true);
            this.f58468c.setTextAlign(Paint.Align.CENTER);
            this.f58468c.setTextSize(this.J);
        }
        if (this.f58472e == null) {
            this.f58472e = new Rect();
        }
    }

    private void I() {
        int i10 = this.f58469c0;
        if (i10 == 0) {
            return;
        }
        if (this.C) {
            this.F = new String[i10];
        }
        for (int i11 = 0; i11 < this.f58467b0.length; i11++) {
            if (this.C) {
                this.F[i11] = z(i11);
                TextPaint textPaint = this.f58468c;
                String str = this.F[i11];
                textPaint.getTextBounds(str, 0, str.length(), this.f58472e);
                this.G[i11] = this.f58472e.width();
                this.H[i11] = this.f58486l + (this.f58496q * i11);
            }
            this.f58467b0[i11] = this.f58486l + (this.f58496q * i11);
        }
    }

    private void J(int i10, Typeface typeface) {
        if (i10 == 0) {
            this.K = Typeface.DEFAULT;
            return;
        }
        if (i10 == 1) {
            this.K = Typeface.MONOSPACE;
            return;
        }
        if (i10 == 2) {
            this.K = Typeface.SANS_SERIF;
            return;
        }
        if (i10 == 3) {
            this.K = Typeface.SERIF;
        } else if (typeface == null) {
            this.K = Typeface.DEFAULT;
        } else {
            this.K = typeface;
        }
    }

    private void K() {
        Drawable drawable = this.B0;
        if (drawable == null) {
            return;
        }
        if (!(drawable instanceof StateListDrawable)) {
            Bitmap bitmapW = w(drawable, true);
            this.f58513y0 = bitmapW;
            this.C0 = bitmapW;
            return;
        }
        try {
            StateListDrawable stateListDrawable = (StateListDrawable) drawable;
            Class<?> cls = stateListDrawable.getClass();
            int iIntValue = ((Integer) cls.getMethod("getStateCount", null).invoke(stateListDrawable, null)).intValue();
            if (iIntValue != 2) {
                throw new IllegalArgumentException("the format of the selector thumb drawable is wrong!");
            }
            Class<?> cls2 = Integer.TYPE;
            Method method = cls.getMethod("getStateSet", cls2);
            Method method2 = cls.getMethod("getStateDrawable", cls2);
            for (int i10 = 0; i10 < iIntValue; i10++) {
                int[] iArr = (int[]) method.invoke(stateListDrawable, Integer.valueOf(i10));
                if (iArr.length <= 0) {
                    this.f58513y0 = w((Drawable) method2.invoke(stateListDrawable, Integer.valueOf(i10)), true);
                } else {
                    if (iArr[0] != 16842919) {
                        throw new IllegalArgumentException("the state of the selector thumb drawable is wrong!");
                    }
                    this.C0 = w((Drawable) method2.invoke(stateListDrawable, Integer.valueOf(i10)), true);
                }
            }
        } catch (Exception unused) {
            Bitmap bitmapW2 = w(this.B0, true);
            this.f58513y0 = bitmapW2;
            this.C0 = bitmapW2;
        }
    }

    private void L(ColorStateList colorStateList, int i10) {
        if (colorStateList == null) {
            this.f58515z0 = i10;
            this.D0 = i10;
            return;
        }
        try {
            int[][] iArr = null;
            int[] iArr2 = null;
            for (Field field : colorStateList.getClass().getDeclaredFields()) {
                field.setAccessible(true);
                if ("mStateSpecs".equals(field.getName())) {
                    iArr = (int[][]) field.get(colorStateList);
                }
                if ("mColors".equals(field.getName())) {
                    iArr2 = (int[]) field.get(colorStateList);
                }
            }
            if (iArr == null || iArr2 == null) {
                return;
            }
            if (iArr.length == 1) {
                int i11 = iArr2[0];
                this.f58515z0 = i11;
                this.D0 = i11;
            } else {
                if (iArr.length != 2) {
                    throw new IllegalArgumentException("the selector color file you set for the argument: isb_thumb_color is in wrong format.");
                }
                for (int i12 = 0; i12 < iArr.length; i12++) {
                    int[] iArr3 = iArr[i12];
                    if (iArr3.length == 0) {
                        this.D0 = iArr2[i12];
                    } else {
                        if (iArr3[0] != 16842919) {
                            throw new IllegalArgumentException("the selector color file you set for the argument: isb_thumb_color is in wrong format.");
                        }
                        this.f58515z0 = iArr2[i12];
                    }
                }
            }
        } catch (Exception unused) {
            throw new RuntimeException("Something wrong happened when parseing thumb selector color.");
        }
    }

    private void M() {
        Drawable drawable = this.f58481i0;
        if (!(drawable instanceof StateListDrawable)) {
            Bitmap bitmapW = w(drawable, false);
            this.f58477g0 = bitmapW;
            this.f58479h0 = bitmapW;
            return;
        }
        StateListDrawable stateListDrawable = (StateListDrawable) drawable;
        try {
            Class<?> cls = stateListDrawable.getClass();
            int iIntValue = ((Integer) cls.getMethod("getStateCount", null).invoke(stateListDrawable, null)).intValue();
            if (iIntValue != 2) {
                throw new IllegalArgumentException("the format of the selector TickMarks drawable is wrong!");
            }
            Class<?> cls2 = Integer.TYPE;
            Method method = cls.getMethod("getStateSet", cls2);
            Method method2 = cls.getMethod("getStateDrawable", cls2);
            for (int i10 = 0; i10 < iIntValue; i10++) {
                int[] iArr = (int[]) method.invoke(stateListDrawable, Integer.valueOf(i10));
                if (iArr.length <= 0) {
                    this.f58477g0 = w((Drawable) method2.invoke(stateListDrawable, Integer.valueOf(i10)), false);
                } else {
                    if (iArr[0] != 16842913) {
                        throw new IllegalArgumentException("the state of the selector TickMarks drawable is wrong!");
                    }
                    this.f58479h0 = w((Drawable) method2.invoke(stateListDrawable, Integer.valueOf(i10)), false);
                }
            }
        } catch (Exception unused) {
            Bitmap bitmapW2 = w(this.f58481i0, false);
            this.f58477g0 = bitmapW2;
            this.f58479h0 = bitmapW2;
        }
    }

    private void N(ColorStateList colorStateList, int i10) {
        if (colorStateList == null) {
            this.f58473e0 = i10;
            this.f58471d0 = i10;
            return;
        }
        try {
            int[][] iArr = null;
            int[] iArr2 = null;
            for (Field field : colorStateList.getClass().getDeclaredFields()) {
                field.setAccessible(true);
                if ("mStateSpecs".equals(field.getName())) {
                    iArr = (int[][]) field.get(colorStateList);
                }
                if ("mColors".equals(field.getName())) {
                    iArr2 = (int[]) field.get(colorStateList);
                }
            }
            if (iArr == null || iArr2 == null) {
                return;
            }
            if (iArr.length == 1) {
                int i11 = iArr2[0];
                this.f58473e0 = i11;
                this.f58471d0 = i11;
            } else {
                if (iArr.length != 2) {
                    throw new IllegalArgumentException("the selector color file you set for the argument: isb_tick_marks_color is in wrong format.");
                }
                for (int i12 = 0; i12 < iArr.length; i12++) {
                    int[] iArr3 = iArr[i12];
                    if (iArr3.length == 0) {
                        this.f58471d0 = iArr2[i12];
                    } else {
                        if (iArr3[0] != 16842913) {
                            throw new IllegalArgumentException("the selector color file you set for the argument: isb_tick_marks_color is in wrong format.");
                        }
                        this.f58473e0 = iArr2[i12];
                    }
                }
            }
        } catch (Exception e10) {
            throw new RuntimeException("Something wrong happened when parsing thumb selector color." + e10.getMessage());
        }
    }

    private void O(ColorStateList colorStateList, int i10) {
        if (colorStateList == null) {
            this.M = i10;
            this.L = i10;
            this.N = i10;
            return;
        }
        try {
            int[][] iArr = null;
            int[] iArr2 = null;
            for (Field field : colorStateList.getClass().getDeclaredFields()) {
                field.setAccessible(true);
                if ("mStateSpecs".equals(field.getName())) {
                    iArr = (int[][]) field.get(colorStateList);
                }
                if ("mColors".equals(field.getName())) {
                    iArr2 = (int[]) field.get(colorStateList);
                }
            }
            if (iArr == null || iArr2 == null) {
                return;
            }
            if (iArr.length == 1) {
                int i11 = iArr2[0];
                this.M = i11;
                this.L = i11;
                this.N = i11;
                return;
            }
            if (iArr.length != 3) {
                throw new IllegalArgumentException("the selector color file you set for the argument: isb_tick_texts_color is in wrong format.");
            }
            for (int i12 = 0; i12 < iArr.length; i12++) {
                int[] iArr3 = iArr[i12];
                if (iArr3.length == 0) {
                    this.M = iArr2[i12];
                } else {
                    int i13 = iArr3[0];
                    if (i13 == 16842913) {
                        this.L = iArr2[i12];
                    } else {
                        if (i13 != 16843623) {
                            throw new IllegalArgumentException("the selector color file you set for the argument: isb_tick_texts_color is in wrong format.");
                        }
                        this.N = iArr2[i12];
                    }
                }
            }
        } catch (Exception unused) {
            throw new RuntimeException("Something wrong happened when parseing thumb selector color.");
        }
    }

    private void P() {
        if (!this.B) {
            RectF rectF = this.f58493o0;
            rectF.left = this.f58486l;
            rectF.top = this.f58492o + this.f58511x0;
            rectF.right = (((this.f58504u - this.f58502t) * this.f58494p) / getAmplitude()) + this.f58486l;
            RectF rectF2 = this.f58493o0;
            float f10 = rectF2.top;
            rectF2.bottom = f10;
            RectF rectF3 = this.f58495p0;
            rectF3.left = rectF2.right;
            rectF3.top = f10;
            rectF3.right = this.f58490n - this.f58488m;
            rectF3.bottom = f10;
            return;
        }
        RectF rectF4 = this.f58495p0;
        int i10 = this.f58486l;
        rectF4.left = i10;
        rectF4.top = this.f58492o + this.f58511x0;
        rectF4.right = i10 + (this.f58494p * (1.0f - ((this.f58504u - this.f58502t) / getAmplitude())));
        RectF rectF5 = this.f58495p0;
        float f11 = rectF5.top;
        rectF5.bottom = f11;
        RectF rectF6 = this.f58493o0;
        rectF6.left = rectF5.right;
        rectF6.top = f11;
        rectF6.right = this.f58490n - this.f58488m;
        rectF6.bottom = f11;
    }

    private boolean Q(float f10, float f11) {
        if (this.f58478h == -1.0f) {
            this.f58478h = g.a(this.f58464a, 5.0f);
        }
        float f12 = this.f58486l;
        float f13 = this.f58478h;
        boolean z10 = f10 >= f12 - (f13 * 2.0f) && f10 <= ((float) (this.f58490n - this.f58488m)) + (2.0f * f13);
        float f14 = this.f58493o0.top;
        float f15 = this.f58511x0;
        return z10 && ((f11 > ((f14 - f15) - f13) ? 1 : (f11 == ((f14 - f15) - f13) ? 0 : -1)) >= 0 && (f11 > ((f14 + f15) + f13) ? 1 : (f11 == ((f14 + f15) + f13) ? 0 : -1)) <= 0);
    }

    private boolean R(float f10) {
        X(this.f58504u);
        float f11 = this.B ? this.f58495p0.right : this.f58493o0.right;
        int i10 = this.A0;
        return f11 - (((float) i10) / 2.0f) <= f10 && f10 <= f11 + (((float) i10) / 2.0f);
    }

    private void S() {
        if (T()) {
            H();
            this.f58468c.setTypeface(this.K);
            this.f58468c.getTextBounds("j", 0, 1, this.f58472e);
            this.E = this.f58472e.height() + g.a(this.f58464a, 3.0f);
        }
    }

    private boolean T() {
        return this.E0 || (this.f58469c0 != 0 && this.C);
    }

    private boolean U() {
        if (this.f58506v) {
            return this.f58476g != this.f58504u;
        }
        return Math.round(this.f58476g) != Math.round(this.f58504u);
    }

    private void V(MotionEvent motionEvent) {
        X(n(o(k(motionEvent))));
        setSeekListener(true);
        invalidate();
        Z();
    }

    private void W() {
        P();
        if (T()) {
            this.f58468c.getTextBounds("j", 0, 1, this.f58472e);
            float fRound = this.f58492o + this.f58474f + Math.round(this.f58472e.height() - this.f58468c.descent()) + g.a(this.f58464a, 3.0f);
            this.I = fRound;
            this.F0 = fRound;
        }
        if (this.f58467b0 == null) {
            return;
        }
        I();
        if (this.f58469c0 > 2) {
            float f10 = this.A[getClosestIndex()];
            this.f58504u = f10;
            this.f58476g = f10;
        }
        X(this.f58504u);
    }

    public void X(float f10) {
        if (this.B) {
            this.f58495p0.right = this.f58486l + (this.f58494p * (1.0f - ((f10 - this.f58502t) / getAmplitude())));
            this.f58493o0.left = this.f58495p0.right;
            return;
        }
        this.f58493o0.right = (((f10 - this.f58502t) * this.f58494p) / getAmplitude()) + this.f58486l;
        this.f58495p0.left = this.f58493o0.right;
    }

    private void Z() {
        if (this.S) {
            a0();
            return;
        }
        d dVar = this.P;
        if (dVar == null) {
            return;
        }
        dVar.g();
        if (this.P.i()) {
            this.P.p(getThumbCenterX());
        } else {
            this.P.o(getThumbCenterX());
        }
    }

    public void a0() {
        d dVar;
        int i10;
        if (!this.S || (dVar = this.P) == null) {
            return;
        }
        dVar.l(getIndicatorTextString());
        int thumbCenterX = 0;
        this.U.measure(0, 0);
        int measuredWidth = this.U.getMeasuredWidth();
        float thumbCenterX2 = getThumbCenterX();
        if (this.f58480i == -1.0f) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = (WindowManager) this.f58464a.getSystemService("window");
            if (windowManager != null) {
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                this.f58480i = displayMetrics.widthPixels;
            }
        }
        float f10 = measuredWidth / 2;
        float f11 = f10 + thumbCenterX2;
        int i11 = this.f58490n;
        if (f11 > i11) {
            thumbCenterX = i11 - measuredWidth;
            i10 = (int) ((thumbCenterX2 - thumbCenterX) - f10);
        } else if (thumbCenterX2 - f10 < 0.0f) {
            i10 = -((int) (f10 - thumbCenterX2));
        } else {
            thumbCenterX = (int) (getThumbCenterX() - f10);
            i10 = 0;
        }
        this.P.r(thumbCenterX);
        this.P.q(i10);
    }

    private float getAmplitude() {
        float f10 = this.f58500s;
        float f11 = this.f58502t;
        if (f10 - f11 > 0.0f) {
            return f10 - f11;
        }
        return 1.0f;
    }

    private int getClosestIndex() {
        float fAbs = Math.abs(this.f58500s - this.f58502t);
        int i10 = 0;
        int i11 = 0;
        while (true) {
            float[] fArr = this.A;
            if (i10 >= fArr.length) {
                return i11;
            }
            float fAbs2 = Math.abs(fArr[i10] - this.f58504u);
            if (fAbs2 <= fAbs) {
                i11 = i10;
                fAbs = fAbs2;
            }
            i10++;
        }
    }

    private int getLeftSideTickColor() {
        return this.B ? this.f58471d0 : this.f58473e0;
    }

    private int getLeftSideTickTextsColor() {
        return this.B ? this.M : this.L;
    }

    private int getLeftSideTrackSize() {
        return this.B ? this.f58497q0 : this.f58499r0;
    }

    private int getRightSideTickColor() {
        return this.B ? this.f58473e0 : this.f58471d0;
    }

    private int getRightSideTickTextsColor() {
        return this.B ? this.L : this.M;
    }

    private int getRightSideTrackSize() {
        return this.B ? this.f58499r0 : this.f58497q0;
    }

    private float getThumbCenterX() {
        return this.B ? this.f58495p0.right : this.f58493o0.right;
    }

    private int getThumbPosOnTick() {
        if (this.f58469c0 != 0) {
            return Math.round((getThumbCenterX() - this.f58486l) / this.f58496q);
        }
        return 0;
    }

    private float getThumbPosOnTickFloat() {
        if (this.f58469c0 != 0) {
            return (getThumbCenterX() - this.f58486l) / this.f58496q;
        }
        return 0.0f;
    }

    private float k(MotionEvent motionEvent) {
        float x10 = motionEvent.getX();
        int i10 = this.f58486l;
        if (x10 >= i10) {
            float x11 = motionEvent.getX();
            int i11 = this.f58490n;
            int i12 = this.f58488m;
            if (x11 <= i11 - i12) {
                return motionEvent.getX();
            }
            i10 = i11 - i12;
        }
        return i10;
    }

    private void l(com.warkiz.widget.a aVar) {
        this.f58500s = aVar.f58520b;
        this.f58502t = aVar.f58521c;
        this.f58504u = aVar.f58522d;
        this.f58506v = aVar.f58523e;
        this.f58469c0 = aVar.H;
        this.f58514z = aVar.f58524f;
        this.B = aVar.f58525g;
        this.f58510x = aVar.f58526h;
        this.f58482j = aVar.f58528j;
        this.f58512y = aVar.f58527i;
        this.W = aVar.f58529k;
        this.Q = aVar.f58530l;
        this.R = aVar.f58531m;
        this.T = aVar.f58532n;
        this.U = aVar.f58533o;
        this.V = aVar.f58534p;
        this.f58497q0 = aVar.f58535q;
        this.f58501s0 = aVar.f58536r;
        this.f58499r0 = aVar.f58537s;
        this.f58503t0 = aVar.f58538t;
        this.f58491n0 = aVar.f58539u;
        this.A0 = aVar.f58542x;
        this.B0 = aVar.A;
        this.G0 = aVar.f58540v;
        L(aVar.f58544z, aVar.f58543y);
        this.E0 = aVar.f58541w;
        this.f58483j0 = aVar.I;
        this.f58489m0 = aVar.K;
        this.f58481i0 = aVar.L;
        this.f58485k0 = aVar.M;
        this.f58487l0 = aVar.N;
        N(aVar.O, aVar.J);
        this.C = aVar.B;
        this.J = aVar.D;
        this.O = aVar.E;
        this.K = aVar.F;
        O(aVar.G, aVar.C);
    }

    private boolean m() {
        if (this.f58469c0 < 3 || !this.f58514z || !this.I0) {
            return false;
        }
        int closestIndex = getClosestIndex();
        float f10 = this.f58504u;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, Math.abs(f10 - this.A[closestIndex]));
        valueAnimatorOfFloat.start();
        valueAnimatorOfFloat.addUpdateListener(new a(f10, closestIndex));
        return true;
    }

    private float n(float f10) {
        this.f58476g = this.f58504u;
        float amplitude = this.f58502t + ((getAmplitude() * (f10 - this.f58486l)) / this.f58494p);
        this.f58504u = amplitude;
        return amplitude;
    }

    private float o(float f10) {
        if (this.f58469c0 > 2 && !this.f58514z) {
            f10 = this.f58486l + (this.f58496q * Math.round((f10 - this.f58486l) / this.f58496q));
        }
        return this.B ? (this.f58494p - f10) + (this.f58486l * 2) : f10;
    }

    private f p(boolean z10) {
        String[] strArr;
        if (this.f58484k == null) {
            this.f58484k = new f(this);
        }
        this.f58484k.f58563b = getProgress();
        this.f58484k.f58564c = getProgressFloat();
        this.f58484k.f58565d = z10;
        if (this.f58469c0 > 2) {
            int thumbPosOnTick = getThumbPosOnTick();
            if (this.C && (strArr = this.F) != null) {
                this.f58484k.f58567f = strArr[thumbPosOnTick];
            }
            if (this.B) {
                this.f58484k.f58566e = (this.f58469c0 - thumbPosOnTick) - 1;
            } else {
                this.f58484k.f58566e = thumbPosOnTick;
            }
        }
        return this.f58484k;
    }

    private void q() {
        int i10 = this.f58469c0;
        if (i10 < 0 || i10 > 50) {
            throw new IllegalArgumentException("the Argument: TICK COUNT must be limited between (0-50), Now is " + this.f58469c0);
        }
        if (i10 == 0) {
            return;
        }
        this.f58467b0 = new float[i10];
        if (this.C) {
            this.H = new float[i10];
            this.G = new float[i10];
        }
        this.A = new float[i10];
        int i11 = 0;
        while (true) {
            float[] fArr = this.A;
            if (i11 >= fArr.length) {
                return;
            }
            float f10 = this.f58502t;
            float f11 = i11 * (this.f58500s - f10);
            int i12 = this.f58469c0;
            fArr[i11] = f10 + (f11 / (i12 + (-1) > 0 ? i12 - 1 : 1));
            i11++;
        }
    }

    private void r(Canvas canvas) {
        if (this.H0) {
            return;
        }
        float thumbCenterX = getThumbCenterX();
        if (this.B0 == null) {
            if (this.f58498r) {
                this.f58466b.setColor(this.D0);
            } else {
                this.f58466b.setColor(this.f58515z0);
            }
            canvas.drawCircle(thumbCenterX, this.f58493o0.top, this.f58498r ? this.f58511x0 : this.f58509w0, this.f58466b);
            return;
        }
        if (this.f58513y0 == null || this.C0 == null) {
            K();
        }
        if (this.f58513y0 == null || this.C0 == null) {
            throw new IllegalArgumentException("the format of the selector thumb drawable is wrong!");
        }
        this.f58466b.setAlpha(255);
        if (this.f58498r) {
            Bitmap bitmap = this.C0;
            canvas.drawBitmap(bitmap, thumbCenterX - (bitmap.getWidth() / 2.0f), this.f58493o0.top - (this.C0.getHeight() / 2.0f), this.f58466b);
        } else {
            Bitmap bitmap2 = this.f58513y0;
            canvas.drawBitmap(bitmap2, thumbCenterX - (bitmap2.getWidth() / 2.0f), this.f58493o0.top - (this.f58513y0.getHeight() / 2.0f), this.f58466b);
        }
    }

    private void s(Canvas canvas) {
        if (this.E0) {
            if (!this.C || this.f58469c0 <= 2) {
                this.f58468c.setColor(this.G0);
                canvas.drawText(y(this.f58504u), getThumbCenterX(), this.F0, this.f58468c);
            }
        }
    }

    public void setSeekListener(boolean z10) {
        if (this.f58470d != null && U()) {
            this.f58470d.c(p(z10));
        }
    }

    private void t(Canvas canvas) {
        Bitmap bitmap;
        if (this.f58469c0 != 0) {
            if (this.f58483j0 == 0 && this.f58481i0 == null) {
                return;
            }
            float thumbCenterX = getThumbCenterX();
            for (int i10 = 0; i10 < this.f58467b0.length; i10++) {
                float thumbPosOnTickFloat = getThumbPosOnTickFloat();
                if ((!this.f58487l0 || thumbCenterX < this.f58467b0[i10]) && ((!this.f58485k0 || (i10 != 0 && i10 != this.f58467b0.length - 1)) && (i10 != getThumbPosOnTick() || this.f58469c0 <= 2 || this.f58514z))) {
                    float f10 = i10;
                    if (f10 <= thumbPosOnTickFloat) {
                        this.f58466b.setColor(getLeftSideTickColor());
                    } else {
                        this.f58466b.setColor(getRightSideTickColor());
                    }
                    if (this.f58481i0 != null) {
                        if (this.f58479h0 == null || this.f58477g0 == null) {
                            M();
                        }
                        Bitmap bitmap2 = this.f58479h0;
                        if (bitmap2 == null || (bitmap = this.f58477g0) == null) {
                            throw new IllegalArgumentException("the format of the selector TickMarks drawable is wrong!");
                        }
                        if (f10 <= thumbPosOnTickFloat) {
                            canvas.drawBitmap(bitmap2, this.f58467b0[i10] - (bitmap.getWidth() / 2.0f), this.f58493o0.top - (this.f58477g0.getHeight() / 2.0f), this.f58466b);
                        } else {
                            canvas.drawBitmap(bitmap, this.f58467b0[i10] - (bitmap.getWidth() / 2.0f), this.f58493o0.top - (this.f58477g0.getHeight() / 2.0f), this.f58466b);
                        }
                    } else {
                        int i11 = this.f58483j0;
                        if (i11 == 1) {
                            canvas.drawCircle(this.f58467b0[i10], this.f58493o0.top, this.f58475f0, this.f58466b);
                        } else if (i11 == 3) {
                            int iA = g.a(this.f58464a, 1.0f);
                            float leftSideTrackSize = thumbCenterX >= this.f58467b0[i10] ? getLeftSideTrackSize() : getRightSideTrackSize();
                            float f11 = this.f58467b0[i10];
                            float f12 = iA;
                            float f13 = this.f58493o0.top;
                            float f14 = leftSideTrackSize / 2.0f;
                            canvas.drawRect(f11 - f12, f13 - f14, f11 + f12, f13 + f14, this.f58466b);
                        } else if (i11 == 2) {
                            float f15 = this.f58467b0[i10];
                            int i12 = this.f58489m0;
                            float f16 = this.f58493o0.top;
                            canvas.drawRect(f15 - (i12 / 2.0f), f16 - (i12 / 2.0f), f15 + (i12 / 2.0f), f16 + (i12 / 2.0f), this.f58466b);
                        }
                    }
                }
            }
        }
    }

    private void u(Canvas canvas) {
        if (this.F == null) {
            return;
        }
        float thumbPosOnTickFloat = getThumbPosOnTickFloat();
        int i10 = 0;
        while (true) {
            String[] strArr = this.F;
            if (i10 >= strArr.length) {
                return;
            }
            if (!this.D || i10 == 0 || i10 == strArr.length - 1) {
                if (i10 == getThumbPosOnTick() && i10 == thumbPosOnTickFloat) {
                    this.f58468c.setColor(this.N);
                } else if (i10 < thumbPosOnTickFloat) {
                    this.f58468c.setColor(getLeftSideTickTextsColor());
                } else {
                    this.f58468c.setColor(getRightSideTickTextsColor());
                }
                int length = this.B ? (this.F.length - i10) - 1 : i10;
                if (i10 == 0) {
                    canvas.drawText(this.F[length], this.H[i10] + (this.G[length] / 2.0f), this.I, this.f58468c);
                } else {
                    String[] strArr2 = this.F;
                    if (i10 == strArr2.length - 1) {
                        canvas.drawText(strArr2[length], this.H[i10] - (this.G[length] / 2.0f), this.I, this.f58468c);
                    } else {
                        canvas.drawText(strArr2[length], this.H[i10], this.I, this.f58468c);
                    }
                }
            }
            i10++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0076 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:20:0x0078  */
    /* JADX WARN: Code duplicated, block: B:21:0x0083  */
    private void v(Canvas canvas) {
        if (!this.f58507v0) {
            this.f58466b.setColor(this.f58503t0);
            this.f58466b.setStrokeWidth(this.f58499r0);
            RectF rectF = this.f58493o0;
            canvas.drawLine(rectF.left, rectF.top, rectF.right, rectF.bottom, this.f58466b);
            this.f58466b.setColor(this.f58501s0);
            this.f58466b.setStrokeWidth(this.f58497q0);
            RectF rectF2 = this.f58495p0;
            canvas.drawLine(rectF2.left, rectF2.top, rectF2.right, rectF2.bottom, this.f58466b);
            return;
        }
        int i10 = this.f58469c0;
        int i11 = i10 + (-1) > 0 ? i10 - 1 : 1;
        for (int i12 = 0; i12 < i11; i12++) {
            if (this.B) {
                this.f58466b.setColor(this.f58505u0[(i11 - i12) - 1]);
            } else {
                this.f58466b.setColor(this.f58505u0[i12]);
            }
            float thumbPosOnTickFloat = getThumbPosOnTickFloat();
            float f10 = i12;
            if (f10 < thumbPosOnTickFloat) {
                int i13 = i12 + 1;
                if (thumbPosOnTickFloat < i13) {
                    float thumbCenterX = getThumbCenterX();
                    this.f58466b.setStrokeWidth(getLeftSideTrackSize());
                    float f11 = this.f58467b0[i12];
                    RectF rectF3 = this.f58493o0;
                    canvas.drawLine(f11, rectF3.top, thumbCenterX, rectF3.bottom, this.f58466b);
                    this.f58466b.setStrokeWidth(getRightSideTrackSize());
                    RectF rectF4 = this.f58493o0;
                    canvas.drawLine(thumbCenterX, rectF4.top, this.f58467b0[i13], rectF4.bottom, this.f58466b);
                } else {
                    if (f10 < thumbPosOnTickFloat) {
                        this.f58466b.setStrokeWidth(getLeftSideTrackSize());
                    } else {
                        this.f58466b.setStrokeWidth(getRightSideTrackSize());
                    }
                    float[] fArr = this.f58467b0;
                    float f12 = fArr[i12];
                    RectF rectF5 = this.f58493o0;
                    canvas.drawLine(f12, rectF5.top, fArr[i12 + 1], rectF5.bottom, this.f58466b);
                }
            } else {
                if (f10 < thumbPosOnTickFloat) {
                    this.f58466b.setStrokeWidth(getLeftSideTrackSize());
                } else {
                    this.f58466b.setStrokeWidth(getRightSideTrackSize());
                }
                float[] fArr2 = this.f58467b0;
                float f13 = fArr2[i12];
                RectF rectF6 = this.f58493o0;
                canvas.drawLine(f13, rectF6.top, fArr2[i12 + 1], rectF6.bottom, this.f58466b);
            }
        }
    }

    private Bitmap w(Drawable drawable, boolean z10) {
        int intrinsicHeight;
        if (drawable == null) {
            return null;
        }
        int iA = g.a(this.f58464a, 30.0f);
        if (drawable.getIntrinsicWidth() > iA) {
            int i10 = z10 ? this.A0 : this.f58489m0;
            intrinsicHeight = x(drawable, i10);
            if (i10 > iA) {
                intrinsicHeight = x(drawable, iA);
            } else {
                iA = i10;
            }
        } else {
            iA = drawable.getIntrinsicWidth();
            intrinsicHeight = drawable.getIntrinsicHeight();
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iA, intrinsicHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static com.warkiz.widget.a with(@NonNull Context context) {
        return new com.warkiz.widget.a(context);
    }

    private int x(Drawable drawable, int i10) {
        return Math.round(((i10 * 1.0f) * drawable.getIntrinsicHeight()) / drawable.getIntrinsicWidth());
    }

    private String y(float f10) {
        return this.f58506v ? c.b(f10, this.f58508w) : String.valueOf(Math.round(f10));
    }

    private String z(int i10) {
        CharSequence[] charSequenceArr = this.O;
        if (charSequenceArr == null) {
            return y(this.A[i10]);
        }
        return i10 < charSequenceArr.length ? String.valueOf(charSequenceArr[i10]) : "";
    }

    void Y() {
        this.U.setVisibility(4);
        postDelayed(new Runnable() {
            @Override
            public void run() {
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.1f, 1.0f);
                alphaAnimation.setDuration(180L);
                IndicatorSeekBar.this.U.setAnimation(alphaAnimation);
                IndicatorSeekBar.this.a0();
                IndicatorSeekBar.this.U.setVisibility(0);
            }
        }, 300L);
    }

    public void customSectionTrackColor(@NonNull b bVar) {
        int i10 = this.f58469c0;
        int i11 = i10 + (-1) > 0 ? i10 - 1 : 1;
        int[] iArr = new int[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            iArr[i12] = this.f58501s0;
        }
        this.f58507v0 = bVar.a(iArr);
        this.f58505u0 = iArr;
        invalidate();
    }

    public void customTickTexts(@NonNull String[] strArr) {
        this.O = strArr;
        if (this.F != null) {
            int i10 = 0;
            while (i10 < this.F.length) {
                String strValueOf = i10 < strArr.length ? String.valueOf(strArr[i10]) : "";
                int i11 = this.B ? (this.f58469c0 - 1) - i10 : i10;
                this.F[i11] = strValueOf;
                TextPaint textPaint = this.f58468c;
                if (textPaint != null && this.f58472e != null) {
                    textPaint.getTextBounds(strValueOf, 0, strValueOf.length(), this.f58472e);
                    this.G[i11] = this.f58472e.width();
                }
                i10++;
            }
            invalidate();
        }
    }

    public void customTickTextsTypeface(@NonNull Typeface typeface) {
        this.K = typeface;
        S();
        requestLayout();
        invalidate();
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        ViewParent parent = getParent();
        if (parent == null) {
            return super.dispatchTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            parent.requestDisallowInterceptTouchEvent(true);
        } else if (action == 1 || action == 3) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public d getIndicator() {
        return this.P;
    }

    View getIndicatorContentView() {
        return this.U;
    }

    String getIndicatorTextString() {
        String[] strArr;
        String str = this.f58465a0;
        if (str == null || !str.contains("${TICK_TEXT}")) {
            String str2 = this.f58465a0;
            if (str2 != null && str2.contains("${PROGRESS}")) {
                return this.f58465a0.replace("${PROGRESS}", y(this.f58504u));
            }
        } else if (this.f58469c0 > 2 && (strArr = this.F) != null) {
            return this.f58465a0.replace("${TICK_TEXT}", strArr[getThumbPosOnTick()]);
        }
        return y(this.f58504u);
    }

    public float getMax() {
        return this.f58500s;
    }

    public float getMin() {
        return this.f58502t;
    }

    public e getOnSeekChangeListener() {
        return this.f58470d;
    }

    public int getProgress() {
        return Math.round(this.f58504u);
    }

    public synchronized float getProgressFloat() {
        return BigDecimal.valueOf(this.f58504u).setScale(this.f58508w, 4).floatValue();
    }

    public int getTickCount() {
        return this.f58469c0;
    }

    public void hideThumb(boolean z10) {
        this.H0 = z10;
        invalidate();
    }

    public void hideThumbText(boolean z10) {
        this.E0 = !z10;
        invalidate();
    }

    @Override
    protected synchronized void onDraw(Canvas canvas) {
        v(canvas);
        t(canvas);
        u(canvas);
        r(canvas);
        s(canvas);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        setMeasuredDimension(View.resolveSize(g.a(this.f58464a, 170.0f), i10), Math.round(this.f58474f + getPaddingTop() + getPaddingBottom()) + this.E);
        F();
        W();
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        setProgress(bundle.getFloat("isb_progress"));
        super.onRestoreInstanceState(bundle.getParcelable("isb_instance_state"));
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("isb_instance_state", super.onSaveInstanceState());
        bundle.putFloat("isb_progress", this.f58504u);
        return bundle;
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        post(new Runnable() {
            @Override
            public void run() {
                IndicatorSeekBar.this.requestLayout();
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0020  */
    /* JADX WARN: Code duplicated, block: B:18:0x0026  */
    /* JADX WARN: Code duplicated, block: B:21:0x002f  */
    /* JADX WARN: Code duplicated, block: B:24:0x0036  */
    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        e eVar;
        d dVar;
        if (!this.f58510x || !isEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            performClick();
            float x10 = motionEvent.getX();
            if (Q(x10, motionEvent.getY())) {
                if (this.f58512y && !R(x10)) {
                    return false;
                }
                this.f58498r = true;
                e eVar2 = this.f58470d;
                if (eVar2 != null) {
                    eVar2.a(this);
                }
                V(motionEvent);
                return true;
            }
        } else if (action == 1) {
            this.f58498r = false;
            eVar = this.f58470d;
            if (eVar != null) {
                eVar.b(this);
            }
            if (!m()) {
                invalidate();
            }
            dVar = this.P;
            if (dVar != null) {
                dVar.f();
            }
        } else if (action == 2) {
            V(motionEvent);
        } else if (action == 3) {
            this.f58498r = false;
            eVar = this.f58470d;
            if (eVar != null) {
                eVar.b(this);
            }
            if (!m()) {
                invalidate();
            }
            dVar = this.P;
            if (dVar != null) {
                dVar.f();
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public boolean performClick() {
        return super.performClick();
    }

    public void setDecimalScale(int i10) {
        this.f58508w = i10;
    }

    @Override
    public void setEnabled(boolean z10) {
        if (z10 == isEnabled()) {
            return;
        }
        super.setEnabled(z10);
        if (isEnabled()) {
            setAlpha(1.0f);
            if (this.S) {
                this.U.setAlpha(1.0f);
                return;
            }
            return;
        }
        setAlpha(0.3f);
        if (this.S) {
            this.U.setAlpha(0.3f);
        }
    }

    void setIndicatorStayAlways(boolean z10) {
        this.S = z10;
    }

    public void setIndicatorTextFormat(String str) {
        this.f58465a0 = str;
        I();
        a0();
    }

    public synchronized void setMax(float f10) {
        this.f58500s = Math.max(this.f58502t, f10);
        E();
        q();
        W();
        invalidate();
        a0();
    }

    public synchronized void setMin(float f10) {
        this.f58502t = Math.min(this.f58500s, f10);
        E();
        q();
        W();
        invalidate();
        a0();
    }

    public void setOnSeekChangeListener(@NonNull e eVar) {
        this.f58470d = eVar;
    }

    public synchronized void setProgress(float f10) {
        try {
            this.f58476g = this.f58504u;
            float f11 = this.f58502t;
            if (f10 < f11) {
                f10 = f11;
            } else {
                f11 = this.f58500s;
                if (f10 > f11) {
                    f10 = f11;
                }
            }
            this.f58504u = f10;
            if (!this.f58514z && this.f58469c0 > 2) {
                this.f58504u = this.A[getClosestIndex()];
            }
            setSeekListener(false);
            X(this.f58504u);
            postInvalidate();
            a0();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void setR2L(boolean z10) {
        this.B = z10;
        requestLayout();
        invalidate();
        a0();
    }

    public void setThumbAdjustAuto(boolean z10) {
        this.I0 = z10;
    }

    public void setThumbDrawable(Drawable drawable) {
        if (drawable == null) {
            this.B0 = null;
            this.f58513y0 = null;
            this.C0 = null;
        } else {
            this.B0 = drawable;
            float fMin = Math.min(g.a(this.f58464a, 30.0f), this.A0) / 2.0f;
            this.f58509w0 = fMin;
            this.f58511x0 = fMin;
            this.f58474f = Math.max(fMin, this.f58475f0) * 2.0f;
            K();
        }
        requestLayout();
        invalidate();
    }

    public synchronized void setTickCount(int i10) {
        int i11 = this.f58469c0;
        if (i11 < 0 || i11 > 50) {
            throw new IllegalArgumentException("the Argument: TICK COUNT must be limited between (0-50), Now is " + this.f58469c0);
        }
        this.f58469c0 = i10;
        q();
        I();
        F();
        W();
        invalidate();
        a0();
    }

    public void setTickMarksDrawable(Drawable drawable) {
        if (drawable == null) {
            this.f58481i0 = null;
            this.f58477g0 = null;
            this.f58479h0 = null;
        } else {
            this.f58481i0 = drawable;
            float fMin = Math.min(g.a(this.f58464a, 30.0f), this.f58489m0) / 2.0f;
            this.f58475f0 = fMin;
            this.f58474f = Math.max(this.f58511x0, fMin) * 2.0f;
            M();
        }
        invalidate();
    }

    public void setUserSeekAble(boolean z10) {
        this.f58510x = z10;
    }

    public void showBothEndsTickTextsOnly(boolean z10) {
        this.D = z10;
    }

    public void thumbColor(int i10) {
        this.f58515z0 = i10;
        this.D0 = i10;
        invalidate();
    }

    public void thumbColorStateList(@NonNull ColorStateList colorStateList) {
        L(colorStateList, this.f58515z0);
        invalidate();
    }

    public void tickMarksColor(int i10) {
        this.f58473e0 = i10;
        this.f58471d0 = i10;
        invalidate();
    }

    public void tickTextsColor(int i10) {
        this.M = i10;
        this.L = i10;
        this.N = i10;
        invalidate();
    }

    public void tickTextsColorStateList(@NonNull ColorStateList colorStateList) {
        O(colorStateList, this.L);
        invalidate();
    }

    public IndicatorSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f58478h = -1.0f;
        this.f58480i = -1.0f;
        this.f58508w = 1;
        this.f58464a = context;
        A(context, attributeSet);
        D();
    }

    public void tickMarksColor(@NonNull ColorStateList colorStateList) {
        N(colorStateList, this.f58473e0);
        invalidate();
    }

    public IndicatorSeekBar(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f58478h = -1.0f;
        this.f58480i = -1.0f;
        this.f58508w = 1;
        this.f58464a = context;
        A(context, attributeSet);
        D();
    }
}
