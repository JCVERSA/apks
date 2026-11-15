package com.transsion.widgetslib.widget.shadow;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import com.transsion.widgetslib.R;
import defpackage.olb;

public class ShadowLayout extends FrameLayout {
    public static final int DEFAULT_SHADOW_COLOR = -2138535800;
    public Context b;
    public final Paint c;
    public int d;
    public float e;
    public float f;
    public Drawable g;
    public Bitmap h;

    public ShadowLayout(Context context) {
        this(context, null);
    }

    public final void a() {
        int i = (int) (this.f + this.e);
        setPadding(i, i, i, i);
        requestLayout();
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        Bitmap bitmap = this.h;
        if (bitmap != null && !bitmap.isRecycled()) {
            canvas.drawBitmap(this.h, 0.0f, 0.0f, this.c);
        }
        super.dispatchDraw(canvas);
    }

    public int getShadowColor() {
        return this.d;
    }

    public float getShadowDistance() {
        return this.f;
    }

    public float getShadowRadius() {
        return this.e;
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Bitmap bitmap = this.h;
        if (bitmap != null) {
            bitmap.recycle();
            this.h = null;
            this.g = null;
        }
    }

    public void setShadowColor(int i) {
        this.d = i;
        this.g.setTint(i);
        Bitmap bitmap = this.h;
        if (bitmap != null) {
            bitmap.recycle();
        }
        Context context = this.b;
        this.h = olb.f(context, this.g, (int) (((this.f + this.e) * 2.0f) + context.getResources().getDimensionPixelSize(R.dimen.os_fab_default_size)));
        a();
    }

    public void setShadowDistance(float f) {
        this.f = f;
        a();
    }

    public void setShadowRadius(float f) {
        this.e = Math.max(0.1f, f);
        if (isInEditMode()) {
            return;
        }
        a();
    }

    public ShadowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ShadowLayout(Context context, AttributeSet attributeSet, boolean z) {
        this(context, attributeSet, 0, z);
    }

    public ShadowLayout(Context context, AttributeSet attributeSet, int i, boolean z) {
        super(context, attributeSet, i);
        Paint paint = new Paint(1);
        this.c = paint;
        this.b = context;
        setWillNotDraw(false);
        setLayerType(2, paint);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ShadowLayout);
        try {
            try {
                setShadowRadius(typedArrayObtainStyledAttributes.getDimension(R.styleable.ShadowLayout_os_shadow_radius, TypedValue.applyDimension(1, 10.0f, getResources().getDisplayMetrics())));
                setShadowDistance(typedArrayObtainStyledAttributes.getDimension(R.styleable.ShadowLayout_os_shadow_distance, TypedValue.applyDimension(1, 3.3f, getResources().getDisplayMetrics())));
                this.g = context.getDrawable(R.drawable.img_shadow);
                if (z) {
                    setShadowColor(typedArrayObtainStyledAttributes.getColor(R.styleable.ShadowLayout_os_shadow_color, DEFAULT_SHADOW_COLOR));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public ShadowLayout(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, true);
    }
}
