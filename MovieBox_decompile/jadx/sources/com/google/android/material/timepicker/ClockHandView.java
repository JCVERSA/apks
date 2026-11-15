package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.f0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class ClockHandView extends View {

    private final int f29224a;

    private final TimeInterpolator f29225b;

    private final ValueAnimator f29226c;

    private boolean f29227d;

    private float f29228e;

    private float f29229f;

    private boolean f29230g;

    private final int f29231h;

    private boolean f29232i;

    private final List f29233j;

    private final int f29234k;

    private final float f29235l;

    private final Paint f29236m;

    private final RectF f29237n;

    private final int f29238o;

    private float f29239p;

    private boolean f29240q;

    private b f29241r;

    private double f29242s;

    private int f29243t;

    private int f29244u;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            animator.end();
        }
    }

    public interface b {
        void a(float f10, boolean z10);
    }

    public interface c {
        void d(float f10, boolean z10);
    }

    public ClockHandView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialClockStyle);
    }

    private void c(float f10, float f11) {
        this.f29244u = xa.a.a((float) (getWidth() / 2), (float) (getHeight() / 2), f10, f11) > ((float) i(2)) + f0.g(getContext(), 12) ? 1 : 2;
    }

    private void d(Canvas canvas) {
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        int i10 = i(this.f29244u);
        float f10 = width;
        float f11 = i10;
        float fCos = (((float) Math.cos(this.f29242s)) * f11) + f10;
        float f12 = height;
        float fSin = (f11 * ((float) Math.sin(this.f29242s))) + f12;
        this.f29236m.setStrokeWidth(0.0f);
        canvas.drawCircle(fCos, fSin, this.f29234k, this.f29236m);
        double dSin = Math.sin(this.f29242s);
        double dCos = Math.cos(this.f29242s);
        double d10 = i10 - this.f29234k;
        this.f29236m.setStrokeWidth(this.f29238o);
        canvas.drawLine(f10, f12, width + ((int) (dCos * d10)), height + ((int) (d10 * dSin)), this.f29236m);
        canvas.drawCircle(f10, f12, this.f29235l, this.f29236m);
    }

    private int g(float f10, float f11) {
        int degrees = (int) Math.toDegrees(Math.atan2(f11 - (getHeight() / 2), f10 - (getWidth() / 2)));
        int i10 = degrees + 90;
        return i10 < 0 ? degrees + 450 : i10;
    }

    private int i(int i10) {
        return i10 == 2 ? Math.round(this.f29243t * 0.66f) : this.f29243t;
    }

    private Pair k(float f10) {
        float fH = h();
        if (Math.abs(fH - f10) > 180.0f) {
            if (fH > 180.0f && f10 < 180.0f) {
                f10 += 360.0f;
            }
            if (fH < 180.0f && f10 > 180.0f) {
                fH += 360.0f;
            }
        }
        return new Pair(Float.valueOf(fH), Float.valueOf(f10));
    }

    private boolean l(float f10, float f11, boolean z10, boolean z11, boolean z12) {
        float fG = g(f10, f11);
        boolean z13 = false;
        boolean z14 = h() != fG;
        if (z11 && z14) {
            return true;
        }
        if (!z14 && !z10) {
            return false;
        }
        if (z12 && this.f29227d) {
            z13 = true;
        }
        r(fG, z13);
        return true;
    }

    public void m(ValueAnimator valueAnimator) {
        s(((Float) valueAnimator.getAnimatedValue()).floatValue(), true);
    }

    private void s(float f10, boolean z10) {
        float f11 = f10 % 360.0f;
        this.f29239p = f11;
        this.f29242s = Math.toRadians(f11 - 90.0f);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float fI = i(this.f29244u);
        float fCos = width + (((float) Math.cos(this.f29242s)) * fI);
        float fSin = height + (fI * ((float) Math.sin(this.f29242s)));
        RectF rectF = this.f29237n;
        int i10 = this.f29234k;
        rectF.set(fCos - i10, fSin - i10, fCos + i10, fSin + i10);
        Iterator it = this.f29233j.iterator();
        while (it.hasNext()) {
            ((c) it.next()).d(f11, z10);
        }
        invalidate();
    }

    public void b(c cVar) {
        this.f29233j.add(cVar);
    }

    int e() {
        return this.f29244u;
    }

    public RectF f() {
        return this.f29237n;
    }

    public float h() {
        return this.f29239p;
    }

    public int j() {
        return this.f29234k;
    }

    public void n(boolean z10) {
        this.f29227d = z10;
    }

    public void o(int i10) {
        this.f29243t = i10;
        invalidate();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        d(canvas);
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (this.f29226c.isRunning()) {
            return;
        }
        q(h());
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        boolean z11;
        boolean z12;
        b bVar;
        int actionMasked = motionEvent.getActionMasked();
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        if (actionMasked == 0) {
            this.f29228e = x10;
            this.f29229f = y10;
            this.f29230g = true;
            this.f29240q = false;
            z10 = false;
            z11 = false;
            z12 = true;
        } else if (actionMasked == 1 || actionMasked == 2) {
            int i10 = (int) (x10 - this.f29228e);
            int i11 = (int) (y10 - this.f29229f);
            this.f29230g = (i10 * i10) + (i11 * i11) > this.f29231h;
            boolean z13 = this.f29240q;
            z10 = actionMasked == 1;
            if (this.f29232i) {
                c(x10, y10);
            }
            z12 = false;
            z11 = z13;
        } else {
            z10 = false;
            z11 = false;
            z12 = false;
        }
        boolean zL = l(x10, y10, z11, z12, z10) | this.f29240q;
        this.f29240q = zL;
        if (zL && z10 && (bVar = this.f29241r) != null) {
            bVar.a(g(x10, y10), this.f29230g);
        }
        return true;
    }

    void p(int i10) {
        this.f29244u = i10;
        invalidate();
    }

    public void q(float f10) {
        r(f10, false);
    }

    public void r(float f10, boolean z10) {
        ValueAnimator valueAnimator = this.f29226c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z10) {
            s(f10, false);
            return;
        }
        Pair pairK = k(f10);
        this.f29226c.setFloatValues(((Float) pairK.first).floatValue(), ((Float) pairK.second).floatValue());
        this.f29226c.setDuration(this.f29224a);
        this.f29226c.setInterpolator(this.f29225b);
        this.f29226c.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f29290a.m(valueAnimator2);
            }
        });
        this.f29226c.addListener(new a());
        this.f29226c.start();
    }

    void t(boolean z10) {
        if (this.f29232i && !z10) {
            this.f29244u = 1;
        }
        this.f29232i = z10;
        invalidate();
    }

    public void u(b bVar) {
        this.f29241r = bVar;
    }

    public ClockHandView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f29226c = new ValueAnimator();
        this.f29233j = new ArrayList();
        Paint paint = new Paint();
        this.f29236m = paint;
        this.f29237n = new RectF();
        this.f29244u = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ClockHandView, i10, R$style.Widget_MaterialComponents_TimePicker_Clock);
        this.f29224a = ya.j.f(context, R$attr.motionDurationLong2, 200);
        this.f29225b = ya.j.g(context, R$attr.motionEasingEmphasizedInterpolator, qa.a.f69578b);
        this.f29243t = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ClockHandView_materialCircleRadius, 0);
        this.f29234k = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ClockHandView_selectorSize, 0);
        Resources resources = getResources();
        this.f29238o = resources.getDimensionPixelSize(R$dimen.material_clock_hand_stroke_width);
        this.f29235l = resources.getDimensionPixelSize(R$dimen.material_clock_hand_center_dot_radius);
        int color = typedArrayObtainStyledAttributes.getColor(R$styleable.ClockHandView_clockHandColor, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        q(0.0f);
        this.f29231h = ViewConfiguration.get(context).getScaledTouchSlop();
        ViewCompat.setImportantForAccessibility(this, 2);
        typedArrayObtainStyledAttributes.recycle();
    }
}
