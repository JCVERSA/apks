package com.tn.lib.view.bubbleview;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.widget.R$styleable;

public class BubbleGradientConstrainLayout extends ConstraintLayout {

    private final String f40189a;

    private BubbleDrawable f40190b;

    private float f40191c;

    private int f40192d;

    private float f40193e;

    private float f40194f;

    private float f40195g;

    private float f40196h;

    private float f40197i;

    private float f40198j;

    private BubbleDrawable.ArrowLocation f40199k;

    private BubbleDrawable.GradientDirection f40200l;

    private int f40201m;

    private boolean f40202n;

    private int[] f40203o;

    private float[] f40204p;

    private int f40205q;

    private int f40206r;

    private int f40207s;

    private ObjectAnimator f40208t;

    private ObjectAnimator f40209u;

    private AnimatorSet f40210v;

    private boolean f40211w;

    public BubbleGradientConstrainLayout(Context context) {
        super(context);
        this.f40189a = "BubbleGradientLinearLayout";
        l(null);
    }

    private void i() {
        ObjectAnimator objectAnimator = this.f40208t;
        if (objectAnimator == null || !objectAnimator.isRunning()) {
            return;
        }
        this.f40208t.cancel();
    }

    private static int j(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private float[] k(BubbleDrawable.GradientDirection gradientDirection) {
        return gradientDirection == BubbleDrawable.GradientDirection.getDefault() ? new float[]{0.0f, 0.0f, 0.0f, getHeight()} : new float[]{0.0f, 0.0f, getWidth(), 0.0f};
    }

    private void l(AttributeSet attributeSet) {
        setLayerType(1, null);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.BubbleView);
            this.f40191c = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_shadowRadius, BubbleDrawable.b.A);
            this.f40192d = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_shadowColor, BubbleDrawable.b.B);
            this.f40193e = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_shadowOffsetX, BubbleDrawable.b.C);
            this.f40194f = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_shadowOffsetY, BubbleDrawable.b.C);
            this.f40195g = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowWidth, BubbleDrawable.b.f40151u);
            this.f40197i = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowHeight, BubbleDrawable.b.f40152v);
            this.f40196h = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_angle, BubbleDrawable.b.f40153w);
            this.f40198j = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowPosition, BubbleDrawable.b.f40154x);
            this.f40201m = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_bubbleColor, BubbleDrawable.b.f40155y);
            this.f40205q = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_gradientStartColor, BubbleDrawable.b.f40155y);
            this.f40206r = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_gradientEndColor, BubbleDrawable.b.f40155y);
            this.f40207s = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_gradientCenterColor, -1);
            this.f40211w = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BubbleView_isOpenAnimator, false);
            this.f40199k = BubbleDrawable.ArrowLocation.mapIntToValue(typedArrayObtainStyledAttributes.getInt(R$styleable.BubbleView_arrowLocation, 0));
            this.f40200l = BubbleDrawable.GradientDirection.mapIntToValue(typedArrayObtainStyledAttributes.getInt(R$styleable.BubbleView_gradient_orientation, 0));
            this.f40202n = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BubbleView_arrowCenter, false);
            typedArrayObtainStyledAttributes.recycle();
            int i10 = this.f40207s;
            if (i10 > 0) {
                this.f40203o = new int[]{this.f40205q, i10, this.f40206r};
            } else {
                this.f40203o = new int[]{this.f40205q, this.f40206r};
            }
        }
    }

    private void m() {
        n(getWidth(), getHeight());
    }

    public void n(int i10, int i11) {
        o((int) ((getPaddingLeft() + this.f40191c) - this.f40193e), (int) (((i10 - getPaddingRight()) - this.f40191c) - this.f40193e), (int) ((getPaddingTop() + this.f40191c) - this.f40194f), (int) (((i11 - getPaddingBottom()) - this.f40191c) - this.f40194f));
        setBackgroundDrawable(this.f40190b);
    }

    private void o(int i10, int i11, int i12, int i13) {
        if (i11 < i10 || i13 < i12) {
            return;
        }
        RectF rectF = new RectF(i10, i12, i11, i13);
        this.f40204p = k(this.f40200l);
        BubbleDrawable.b bVarU = new BubbleDrawable.b().B(rectF).t(this.f40199k).z(BubbleDrawable.BubbleType.SHADER).q(this.f40196h).s(this.f40197i).v(this.f40195g).u(this.f40198j);
        float[] fArr = this.f40204p;
        this.f40190b = bVarU.y(fArr[0], fArr[1], fArr[2], fArr[3], this.f40203o).r(this.f40202n).F(this.f40191c).C(this.f40192d).D(this.f40193e).E(this.f40194f).A();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        startTransAnim();
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        i();
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 <= 0 || i11 <= 0) {
            return;
        }
        n(i10, i11);
    }

    public void setLocation(BubbleDrawable.ArrowLocation arrowLocation) {
        this.f40199k = arrowLocation;
        n(getWidth(), getHeight());
    }

    public void setUpBubbleDrawable() {
        setBackgroundDrawable(null);
        post(new Runnable() {
            @Override
            public void run() {
                BubbleGradientConstrainLayout bubbleGradientConstrainLayout = BubbleGradientConstrainLayout.this;
                bubbleGradientConstrainLayout.n(bubbleGradientConstrainLayout.getWidth(), BubbleGradientConstrainLayout.this.getHeight());
            }
        });
    }

    public void setmArrowPosition(float f10) {
        this.f40198j = f10;
        m();
    }

    public void startShowRemindAnim() {
        AnimatorSet animatorSet = this.f40210v;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.f40210v = null;
        }
        this.f40210v = new AnimatorSet();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
        float x10 = getX();
        int i10 = marginLayoutParams.leftMargin;
        if (this.f40209u == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "translationX", x10 - (Math.abs(i10) + j(getContext(), 4.0f)), j(getContext(), 4.0f) + x10, x10 - (Math.abs(marginLayoutParams.leftMargin) + j(getContext(), 4.0f)));
            this.f40209u = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(100L);
            this.f40209u.setInterpolator(new LinearInterpolator());
            this.f40209u.setRepeatCount(1);
            this.f40209u.addListener(new a(x10, marginLayoutParams, i10));
        }
        this.f40210v.play(this.f40209u).with(this.f40208t);
        this.f40210v.start();
    }

    public void startTransAnim() {
        if (this.f40211w) {
            if (this.f40208t == null) {
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "translationY", getY(), getY() - j(getContext(), 6.0f), getY());
                this.f40208t = objectAnimatorOfFloat;
                objectAnimatorOfFloat.setDuration(2000L);
                this.f40208t.setInterpolator(new LinearInterpolator());
                this.f40208t.setRepeatCount(-1);
            }
            if (this.f40208t.isStarted()) {
                return;
            }
            this.f40208t.start();
        }
    }

    public BubbleGradientConstrainLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f40189a = "BubbleGradientLinearLayout";
        l(attributeSet);
    }

    class a implements Animator.AnimatorListener {

        final float f40212a;

        final ViewGroup.MarginLayoutParams f40213b;

        final int f40214c;

        a(float f10, ViewGroup.MarginLayoutParams marginLayoutParams, int i10) {
            this.f40212a = f10;
            this.f40213b = marginLayoutParams;
            this.f40214c = i10;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            BubbleGradientConstrainLayout.this.setX(this.f40212a);
            ViewGroup.MarginLayoutParams marginLayoutParams = this.f40213b;
            marginLayoutParams.leftMargin = this.f40214c;
            BubbleGradientConstrainLayout.this.setLayoutParams(marginLayoutParams);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            BubbleGradientConstrainLayout.this.setX(this.f40212a);
            ViewGroup.MarginLayoutParams marginLayoutParams = this.f40213b;
            marginLayoutParams.leftMargin = this.f40214c;
            BubbleGradientConstrainLayout.this.setLayoutParams(marginLayoutParams);
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
        }
    }
}
