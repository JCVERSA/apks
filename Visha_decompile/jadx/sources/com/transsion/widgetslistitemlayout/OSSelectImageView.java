package com.transsion.widgetslistitemlayout;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import com.transsion.hubsdk.api.graphics.TranCanvas;
import defpackage.olb;
import java.util.Arrays;

public class OSSelectImageView extends OSRoundImageView {
    public Paint g;
    public RectF h;
    public float i;
    public float j;
    public float k;
    public int l;
    public int m;
    public float n;
    public boolean o;
    public float p;
    public boolean q;
    public Context r;
    public final Path s;
    public final RectF t;
    public final float[] u;
    public TranCanvas v;
    public boolean w;

    public OSSelectImageView(Context context) {
        super(context);
        this.s = new Path();
        this.t = new RectF();
        this.u = new float[8];
        init(context, null);
    }

    private void init(Context context, AttributeSet attributeSet) {
        this.g = new Paint(1);
        this.l = olb.m(context, R.attr.os_brand_primary, R.color.os_brand_primary_hios);
        this.m = olb.m(context, R.attr.os_fill_weaker, R.color.os_fill_weaker_hios);
        this.n = olb.h(context, 1);
        this.i = olb.h(context, 2);
        this.j = olb.h(context, 16);
        this.k = olb.h(context, 2);
        this.h = new RectF();
        this.r = context;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OSSelectImageView);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.OSSelectImageView_os_siv_selected) {
                    this.q = typedArrayObtainStyledAttributes.getBoolean(index, false);
                } else if (index == R.styleable.OSSelectImageView_os_siv_border_width) {
                    this.i = typedArrayObtainStyledAttributes.getDimension(index, this.i);
                } else if (index == R.styleable.OSSelectImageView_os_siv_border_radius) {
                    this.j = typedArrayObtainStyledAttributes.getDimension(index, this.j);
                } else if (index == R.styleable.OSSelectImageView_os_siv_border_inset) {
                    this.k = typedArrayObtainStyledAttributes.getDimension(index, this.k);
                } else if (index == R.styleable.OSSelectImageView_os_siv_radius) {
                    this.p = typedArrayObtainStyledAttributes.getDimension(index, this.p);
                } else if (index == R.styleable.OSSelectImageView_os_siv_need_unselected_border) {
                    this.o = typedArrayObtainStyledAttributes.getBoolean(index, false);
                } else if (index == R.styleable.OSSelectImageView_os_siv_border_color) {
                    this.l = typedArrayObtainStyledAttributes.getColor(index, this.l);
                } else if (index == R.styleable.OSSelectImageView_os_siv_unselected_border_color) {
                    this.m = typedArrayObtainStyledAttributes.getColor(index, this.m);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        float f = this.p;
        if (f != 0.0f) {
            Arrays.fill(this.u, f);
        }
        if (this.v == null) {
            this.v = new TranCanvas();
        }
        this.w = this.v.smoothcornerCubicEdgeEnabled();
    }

    public int getBorderColor() {
        return this.l;
    }

    public float getBorderInset() {
        return this.k;
    }

    public float getBorderRadius() {
        return this.j;
    }

    public float getBorderWidth() {
        return this.i;
    }

    public float getRadius() {
        return this.p;
    }

    public float getUnSelectBorderWidth() {
        return this.n;
    }

    public int getUnSelectedBorderColor() {
        return this.m;
    }

    public boolean isNeedUnSelectedBorder() {
        return this.o;
    }

    @Override
    public boolean isSelected() {
        return this.q;
    }

    @Override
    public void onDraw(Canvas canvas) {
        float f = (this.i + this.k) * 2.0f;
        float width = (getWidth() - f) / getWidth();
        float height = (getHeight() - f) / getHeight();
        int iSave = canvas.save();
        canvas.scale(width, height, getWidth() / 2.0f, getHeight() / 2.0f);
        if (this.p != 0.0f) {
            if (this.w) {
                this.v.clipRRect(canvas, 0.0f, 0.0f, getWidth(), getHeight(), this.p, TranCanvas.CornerFlag.ALL);
            } else {
                this.s.reset();
                this.t.set(0.0f, 0.0f, getWidth(), getHeight());
                this.s.addRoundRect(this.t, this.u, Path.Direction.CCW);
                canvas.clipPath(this.s);
            }
        }
        super.onDraw(canvas);
        canvas.restoreToCount(iSave);
        if (this.q || this.o) {
            RectF rectF = this.h;
            float f2 = this.i;
            rectF.left = f2 / 2.0f;
            rectF.top = f2 / 2.0f;
            rectF.right = getWidth() - (this.i / 2.0f);
            this.h.bottom = getHeight() - (this.i / 2.0f);
            this.g.setStyle(Paint.Style.STROKE);
            this.g.setColor(this.l);
            this.g.setStrokeWidth(this.i);
            if (!this.q && this.o) {
                this.g.setColor(this.m);
                this.g.setStrokeWidth(this.n);
            }
            if (this.w) {
                TranCanvas tranCanvas = this.v;
                RectF rectF2 = this.h;
                tranCanvas.drawSmoothRoundRect(canvas, rectF2.left, rectF2.top, rectF2.right, rectF2.bottom, this.j, this.g);
            } else {
                RectF rectF3 = this.h;
                float f3 = this.j;
                canvas.drawRoundRect(rectF3, f3, f3, this.g);
            }
        }
    }

    public void setBorderColor(int i) {
        this.l = i;
    }

    public void setBorderInset(float f) {
        this.k = f;
    }

    public void setBorderRadius(float f) {
        this.j = f;
    }

    public void setBorderWidth(float f) {
        this.i = f;
    }

    public void setNeedUnSelectedBorder(boolean z) {
        this.o = z;
    }

    @Override
    public void setRadius(float f) {
        this.p = f;
    }

    @Override
    public void setSelected(boolean z) {
        this.q = z;
        invalidate();
    }

    public void setUnSelectBorderWidth(float f) {
        this.n = f;
    }

    public void setUnSelectedBorderColor(int i) {
        this.m = i;
    }

    public OSSelectImageView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.s = new Path();
        this.t = new RectF();
        this.u = new float[8];
        init(context, attributeSet);
    }

    public OSSelectImageView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.s = new Path();
        this.t = new RectF();
        this.u = new float[8];
        init(context, attributeSet);
    }
}
