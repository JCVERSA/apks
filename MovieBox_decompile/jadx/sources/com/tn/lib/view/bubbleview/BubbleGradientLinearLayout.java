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
import android.widget.LinearLayout;
import com.tn.lib.widget.R$styleable;

public class BubbleGradientLinearLayout extends LinearLayout {

    private final String f40216a;

    private BubbleDrawable f40217b;

    private float f40218c;

    private int f40219d;

    private float f40220e;

    private float f40221f;

    private float f40222g;

    private float f40223h;

    private float f40224i;

    private float f40225j;

    private BubbleDrawable.ArrowLocation f40226k;

    private BubbleDrawable.GradientDirection f40227l;

    private int f40228m;

    private boolean f40229n;

    private int[] f40230o;

    private float[] f40231p;

    private int f40232q;

    private int f40233r;

    private int f40234s;

    private ObjectAnimator f40235t;

    private ObjectAnimator f40236u;

    private AnimatorSet f40237v;

    private boolean f40238w;

    static class b {

        static final int[] f40243a;

        static {
            int[] iArr = new int[BubbleDrawable.GradientDirection.values().length];
            f40243a = iArr;
            try {
                iArr[BubbleDrawable.GradientDirection.HORIZONTAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f40243a[BubbleDrawable.GradientDirection.TOP_LEFT_BOTTOM_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f40243a[BubbleDrawable.GradientDirection.TOP_RIGHT_BOTTOM_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f40243a[BubbleDrawable.GradientDirection.BOTTOM_LEFT_TOP_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f40243a[BubbleDrawable.GradientDirection.BOTTOM_RIGHT_TOP_LEFT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public BubbleGradientLinearLayout(Context context) {
        super(context);
        this.f40216a = "BubbleGradientLinearLayout";
        e(null);
    }

    private void b() {
        ObjectAnimator objectAnimator = this.f40235t;
        if (objectAnimator == null || !objectAnimator.isRunning()) {
            return;
        }
        this.f40235t.cancel();
    }

    private static int c(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private float[] d(BubbleDrawable.GradientDirection gradientDirection) {
        int i10 = b.f40243a[gradientDirection.ordinal()];
        if (i10 == 1) {
            return new float[]{0.0f, 0.0f, getWidth(), 0.0f};
        }
        if (i10 == 2) {
            return new float[]{0.0f, 0.0f, getWidth(), getHeight()};
        }
        if (i10 == 3) {
            return new float[]{getWidth(), 0.0f, 0.0f, getHeight()};
        }
        if (i10 != 4) {
            return i10 != 5 ? new float[]{0.0f, 0.0f, 0.0f, getHeight()} : new float[]{getWidth(), getHeight(), 0.0f, 0.0f};
        }
        return new float[]{0.0f, getHeight(), getWidth(), 0.0f};
    }

    private void e(AttributeSet attributeSet) {
        setLayerType(1, null);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.BubbleView);
            this.f40218c = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_shadowRadius, BubbleDrawable.b.A);
            this.f40219d = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_shadowColor, BubbleDrawable.b.B);
            this.f40220e = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_shadowOffsetX, BubbleDrawable.b.C);
            this.f40221f = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_shadowOffsetY, BubbleDrawable.b.C);
            this.f40222g = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowWidth, BubbleDrawable.b.f40151u);
            this.f40224i = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowHeight, BubbleDrawable.b.f40152v);
            this.f40223h = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_angle, BubbleDrawable.b.f40153w);
            this.f40225j = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowPosition, BubbleDrawable.b.f40154x);
            this.f40228m = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_bubbleColor, BubbleDrawable.b.f40155y);
            this.f40232q = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_gradientStartColor, BubbleDrawable.b.f40155y);
            this.f40233r = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_gradientEndColor, BubbleDrawable.b.f40155y);
            this.f40234s = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_gradientCenterColor, BubbleDrawable.b.f40155y);
            this.f40238w = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BubbleView_isOpenAnimator, false);
            this.f40226k = BubbleDrawable.ArrowLocation.mapIntToValue(typedArrayObtainStyledAttributes.getInt(R$styleable.BubbleView_arrowLocation, 0));
            this.f40227l = BubbleDrawable.GradientDirection.mapIntToValue(typedArrayObtainStyledAttributes.getInt(R$styleable.BubbleView_gradient_orientation, 0));
            this.f40229n = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BubbleView_arrowCenter, false);
            typedArrayObtainStyledAttributes.recycle();
            int i10 = this.f40234s;
            if (i10 != BubbleDrawable.b.f40155y) {
                this.f40230o = new int[]{this.f40232q, i10, this.f40233r};
            } else {
                this.f40230o = new int[]{this.f40232q, this.f40233r};
            }
        }
    }

    private void f() {
        g(getWidth(), getHeight());
    }

    public void g(int i10, int i11) {
        h((int) ((getPaddingLeft() + this.f40218c) - this.f40220e), (int) (((i10 - getPaddingRight()) - this.f40218c) - this.f40220e), (int) ((getPaddingTop() + this.f40218c) - this.f40221f), (int) (((i11 - getPaddingBottom()) - this.f40218c) - this.f40221f));
        setBackgroundDrawable(this.f40217b);
    }

    private void h(int i10, int i11, int i12, int i13) {
        if (i11 < i10 || i13 < i12) {
            return;
        }
        RectF rectF = new RectF(i10, i12, i11, i13);
        this.f40231p = d(this.f40227l);
        BubbleDrawable.b bVarU = new BubbleDrawable.b().B(rectF).t(this.f40226k).z(BubbleDrawable.BubbleType.SHADER).q(this.f40223h).s(this.f40224i).v(this.f40222g).u(this.f40225j);
        float[] fArr = this.f40231p;
        this.f40217b = bVarU.y(fArr[0], fArr[1], fArr[2], fArr[3], this.f40230o).r(this.f40229n).F(this.f40218c).C(this.f40219d).D(this.f40220e).E(this.f40221f).A();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        startTransAnim();
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 <= 0 || i11 <= 0) {
            return;
        }
        g(i10, i11);
    }

    public void setGradientColors(int i10, int i11, int i12) {
        this.f40232q = i10;
        this.f40233r = i11;
        this.f40234s = i12;
        f();
    }

    public void setLocation(BubbleDrawable.ArrowLocation arrowLocation) {
        this.f40226k = arrowLocation;
        g(getWidth(), getHeight());
    }

    public void setUpBubbleDrawable() {
        setBackgroundDrawable(null);
        post(new Runnable() {
            @Override
            public void run() {
                BubbleGradientLinearLayout bubbleGradientLinearLayout = BubbleGradientLinearLayout.this;
                bubbleGradientLinearLayout.g(bubbleGradientLinearLayout.getWidth(), BubbleGradientLinearLayout.this.getHeight());
            }
        });
    }

    public void setmArrowPosition(float f10) {
        this.f40225j = f10;
        f();
    }

    public void startShowRemindAnim() {
        AnimatorSet animatorSet = this.f40237v;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.f40237v = null;
        }
        this.f40237v = new AnimatorSet();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
        float x10 = getX();
        int i10 = marginLayoutParams.leftMargin;
        if (this.f40236u == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "translationX", x10 - (Math.abs(i10) + c(getContext(), 4.0f)), c(getContext(), 4.0f) + x10, x10 - (Math.abs(marginLayoutParams.leftMargin) + c(getContext(), 4.0f)));
            this.f40236u = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(100L);
            this.f40236u.setInterpolator(new LinearInterpolator());
            this.f40236u.setRepeatCount(1);
            this.f40236u.addListener(new a(x10, marginLayoutParams, i10));
        }
        this.f40237v.play(this.f40236u).with(this.f40235t);
        this.f40237v.start();
    }

    public void startTransAnim() {
        if (this.f40238w) {
            if (this.f40235t == null) {
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "translationY", getY(), getY() - c(getContext(), 6.0f), getY());
                this.f40235t = objectAnimatorOfFloat;
                objectAnimatorOfFloat.setDuration(2000L);
                this.f40235t.setInterpolator(new LinearInterpolator());
                this.f40235t.setRepeatCount(-1);
            }
            if (this.f40235t.isStarted()) {
                return;
            }
            this.f40235t.start();
        }
    }

    public BubbleGradientLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f40216a = "BubbleGradientLinearLayout";
        e(attributeSet);
    }

    class a implements Animator.AnimatorListener {

        final float f40239a;

        final ViewGroup.MarginLayoutParams f40240b;

        final int f40241c;

        a(float f10, ViewGroup.MarginLayoutParams marginLayoutParams, int i10) {
            this.f40239a = f10;
            this.f40240b = marginLayoutParams;
            this.f40241c = i10;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            BubbleGradientLinearLayout.this.setX(this.f40239a);
            ViewGroup.MarginLayoutParams marginLayoutParams = this.f40240b;
            marginLayoutParams.leftMargin = this.f40241c;
            BubbleGradientLinearLayout.this.setLayoutParams(marginLayoutParams);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            BubbleGradientLinearLayout.this.setX(this.f40239a);
            ViewGroup.MarginLayoutParams marginLayoutParams = this.f40240b;
            marginLayoutParams.leftMargin = this.f40241c;
            BubbleGradientLinearLayout.this.setLayoutParams(marginLayoutParams);
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
        }
    }
}
