package com.yalantis.ucrop.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import com.yalantis.ucrop.R;
import defpackage.au7;
import defpackage.zo8;

public class OverlayView extends View {
    public static final int BOUNDS_OFFSET = 80;
    public static final boolean DEFAULT_CIRCLE_DIMMED_LAYER = false;
    public static final int DEFAULT_CROP_GRID_COLUMN_COUNT = 2;
    public static final int DEFAULT_CROP_GRID_ROW_COUNT = 2;
    public static final int DEFAULT_FREESTYLE_CROP_MODE = 0;
    public static final boolean DEFAULT_SHOW_CROP_FRAME = true;
    public static final boolean DEFAULT_SHOW_CROP_GRID = true;
    public static final int FREESTYLE_CROP_MODE_DISABLE = 0;
    public static final int FREESTYLE_CROP_MODE_ENABLE = 1;
    public static final int FREESTYLE_CROP_MODE_ENABLE_WITH_PASS_THROUGH = 2;
    public int A;
    public au7 B;
    public boolean C;
    public final RectF b;
    public final RectF c;
    public int d;
    public int e;
    public float[] f;
    public float[] g;
    public int h;
    public int i;
    public float j;
    public float[] k;
    public boolean l;
    public boolean m;
    public boolean n;
    public int o;
    public Path p;
    public Paint q;
    public Paint r;
    public Paint s;
    public Paint t;
    public int u;
    public float v;
    public float w;
    public int x;
    public int y;
    public int z;

    public OverlayView(Context context) {
        this(context, null);
    }

    public void a(Canvas canvas) {
        if (this.m) {
            if (this.k == null && !this.b.isEmpty()) {
                this.k = new float[(this.h * 4) + (this.i * 4)];
                int i = 0;
                for (int i2 = 0; i2 < this.h; i2++) {
                    float[] fArr = this.k;
                    RectF rectF = this.b;
                    fArr[i] = rectF.left;
                    float f = i2 + 1.0f;
                    float fHeight = rectF.height() * (f / (this.h + 1));
                    RectF rectF2 = this.b;
                    fArr[i + 1] = fHeight + rectF2.top;
                    float[] fArr2 = this.k;
                    int i3 = i + 3;
                    fArr2[i + 2] = rectF2.right;
                    i += 4;
                    fArr2[i3] = (rectF2.height() * (f / (this.h + 1))) + this.b.top;
                }
                for (int i4 = 0; i4 < this.i; i4++) {
                    float[] fArr3 = this.k;
                    float f2 = i4 + 1.0f;
                    float fWidth = this.b.width() * (f2 / (this.i + 1));
                    RectF rectF3 = this.b;
                    fArr3[i] = fWidth + rectF3.left;
                    float[] fArr4 = this.k;
                    fArr4[i + 1] = rectF3.top;
                    int i5 = i + 3;
                    float fWidth2 = rectF3.width() * (f2 / (this.i + 1));
                    RectF rectF4 = this.b;
                    fArr4[i + 2] = fWidth2 + rectF4.left;
                    i += 4;
                    this.k[i5] = rectF4.bottom;
                }
            }
            float[] fArr5 = this.k;
            if (fArr5 != null) {
                canvas.drawLines(fArr5, this.r);
            }
            canvas.save();
            this.c.set(this.b);
            RectF rectF5 = this.c;
            int i6 = this.A;
            rectF5.inset(i6, -i6);
            RectF rectF6 = this.c;
            Region.Op op = Region.Op.DIFFERENCE;
            canvas.clipRect(rectF6, op);
            this.c.set(this.b);
            RectF rectF7 = this.c;
            int i7 = this.A;
            rectF7.inset(-i7, i7);
            canvas.clipRect(this.c, op);
            canvas.drawRect(this.b, this.t);
            canvas.restore();
        }
        if (this.l) {
            canvas.drawRect(this.b, this.s);
        }
    }

    public void b(Canvas canvas) {
        canvas.save();
        if (this.n) {
            canvas.clipPath(this.p, Region.Op.DIFFERENCE);
        } else {
            canvas.clipRect(this.b, Region.Op.DIFFERENCE);
        }
        canvas.drawColor(this.o);
        canvas.restore();
        if (this.n) {
            canvas.drawCircle(this.b.centerX(), this.b.centerY(), Math.min(this.b.width(), this.b.height()) / 2.0f, this.q);
        }
    }

    public final int c(float f, float f2) {
        double d = this.y;
        int i = -1;
        for (int i2 = 0; i2 < 8; i2 += 2) {
            double dSqrt = Math.sqrt(Math.pow(f - this.f[i2], 2.0d) + Math.pow(f2 - this.f[i2 + 1], 2.0d));
            if (dSqrt < d) {
                i = i2 / 2;
                d = dSqrt;
            }
        }
        if (this.u == 1 && i < 0 && this.b.contains(f, f2)) {
            return 4;
        }
        return i;
    }

    public void d() {
    }

    public final void e(TypedArray typedArray) {
        int dimensionPixelSize = typedArray.getDimensionPixelSize(R.styleable.ucrop_UCropView_ucrop_frame_stroke_size, getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_frame_stoke_width));
        int color = typedArray.getColor(R.styleable.ucrop_UCropView_ucrop_frame_color, getResources().getColor(R.color.ucrop_color_default_crop_frame));
        this.s.setStrokeWidth(dimensionPixelSize);
        this.s.setColor(color);
        Paint paint = this.s;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.t.setStrokeWidth(getResources().getDimensionPixelOffset(R.dimen.ucrop_default_crop_frame_corner_stoke_width));
        this.t.setColor(-1);
        this.t.setStyle(style);
    }

    public final void f(TypedArray typedArray) {
        int dimensionPixelSize = typedArray.getDimensionPixelSize(R.styleable.ucrop_UCropView_ucrop_grid_stroke_size, getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_grid_stoke_width));
        int color = typedArray.getColor(R.styleable.ucrop_UCropView_ucrop_grid_color, getResources().getColor(R.color.ucrop_color_default_crop_grid));
        this.r.setStrokeWidth(dimensionPixelSize);
        this.r.setColor(color);
        this.h = typedArray.getInt(R.styleable.ucrop_UCropView_ucrop_grid_row_count, 2);
        this.i = typedArray.getInt(R.styleable.ucrop_UCropView_ucrop_grid_column_count, 2);
    }

    public void g(TypedArray typedArray) {
        this.n = typedArray.getBoolean(R.styleable.ucrop_UCropView_ucrop_circle_dimmed_layer, false);
        int color = typedArray.getColor(R.styleable.ucrop_UCropView_ucrop_dimmed_color, getResources().getColor(R.color.ucrop_color_default_dimmed));
        this.o = color;
        this.q.setColor(color);
        this.q.setStyle(Paint.Style.STROKE);
        this.q.setStrokeWidth(1.0f);
        e(typedArray);
        this.l = typedArray.getBoolean(R.styleable.ucrop_UCropView_ucrop_show_frame, true);
        f(typedArray);
        this.m = typedArray.getBoolean(R.styleable.ucrop_UCropView_ucrop_show_grid, true);
    }

    @NonNull
    public RectF getCropViewRect() {
        return this.b;
    }

    public int getFreestyleCropMode() {
        return this.u;
    }

    public au7 getOverlayViewChangeListener() {
        return this.B;
    }

    public boolean h(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        RectF rectF = this.b;
        float f = rectF.left;
        boolean z = x >= f - 80.0f && x <= f + 80.0f;
        float f2 = rectF.right;
        boolean z2 = x >= f2 - 80.0f && x <= f2 + 80.0f;
        float f3 = rectF.top;
        boolean z3 = y >= f3 - 80.0f && x <= f3 + 80.0f;
        float f4 = rectF.bottom;
        return (z || z2) && (z3 || ((y > (f4 - 80.0f) ? 1 : (y == (f4 - 80.0f) ? 0 : -1)) >= 0 && (y > (f4 + 80.0f) ? 1 : (y == (f4 + 80.0f) ? 0 : -1)) >= 0));
    }

    public final void i(float f, float f2) {
        this.c.set(this.b);
        int i = this.x;
        if (i == 0) {
            RectF rectF = this.c;
            RectF rectF2 = this.b;
            rectF.set(f, f2, rectF2.right, rectF2.bottom);
        } else if (i == 1) {
            RectF rectF3 = this.c;
            RectF rectF4 = this.b;
            rectF3.set(rectF4.left, f2, f, rectF4.bottom);
        } else if (i == 2) {
            RectF rectF5 = this.c;
            RectF rectF6 = this.b;
            rectF5.set(rectF6.left, rectF6.top, f, f2);
        } else if (i == 3) {
            RectF rectF7 = this.c;
            RectF rectF8 = this.b;
            rectF7.set(f, rectF8.top, rectF8.right, f2);
        } else if (i == 4) {
            this.c.offset(f - this.v, f2 - this.w);
            if (this.c.left <= getLeft() || this.c.top <= getTop() || this.c.right >= getRight() || this.c.bottom >= getBottom()) {
                return;
            }
            this.b.set(this.c);
            j();
            postInvalidate();
            return;
        }
        boolean z = this.c.height() >= ((float) this.z);
        boolean z2 = this.c.width() >= ((float) this.z);
        RectF rectF9 = this.b;
        rectF9.set(z2 ? this.c.left : rectF9.left, z ? this.c.top : rectF9.top, z2 ? this.c.right : rectF9.right, z ? this.c.bottom : rectF9.bottom);
        if (z || z2) {
            j();
            postInvalidate();
        }
    }

    @Deprecated
    public boolean isFreestyleCropEnabled() {
        return this.u == 1;
    }

    public final void j() {
        this.f = zo8.b(this.b);
        this.g = zo8.a(this.b);
        this.k = null;
        this.p.reset();
        this.p.addCircle(this.b.centerX(), this.b.centerY(), Math.min(this.b.width(), this.b.height()) / 2.0f, Path.Direction.CW);
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        b(canvas);
        a(canvas);
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            int paddingLeft = getPaddingLeft() + 200;
            int paddingTop = getPaddingTop() + 200;
            int width = (getWidth() - getPaddingRight()) - 200;
            int height = (getHeight() - getPaddingBottom()) - 200;
            this.d = width - paddingLeft;
            this.e = height - paddingTop;
            if (this.C) {
                this.C = false;
                setTargetAspectRatio(this.j);
            }
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.b.isEmpty() && this.u != 0 && h(motionEvent)) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if ((motionEvent.getAction() & 255) == 0) {
                int iC = c(x, y);
                this.x = iC;
                boolean z = iC != -1;
                if (!z) {
                    this.v = -1.0f;
                    this.w = -1.0f;
                } else if (this.v < 0.0f) {
                    this.v = x;
                    this.w = y;
                }
                return z;
            }
            if ((motionEvent.getAction() & 255) == 2 && motionEvent.getPointerCount() == 1 && this.x != -1) {
                float fMin = Math.min(Math.max(x, getPaddingLeft()), getWidth() - getPaddingRight());
                float fMin2 = Math.min(Math.max(y, getPaddingTop()), getHeight() - getPaddingBottom());
                i(fMin, fMin2);
                this.v = fMin;
                this.w = fMin2;
                return true;
            }
            if ((motionEvent.getAction() & 255) == 1) {
                this.v = -1.0f;
                this.w = -1.0f;
                this.x = -1;
                au7 au7Var = this.B;
                if (au7Var != null) {
                    au7Var.a(this.b);
                }
            }
        }
        return false;
    }

    public void setCircleDimmedLayer(boolean z) {
        this.n = z;
    }

    public void setCropFrameColor(@ColorInt int i) {
        this.s.setColor(i);
    }

    public void setCropFrameStrokeWidth(@IntRange(from = 0) int i) {
        this.s.setStrokeWidth(i);
    }

    public void setCropGridColor(@ColorInt int i) {
        this.r.setColor(i);
    }

    public void setCropGridColumnCount(@IntRange(from = 0) int i) {
        this.i = i;
        this.k = null;
    }

    public void setCropGridCornerColor(@ColorInt int i) {
        this.t.setColor(i);
    }

    public void setCropGridRowCount(@IntRange(from = 0) int i) {
        this.h = i;
        this.k = null;
    }

    public void setCropGridStrokeWidth(@IntRange(from = 0) int i) {
        this.r.setStrokeWidth(i);
    }

    public void setDimmedColor(@ColorInt int i) {
        this.o = i;
    }

    @Deprecated
    public void setFreestyleCropEnabled(boolean z) {
        this.u = z ? 1 : 0;
    }

    public void setFreestyleCropMode(int i) {
        this.u = i;
        postInvalidate();
    }

    public void setOverlayViewChangeListener(au7 au7Var) {
        this.B = au7Var;
    }

    public void setShowCropFrame(boolean z) {
        this.l = z;
    }

    public void setShowCropGrid(boolean z) {
        this.m = z;
    }

    public void setTargetAspectRatio(float f) {
        this.j = f;
        if (this.d <= 0) {
            this.C = true;
        } else {
            setupCropBounds();
            postInvalidate();
        }
    }

    public void setupCropBounds() {
        int i = this.d;
        float f = this.j;
        int i2 = (int) (i / f);
        int i3 = this.e;
        if (i2 > i3) {
            int i4 = (int) (i3 * f);
            int i5 = (i - i4) / 2;
            this.b.set(getPaddingLeft() + 200 + i5, getPaddingTop() + 200, getPaddingLeft() + 200 + i4 + i5, getPaddingTop() + 200 + this.e);
        } else {
            int i6 = (i3 - i2) / 2;
            this.b.set(getPaddingLeft() + 200, getPaddingTop() + 200 + i6, getPaddingLeft() + 200 + this.d, getPaddingTop() + 200 + i2 + i6);
        }
        au7 au7Var = this.B;
        if (au7Var != null) {
            au7Var.a(this.b);
        }
        j();
    }

    public OverlayView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public OverlayView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new RectF();
        this.c = new RectF();
        this.k = null;
        this.p = new Path();
        this.q = new Paint(1);
        this.r = new Paint(1);
        this.s = new Paint(1);
        this.t = new Paint(1);
        this.u = 0;
        this.v = -1.0f;
        this.w = -1.0f;
        this.x = -1;
        this.y = getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_rect_corner_touch_threshold);
        this.z = getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_rect_min_size);
        this.A = getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_rect_corner_touch_area_line_length);
        d();
    }
}
