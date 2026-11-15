package com.transsion.widgetslib.widget.shadow;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.transsion.widgetslib.R;
import defpackage.olb;

public class FloatingOvalButton extends FrameLayout {
    public ShadowLayout b;
    public ImageView c;
    public ValueAnimator d;
    public ValueAnimator e;
    public float f;
    public float g;
    public PathInterpolator h;

    public class a implements ValueAnimator.AnimatorUpdateListener {
        public a() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            FloatingOvalButton.this.g = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Log.d("FloatingOvalButton", "mCurrentScale: " + FloatingOvalButton.this.g);
            FloatingOvalButton.this.b.setScaleX(FloatingOvalButton.this.g);
            FloatingOvalButton.this.b.setScaleY(FloatingOvalButton.this.g);
        }
    }

    public class b implements ValueAnimator.AnimatorUpdateListener {
        public b() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            FloatingOvalButton.this.g = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Log.d("FloatingOvalButton", "mCurrentScale1: " + FloatingOvalButton.this.g);
            FloatingOvalButton.this.b.setScaleX(FloatingOvalButton.this.g);
            FloatingOvalButton.this.b.setScaleY(FloatingOvalButton.this.g);
        }
    }

    public FloatingOvalButton(Context context) {
        this(context, null);
    }

    public final void d() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.9f);
        this.d = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(200L);
        this.d.setInterpolator(this.h);
        this.d.addUpdateListener(new a());
        this.d.start();
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            d();
        } else if (action == 1 || action == 3) {
            f();
            e();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final void e() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.g, 1.0f);
        this.e = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(150L);
        this.e.setInterpolator(this.h);
        this.e.addUpdateListener(new b());
        this.e.start();
    }

    public final void f() {
        ValueAnimator valueAnimator = this.d;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        this.d.cancel();
    }

    public ImageView getImage() {
        return this.c;
    }

    public ShadowLayout getShadowLayout() {
        return this.b;
    }

    public void setImageBackground(Drawable drawable) {
        this.c.setBackground(drawable);
    }

    public void setImageBackgroundColor(int i, int i2) {
        Drawable drawable = getContext().getDrawable(R.drawable.os_floating_ova_btn_bg);
        drawable.setTintList(new ColorStateList(new int[][]{new int[]{android.R.attr.state_pressed}, new int[0]}, new int[]{i2, i}));
        setImageBackground(drawable);
    }

    public void setImageDrawable(Drawable drawable) {
        this.c.setImageDrawable(drawable);
    }

    public void setImagePadding(float f) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.c.getLayoutParams();
        int i = (int) ((layoutParams.width - f) / 2.0f);
        int i2 = (int) ((layoutParams.height - f) / 2.0f);
        this.c.setPadding(i, i2, i, i2);
    }

    public void setImageResource(int i) {
        this.c.setImageResource(i);
    }

    public void setImageSize(int i, int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.c.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i2;
        this.c.setLayoutParams(layoutParams);
        setImagePadding(this.f);
    }

    public void setShadowColor(int i) {
        this.b.setShadowColor(i);
    }

    @Override
    public void setVisibility(int i) {
        if (i == 0) {
            this.b.setVisibility(0);
            this.c.setVisibility(0);
        } else if (i == 4) {
            this.b.setVisibility(4);
            this.c.setVisibility(4);
        } else if (i == 8) {
            this.b.setVisibility(8);
            this.c.setVisibility(8);
        }
        super.setVisibility(i);
    }

    public FloatingOvalButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setClickable(true);
        this.b = new ShadowLayout(context, attributeSet, false);
        ImageView imageView = new ImageView(context, attributeSet);
        this.c = imageView;
        this.b.addView(imageView);
        addView(this.b);
        this.f = context.getResources().getDimensionPixelSize(R.dimen.os_fab_default_image_size);
        float dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.os_fab_default_size);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{R.attr.os_platform_basic_color, R.attr.os_fab_bg_pressed_color, R.attr.os_fab_shadow_color});
        int color = typedArrayObtainStyledAttributes.getColor(0, context.getColor(R.color.os_platform_basic_color_hios));
        int color2 = typedArrayObtainStyledAttributes.getColor(1, context.getColor(R.color.os_fab_bg_pressed_color_hios));
        int color3 = typedArrayObtainStyledAttributes.getColor(2, context.getColor(R.color.os_fab_shadow_color_hios));
        typedArrayObtainStyledAttributes.recycle();
        int i = olb.getOsType().equals(olb.a[1]) ? 0 : color3;
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.FloatingOvalButton);
        float dimension = typedArrayObtainStyledAttributes2.getDimension(R.styleable.FloatingOvalButton_float_image_width, dimensionPixelSize);
        float dimension2 = typedArrayObtainStyledAttributes2.getDimension(R.styleable.FloatingOvalButton_float_image_height, dimensionPixelSize);
        Drawable drawable = typedArrayObtainStyledAttributes2.getDrawable(R.styleable.FloatingOvalButton_float_image_src);
        int color4 = typedArrayObtainStyledAttributes2.getColor(R.styleable.FloatingOvalButton_float_image_background_color, color);
        int color5 = typedArrayObtainStyledAttributes2.getColor(R.styleable.FloatingOvalButton_float_image_background_pressed_color, color2);
        int color6 = typedArrayObtainStyledAttributes2.getColor(R.styleable.FloatingOvalButton_float_image_shadow_color, i);
        typedArrayObtainStyledAttributes2.recycle();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.c.getLayoutParams();
        layoutParams.width = (int) dimension;
        layoutParams.height = (int) dimension2;
        this.c.setLayoutParams(layoutParams);
        this.c.setImageDrawable(drawable);
        setImageBackgroundColor(color4, color5);
        setShadowColor(color6);
        setImagePadding(this.f);
        this.h = new PathInterpolator(0.45f, 0.0f, 0.55f, 1.0f);
    }
}
