package com.cloud.sdk.commonutil.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.cloud.sdk.commonutil.R;
import defpackage.ja1;

public class TranCircleImageView extends ImageView {
    public static final int BOTTOM = 2;
    public static final int CENTER = 1;
    public static final int FITXY = 3;
    public static final int TOP = 0;
    public Context b;
    public Paint c;
    public Paint d;
    public float e;
    public float f;
    public float g;
    public float h;
    public float i;
    public float j;
    public float k;
    public float l;
    public float m;
    public float n;
    public float o;
    public float p;
    public float q;
    public float r;
    public float s;
    public int t;
    public boolean u;
    public int v;

    public TranCircleImageView(Context context) {
        super(context);
        initData();
    }

    public final void a(Canvas canvas, RectF rectF, Paint paint, float f) {
        Path path = new Path();
        path.addRoundRect(rectF, new float[]{g(this.j, f), g(this.k, f), g(this.l, f), g(this.m, f), g(this.p, f), g(this.q, f), g(this.n, f), g(this.o, f)}, Path.Direction.CW);
        path.close();
        canvas.drawPath(path, paint);
    }

    public final boolean b(Drawable drawable) {
        return drawable != null && drawable.getIntrinsicWidth() > 0 && drawable.getIntrinsicHeight() > 0;
    }

    public final Bitmap c(Drawable drawable) {
        try {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            drawable.draw(canvas);
            return bitmapCreateBitmap;
        } catch (Throwable th) {
            ja1.Log().e("TranCircleImageView", Log.getStackTraceString(th));
            return null;
        }
    }

    public final Rect d(Bitmap bitmap, int i, int i2) {
        int i3;
        int i4;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i5 = width * i2;
        int i6 = i * height;
        int i7 = 0;
        int[] iArr = {width, height};
        if (i5 == i6) {
            return new Rect(0, 0, width, height);
        }
        if (i5 > i6) {
            iArr[0] = i6 / i2;
        } else if (i5 < i6) {
            iArr[1] = i5 / i;
        }
        boolean z = width > iArr[0];
        int i8 = this.v;
        if (i8 == 0) {
            i3 = z ? (width - iArr[0]) / 2 : 0;
            width = z ? (width + iArr[0]) / 2 : iArr[0];
            height = iArr[1];
            i4 = 0;
        } else {
            if (i8 != 1) {
                if (i8 == 2) {
                    i3 = z ? (width - iArr[0]) / 2 : 0;
                    i4 = z ? 0 : height - iArr[1];
                    width = z ? (width + iArr[0]) / 2 : iArr[0];
                    if (z) {
                        height = iArr[1];
                    }
                } else if (i8 != 3) {
                    height = 0;
                    i4 = 0;
                    width = 0;
                } else {
                    i4 = 0;
                }
                return new Rect(i7, i4, width, height);
            }
            i3 = z ? (width - iArr[0]) / 2 : 0;
            i4 = z ? 0 : (height - iArr[1]) / 2;
            width = z ? (width + iArr[0]) / 2 : iArr[0];
            height = z ? iArr[1] : (height + iArr[1]) / 2;
        }
        i7 = i3;
        return new Rect(i7, i4, width, height);
    }

    public final void e(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = this.b.obtainStyledAttributes(attributeSet, R.styleable.TranCircleImageView);
        this.e = typedArrayObtainStyledAttributes.getDimension(R.styleable.TranCircleImageView_radiusYL, 0.0f);
        this.f = typedArrayObtainStyledAttributes.getDimension(R.styleable.TranCircleImageView_topLeftRadiusYL, 0.0f);
        this.g = typedArrayObtainStyledAttributes.getDimension(R.styleable.TranCircleImageView_topRightRadiusYL, 0.0f);
        this.h = typedArrayObtainStyledAttributes.getDimension(R.styleable.TranCircleImageView_bottomLeftRadiusYL, 0.0f);
        this.i = typedArrayObtainStyledAttributes.getDimension(R.styleable.TranCircleImageView_bottomRightRadiusYL, 0.0f);
        this.v = typedArrayObtainStyledAttributes.getInt(R.styleable.TranCircleImageView_scaleTypeYL, 0);
        this.r = typedArrayObtainStyledAttributes.getDimension(R.styleable.TranCircleImageView_borderWidthYL, 0.0f);
        this.s = typedArrayObtainStyledAttributes.getDimension(R.styleable.TranCircleImageView_borderSpaceYL, 0.0f);
        this.t = typedArrayObtainStyledAttributes.getColor(R.styleable.TranCircleImageView_borderColorYL, -1);
        this.j = typedArrayObtainStyledAttributes.getDimension(R.styleable.TranCircleImageView_topLeftRadius_xYL, 0.0f);
        this.k = typedArrayObtainStyledAttributes.getDimension(R.styleable.TranCircleImageView_topLeftRadius_yYL, 0.0f);
        this.l = typedArrayObtainStyledAttributes.getDimension(R.styleable.TranCircleImageView_topRightRadius_xYL, 0.0f);
        this.m = typedArrayObtainStyledAttributes.getDimension(R.styleable.TranCircleImageView_topRightRadius_yYL, 0.0f);
        this.n = typedArrayObtainStyledAttributes.getDimension(R.styleable.TranCircleImageView_bottomLeftRadius_xYL, 0.0f);
        this.o = typedArrayObtainStyledAttributes.getDimension(R.styleable.TranCircleImageView_bottomLeftRadius_yYL, 0.0f);
        this.p = typedArrayObtainStyledAttributes.getDimension(R.styleable.TranCircleImageView_bottomRightRadius_xYL, 0.0f);
        this.q = typedArrayObtainStyledAttributes.getDimension(R.styleable.TranCircleImageView_bottomRightRadius_yYL, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        initData();
    }

    public final void f() {
        float f = this.e;
        if (f != 0.0f) {
            float f2 = this.f;
            if (f2 == 0.0f) {
                f2 = f;
            }
            this.f = f2;
            float f3 = this.g;
            if (f3 == 0.0f) {
                f3 = f;
            }
            this.g = f3;
            float f4 = this.h;
            if (f4 == 0.0f) {
                f4 = f;
            }
            this.h = f4;
            float f5 = this.i;
            if (f5 != 0.0f) {
                f = f5;
            }
            this.i = f;
        }
        float f6 = this.j;
        if (f6 == 0.0f) {
            f6 = this.f;
        }
        this.j = f6;
        float f7 = this.k;
        if (f7 == 0.0f) {
            f7 = this.f;
        }
        this.k = f7;
        float f8 = this.l;
        if (f8 == 0.0f) {
            f8 = this.g;
        }
        this.l = f8;
        float f9 = this.m;
        if (f9 == 0.0f) {
            f9 = this.g;
        }
        this.m = f9;
        float f10 = this.n;
        if (f10 == 0.0f) {
            f10 = this.h;
        }
        this.n = f10;
        float f11 = this.o;
        if (f11 == 0.0f) {
            f11 = this.h;
        }
        this.o = f11;
        float f12 = this.p;
        if (f12 == 0.0f) {
            f12 = this.i;
        }
        this.p = f12;
        float f13 = this.q;
        if (f13 == 0.0f) {
            f13 = this.i;
        }
        this.q = f13;
    }

    public final float g(float f, float f2) {
        return Math.max(f - f2, 0.0f);
    }

    public Paint getBorderPaint() {
        return this.d;
    }

    public Paint getPaint() {
        return this.c;
    }

    public void initData() {
        f();
        this.u = (this.r == 0.0f && this.s == 0.0f && this.j == 0.0f && this.k == 0.0f && this.l == 0.0f && this.m == 0.0f && this.n == 0.0f && this.o == 0.0f && this.p == 0.0f && this.q == 0.0f) ? false : true;
        this.c = new Paint(1);
        Paint paint = new Paint(1);
        this.d = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.d.setStrokeWidth(this.r);
        this.d.setColor(this.t);
        if (this.u) {
            setScaleType(ImageView.ScaleType.MATRIX);
        }
    }

    @Override
    public void onDraw(Canvas canvas) {
        try {
            Drawable drawable = getDrawable();
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            if (this.r != 0.0f) {
                RectF rectF = new RectF(paddingLeft, paddingTop, measuredWidth - paddingRight, measuredHeight - paddingBottom);
                float f = this.r / 2.0f;
                rectF.inset(f, f);
                a(canvas, rectF, this.d, f);
            }
            if (!b(drawable) || !this.u) {
                super.onDraw(canvas);
                return;
            }
            RectF rectF2 = new RectF(paddingLeft, paddingTop, measuredWidth - paddingRight, measuredHeight - paddingBottom);
            float f2 = this.r + this.s;
            float f3 = f2 > 1.0f ? f2 - 1.0f : 0.0f;
            rectF2.inset(f3, f3);
            int iSaveLayer = canvas.saveLayer(rectF2, null, 31);
            a(canvas, rectF2, this.c, f3);
            Paint paint = this.c;
            if (paint != null) {
                paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            }
            Bitmap bitmapC = c(drawable);
            canvas.drawBitmap(bitmapC, d(bitmapC, (int) rectF2.width(), (int) rectF2.height()), rectF2, this.c);
            Paint paint2 = this.c;
            if (paint2 != null) {
                paint2.setXfermode(null);
            }
            canvas.restoreToCount(iSaveLayer);
        } catch (Throwable th) {
            ja1.Log().e("TranCircleImageView", Log.getStackTraceString(th));
        }
    }

    public void setBorderColor(int i) {
        this.t = i;
        Paint paint = this.d;
        if (paint != null) {
            paint.setColor(i);
        }
    }

    public void setBorderSpace(float f) {
        this.s = f;
    }

    public void setBorderWidth(float f) {
        this.r = f;
        Paint paint = this.d;
        if (paint != null) {
            paint.setStrokeWidth(f);
        }
    }

    public void setBottomLeftRadius(float f) {
        setBottomLeftRadius_x(f);
        setBottomLeftRadius_y(f);
    }

    public void setBottomLeftRadius_x(float f) {
        this.n = f;
    }

    public void setBottomLeftRadius_y(float f) {
        this.o = f;
    }

    public void setBottomRightRadius(float f) {
        setBottomRightRadius_x(f);
        setBottomRightRadius_y(f);
    }

    public void setBottomRightRadius_x(float f) {
        this.p = f;
    }

    public void setBottomRightRadius_y(float f) {
        this.q = f;
    }

    public void setCircle(boolean z) {
        this.u = z;
    }

    public void setRadius(float f) {
        setTopLeftRadius(f);
        setTopRightRadius(f);
        setBottomLeftRadius(f);
        setBottomRightRadius(f);
    }

    public void setStyleType(int i) {
        this.v = i;
    }

    public void setTopLeftRadius(float f) {
        setTopLeftRadius_x(f);
        setTopLeftRadius_y(f);
    }

    public void setTopLeftRadius_x(float f) {
        this.j = f;
    }

    public void setTopLeftRadius_y(float f) {
        this.k = f;
    }

    public void setTopRightRadius(float f) {
        setTopRightRadius_x(f);
        setTopRightRadius_y(f);
    }

    public void setTopRightRadius_x(float f) {
        this.l = f;
    }

    public void setTopRightRadius_y(float f) {
        this.m = f;
    }

    public TranCircleImageView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = context;
        e(attributeSet);
    }
}
