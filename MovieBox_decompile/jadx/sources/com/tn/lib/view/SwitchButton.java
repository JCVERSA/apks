package com.tn.lib.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.tn.lib.widget.R$style;
import com.tn.lib.widget.R$styleable;

public class SwitchButton extends View implements View.OnClickListener {

    private float f40058a;

    private int f40059b;

    private int f40060c;

    private int f40061d;

    private Paint f40062e;

    private Paint f40063f;

    private int f40064g;

    private int f40065h;

    private int f40066i;

    private float f40067j;

    private RectF f40068k;

    private int f40069l;

    private boolean f40070m;

    private float f40071n;

    private State f40072o;

    private d f40073p;

    private int f40074q;

    private int f40075r;

    private int f40076s;

    private int f40077t;

    private boolean f40078u;

    private enum State {
        OPEN,
        CLOSE
    }

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            SwitchButton.this.f40071n = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            SwitchButton.this.postInvalidate();
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            SwitchButton.this.f40059b = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            SwitchButton.this.f40063f.setColor(SwitchButton.this.f40059b);
            SwitchButton.this.postInvalidate();
        }
    }

    class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            SwitchButton.this.setClickable(true);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            SwitchButton.this.setClickable(false);
        }
    }

    public interface d {
        void a(SwitchButton switchButton, boolean z10);
    }

    public SwitchButton(Context context) {
        this(context, null);
    }

    private void e(int i10, int i11, int i12, int i13) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(i10, i11);
        valueAnimatorOfFloat.addUpdateListener(new a());
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(i12), Integer.valueOf(i13));
        valueAnimatorOfObject.addUpdateListener(new b());
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfObject);
        animatorSet.setDuration(50L);
        animatorSet.addListener(new c());
        animatorSet.start();
    }

    private Paint f(int i10, int i11, Paint.Style style, int i12) {
        Paint paint = new Paint(1);
        paint.setColor(i10);
        paint.setStrokeWidth(i12);
        paint.setDither(true);
        paint.setTextSize(i11);
        paint.setStyle(style);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
        return paint;
    }

    private void g(Canvas canvas) {
        this.f40062e.setColor(this.f40061d);
        canvas.drawCircle(this.f40071n, this.f40066i, this.f40067j, this.f40062e);
    }

    private void h(Canvas canvas) {
        if (this.f40072o != State.OPEN) {
            RectF rectF = this.f40068k;
            int i10 = this.f40066i;
            canvas.drawRoundRect(rectF, i10, i10, this.f40063f);
        } else {
            Paint paint = new Paint();
            paint.setShader(new LinearGradient(0.0f, 0.0f, this.f40065h, 0.0f, this.f40076s, this.f40077t, Shader.TileMode.CLAMP));
            RectF rectF2 = this.f40068k;
            int i11 = this.f40066i;
            canvas.drawRoundRect(rectF2, i11, i11, paint);
        }
    }

    private void i() {
        this.f40074q = this.f40059b;
        this.f40075r = this.f40060c;
        int i10 = this.f40061d;
        Paint.Style style = Paint.Style.FILL;
        this.f40062e = f(i10, 0, style, 0);
        this.f40063f = f(this.f40059b, 0, style, 0);
        this.f40072o = State.CLOSE;
        setOnClickListener(this);
        this.f40063f.setColor(this.f40059b);
        this.f40067j = zg.h.f76787a.a(getContext(), this.f40067j);
    }

    public boolean isChecked() {
        return this.f40070m;
    }

    @Override
    public void onClick(View view) {
        if (this.f40078u) {
            State state = this.f40072o;
            State state2 = State.CLOSE;
            State state3 = state == state2 ? State.OPEN : state2;
            this.f40072o = state3;
            if (state3 == state2) {
                e(this.f40069l, this.f40066i, this.f40075r, this.f40074q);
            } else {
                e(this.f40066i, this.f40069l, this.f40074q, this.f40075r);
            }
            d dVar = this.f40073p;
            if (dVar != null) {
                dVar.a(this, this.f40072o == State.OPEN);
            }
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        h(canvas);
        g(canvas);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        if (mode == Integer.MIN_VALUE || mode == 0) {
            i10 = View.MeasureSpec.makeMeasureSpec((int) TypedValue.applyDimension(1, 44.0f, getResources().getDisplayMetrics()), 1073741824);
        }
        if (mode2 == Integer.MIN_VALUE || mode2 == 0) {
            i11 = View.MeasureSpec.makeMeasureSpec((int) TypedValue.applyDimension(1, 24.0f, getResources().getDisplayMetrics()), 1073741824);
        }
        super.onMeasure(i10, i11);
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        this.f40064g = i11;
        this.f40065h = i10;
        this.f40058a = (i10 * 1.0f) / 30.0f;
        int i14 = i11 / 2;
        this.f40066i = i14;
        int i15 = i10 - i14;
        this.f40069l = i15;
        this.f40071n = this.f40070m ? i15 : i14;
        this.f40068k = new RectF(0.0f, 0.0f, this.f40065h, this.f40064g);
    }

    public void setChecked(boolean z10) {
        this.f40070m = z10;
        State state = z10 ? State.OPEN : State.CLOSE;
        if (this.f40072o == state) {
            return;
        }
        this.f40072o = state;
        if (z10 && this.f40069l == 0) {
            this.f40071n = zg.h.f76787a.a(getContext(), 32.0f);
            int i10 = this.f40075r;
            this.f40059b = i10;
            this.f40063f.setColor(i10);
            postInvalidate();
        } else if (state == State.CLOSE) {
            e(this.f40069l, this.f40066i, this.f40075r, this.f40074q);
        } else {
            e(this.f40066i, this.f40069l, this.f40074q, this.f40075r);
        }
        d dVar = this.f40073p;
        if (dVar != null) {
            dVar.a(this, this.f40072o == State.OPEN);
        }
    }

    public void setColor(Integer num, Integer num2, Integer num3) {
        this.f40074q = num.intValue();
        this.f40075r = num2.intValue();
        this.f40061d = num3.intValue();
        this.f40062e.setColor(num3.intValue());
        postInvalidate();
    }

    public void setEnable(boolean z10) {
        this.f40078u = z10;
    }

    public void setGradientColors(int i10, int i11, Integer num) {
        this.f40076s = i10;
        this.f40077t = i11;
        this.f40061d = num.intValue();
        postInvalidate();
    }

    public void setOnCheckedChangeListener(d dVar) {
        this.f40073p = dVar;
    }

    public SwitchButton(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SwitchButton(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f40067j = 10.0f;
        this.f40078u = true;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.SwitchView, i10, R$style.def_switch_view);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i11 = 0; i11 < indexCount; i11++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i11);
            if (index == R$styleable.SwitchView_switch_bg_color) {
                this.f40059b = typedArrayObtainStyledAttributes.getColor(index, ViewCompat.MEASURED_STATE_MASK);
            } else if (index == R$styleable.SwitchView_switch_ball_color) {
                this.f40061d = typedArrayObtainStyledAttributes.getColor(index, ViewCompat.MEASURED_STATE_MASK);
            } else if (index == R$styleable.SwitchView_switch_checked_bg_color) {
                this.f40060c = typedArrayObtainStyledAttributes.getColor(index, ViewCompat.MEASURED_STATE_MASK);
            } else if (index == R$styleable.SwitchView_switch_radius) {
                this.f40067j = typedArrayObtainStyledAttributes.getInteger(index, 10);
            } else if (index == R$styleable.SwitchView_switch_gradient_start_color) {
                this.f40076s = typedArrayObtainStyledAttributes.getColor(index, ViewCompat.MEASURED_STATE_MASK);
            } else if (index == R$styleable.SwitchView_switch_gradient_end_color) {
                this.f40077t = typedArrayObtainStyledAttributes.getColor(index, ViewCompat.MEASURED_STATE_MASK);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        i();
    }
}
