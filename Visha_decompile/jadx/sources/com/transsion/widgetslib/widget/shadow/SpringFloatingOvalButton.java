package com.transsion.widgetslib.widget.shadow;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.anim.OSSpringPressSealAnimation;
import defpackage.f43;
import defpackage.fz3;
import defpackage.olb;

public class SpringFloatingOvalButton extends FrameLayout {
    public ImageView b;
    public float c;
    public OSSpringPressSealAnimation.h d;
    public OSSpringPressSealAnimation.f e;
    public OSSpringPressSealAnimation.g f;
    public View.OnTouchListener g;
    public Paint h;
    public int i;
    public int j;
    public ColorStateList k;
    public int l;
    public int m;
    public float n;
    public int o;
    public int p;
    public int q;
    public int r;
    public boolean s;
    public boolean t;

    public class a implements OSSpringPressSealAnimation.g {
        public a() {
        }

        @Override
        public void a(boolean z, f43 f43Var, float f, float f2) {
            if (SpringFloatingOvalButton.this.f != null) {
                SpringFloatingOvalButton.this.f.a(z, f43Var, f, f2);
            }
        }
    }

    public class b implements OSSpringPressSealAnimation.f {
        public b() {
        }

        @Override
        public void a(boolean z, f43 f43Var, boolean z2, boolean z3, float f, float f2) {
            if (SpringFloatingOvalButton.this.e != null) {
                SpringFloatingOvalButton.this.e.a(z, f43Var, z2, z3, f, f2);
            }
        }
    }

    public class c implements View.OnTouchListener {
        public c() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (SpringFloatingOvalButton.this.g == null) {
                return false;
            }
            SpringFloatingOvalButton.this.g.onTouch(view, motionEvent);
            return false;
        }
    }

    public class d implements OSSpringPressSealAnimation.h {
        public d() {
        }

        @Override
        public void onClick(View view, boolean z) {
            if (SpringFloatingOvalButton.this.d != null) {
                SpringFloatingOvalButton.this.d.onClick(view, z);
                if (z) {
                    return;
                }
                SpringFloatingOvalButton.this.playSoundEffect(0);
            }
        }
    }

    public SpringFloatingOvalButton(Context context) {
        this(context, null);
    }

    public final void e() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.setMarginEnd(getContext().getResources().getDimensionPixelSize(R.dimen.os_fab_margin_end_default));
            marginLayoutParams.bottomMargin = getContext().getResources().getDimensionPixelSize(R.dimen.os_fab_margin_bottom_default);
            setLayoutParams(marginLayoutParams);
        }
    }

    public ColorStateList getDefaultTinStateList(@ColorInt int i) {
        return new ColorStateList(new int[][]{new int[0]}, new int[]{i});
    }

    public ImageView getImage() {
        return this.b;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if ((parent instanceof ViewGroup) && !this.t) {
            ViewGroup viewGroup = (ViewGroup) parent;
            viewGroup.setClipChildren(false);
            viewGroup.setClipToPadding(false);
        }
        if (this.s) {
            e();
        }
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (olb.V(getContext())) {
            return;
        }
        this.h.setColor(getContext().getColor(android.R.color.transparent));
        this.h.setShadowLayer(this.l, 0.0f, this.m, this.i);
        int width = this.b.getWidth() / 2;
        canvas.drawCircle(getPaddingStart() + width, getPaddingTop() + width, width, this.h);
    }

    public void requireAlpha() {
        setPaddingRelative(this.q, this.o, this.r, this.p);
    }

    public void setImageBackground(Drawable drawable) {
        this.b.setBackground(drawable);
    }

    @Deprecated
    public void setImageBackgroundColor(int i, int i2) {
        Drawable drawable = getContext().getDrawable(R.drawable.os_floating_ova_btn_bg);
        drawable.setTintList(new ColorStateList(new int[][]{new int[]{android.R.attr.state_pressed}, new int[0]}, new int[]{i2, i}));
        setImageBackground(drawable);
    }

    public void setImageDrawable(Drawable drawable) {
        this.b.setImageDrawable(drawable);
    }

    public void setImagePadding(float f) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.b.getLayoutParams();
        int i = (int) ((layoutParams.width - f) / 2.0f);
        int i2 = (int) ((layoutParams.height - f) / 2.0f);
        this.b.setPadding(i, i2, i, i2);
    }

    public void setImageResource(int i) {
        this.b.setImageResource(i);
    }

    public void setImageSize(int i, int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.b.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i2;
        this.b.setLayoutParams(layoutParams);
        setImagePadding(this.c);
    }

    public void setOnAnimationEndListener(OSSpringPressSealAnimation.f fVar) {
        this.e = fVar;
    }

    public void setOnAnimationUpdateListener(OSSpringPressSealAnimation.g gVar) {
        this.f = gVar;
    }

    public void setOnClickListener(OSSpringPressSealAnimation.h hVar) {
        this.d = hVar;
    }

    public void setOnFabTouchListener(View.OnTouchListener onTouchListener) {
        this.g = onTouchListener;
    }

    public void setShadowColor(int i) {
        this.i = i;
        invalidate();
    }

    public void setUseDefaultInset(boolean z) {
        this.s = z;
    }

    @Override
    public void setVisibility(int i) {
        ImageView imageView = this.b;
        if (imageView != null) {
            imageView.setVisibility(i);
        }
        super.setVisibility(i);
    }

    public SpringFloatingOvalButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setClickable(true);
        this.l = context.getResources().getDimensionPixelSize(R.dimen.os_shadow_radius_level2);
        this.m = context.getResources().getDimensionPixelSize(R.dimen.os_shadow_dy_level2);
        ImageView imageView = new ImageView(context, attributeSet);
        this.b = imageView;
        addView(imageView);
        this.o = context.getResources().getDimensionPixelSize(R.dimen.os_shadow_ver_inset_top_level2);
        this.p = context.getResources().getDimensionPixelSize(R.dimen.os_fab_shadow_ver_inset_bottom_level2);
        this.q = context.getResources().getDimensionPixelSize(R.dimen.os_fab_shadow_inset_start_level2);
        this.r = context.getResources().getDimensionPixelSize(R.dimen.os_fab_shadow_inset_end_level2);
        this.c = context.getResources().getDimensionPixelSize(R.dimen.os_fab_default_image_size);
        this.n = context.getResources().getDimensionPixelSize(R.dimen.os_fab_default_size);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{R.attr.os_platform_basic_color});
        this.k = getDefaultTinStateList(typedArrayObtainStyledAttributes.getColor(0, context.getColor(R.color.os_platform_basic_color_hios)));
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.FloatingOvalButton);
        float dimension = typedArrayObtainStyledAttributes2.getDimension(R.styleable.FloatingOvalButton_float_image_width, this.n);
        float dimension2 = typedArrayObtainStyledAttributes2.getDimension(R.styleable.FloatingOvalButton_float_image_height, this.n);
        Drawable drawable = typedArrayObtainStyledAttributes2.getDrawable(R.styleable.FloatingOvalButton_float_image_src);
        this.j = typedArrayObtainStyledAttributes2.getColor(R.styleable.FloatingOvalButton_float_image_background_color, context.getColor(R.color.os_altitude_secondary_color));
        this.s = typedArrayObtainStyledAttributes2.getBoolean(R.styleable.FloatingOvalButton_float_use_default_inset, true);
        int i = R.styleable.FloatingOvalButton_float_image_tint_color;
        if (typedArrayObtainStyledAttributes2.hasValue(i)) {
            this.k = typedArrayObtainStyledAttributes2.getColorStateList(i);
        }
        if (!olb.E || typedArrayObtainStyledAttributes2.hasValue(i)) {
            drawable.setTintList(this.k);
        } else {
            drawable.setTintList(context.getColorStateList(R.color.os_platform_clickable_color));
        }
        TypedArray typedArrayObtainStyledAttributes3 = context.obtainStyledAttributes(new int[]{R.attr.os_shadow_color_level2_attr});
        int color = typedArrayObtainStyledAttributes3.getColor(0, context.getColor(R.color.os_shadow_color_level2_hios));
        typedArrayObtainStyledAttributes3.recycle();
        this.i = typedArrayObtainStyledAttributes2.getColor(R.styleable.FloatingOvalButton_float_image_shadow_color, color);
        this.t = typedArrayObtainStyledAttributes2.getBoolean(R.styleable.FloatingOvalButton_float_require_alpha, false);
        typedArrayObtainStyledAttributes2.recycle();
        if (this.t) {
            requireAlpha();
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.b.getLayoutParams();
        layoutParams.width = (int) dimension;
        layoutParams.height = (int) dimension2;
        this.b.setLayoutParams(layoutParams);
        this.b.setImageDrawable(drawable);
        setImageBackgroundColor(this.j);
        setShadowColor(this.i);
        setImagePadding(this.c);
        new OSSpringPressSealAnimation.e().D(0.88f).E(new fz3()).J(this).G(new d()).H(new c()).x(new b()).y(new a()).z();
        setWillNotDraw(false);
        Paint paint = new Paint();
        this.h = paint;
        paint.setAntiAlias(true);
        this.h.setDither(true);
    }

    public void setImageBackgroundColor(int i) {
        Drawable drawable = getContext().getDrawable(R.drawable.os_floating_ova_btn_bg);
        drawable.setTintList(new ColorStateList(new int[][]{new int[]{android.R.attr.state_pressed}, new int[0]}, new int[]{i, i}));
        setImageBackground(drawable);
    }
}
