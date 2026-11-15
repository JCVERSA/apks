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
import com.cloud.sdk.commonutil.R$styleable;
import com.cloud.sdk.commonutil.util.c;

public class TranCircleImageView extends ImageView {
    public static final int BOTTOM = 2;
    public static final int CENTER = 1;
    public static final int FITXY = 3;
    public static final int TOP = 0;

    private Context f22554a;

    private Paint f22555b;

    private Paint f22556c;

    private float f22557d;

    private float f22558e;

    private float f22559f;

    private float f22560g;

    private float f22561h;

    private float f22562i;

    private float f22563j;

    private float f22564k;

    private float f22565l;

    private float f22566m;

    private float f22567n;

    private float f22568o;

    private float f22569p;

    private float f22570q;

    private float f22571r;

    private int f22572s;

    private boolean f22573t;

    private int f22574u;

    public TranCircleImageView(Context context) {
        super(context);
        initData();
    }

    private void a(Canvas canvas, RectF rectF, Paint paint, float f10) {
        Path path = new Path();
        path.addRoundRect(rectF, new float[]{g(this.f22562i, f10), g(this.f22563j, f10), g(this.f22564k, f10), g(this.f22565l, f10), g(this.f22568o, f10), g(this.f22569p, f10), g(this.f22566m, f10), g(this.f22567n, f10)}, Path.Direction.CW);
        path.close();
        canvas.drawPath(path, paint);
    }

    private boolean b(Drawable drawable) {
        return drawable != null && drawable.getIntrinsicWidth() > 0 && drawable.getIntrinsicHeight() > 0;
    }

    private Bitmap c(Drawable drawable) {
        try {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            drawable.draw(canvas);
            return bitmapCreateBitmap;
        } catch (Throwable th2) {
            c.Log().e("TranCircleImageView", Log.getStackTraceString(th2));
            return null;
        }
    }

    private Rect d(Bitmap bitmap, int i10, int i11) {
        int i12;
        int i13;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i14 = width * i11;
        int i15 = i10 * height;
        int i16 = 0;
        int[] iArr = {width, height};
        if (i14 == i15) {
            return new Rect(0, 0, width, height);
        }
        if (i14 > i15) {
            iArr[0] = i15 / i11;
        } else if (i14 < i15) {
            iArr[1] = i14 / i10;
        }
        boolean z10 = width > iArr[0];
        int i17 = this.f22574u;
        if (i17 != 0) {
            if (i17 == 1) {
                i13 = z10 ? (width - iArr[0]) / 2 : 0;
                i12 = z10 ? 0 : (height - iArr[1]) / 2;
                width = z10 ? (width + iArr[0]) / 2 : iArr[0];
                height = z10 ? iArr[1] : (height + iArr[1]) / 2;
            } else if (i17 == 2) {
                i13 = z10 ? (width - iArr[0]) / 2 : 0;
                i12 = z10 ? 0 : height - iArr[1];
                width = z10 ? (width + iArr[0]) / 2 : iArr[0];
                if (z10) {
                    height = iArr[1];
                }
            } else if (i17 != 3) {
                height = 0;
                width = 0;
                i12 = 0;
            } else {
                i12 = 0;
            }
            i16 = i13;
        } else {
            int i18 = z10 ? (width - iArr[0]) / 2 : 0;
            width = z10 ? (width + iArr[0]) / 2 : iArr[0];
            i12 = 0;
            i16 = i18;
            height = iArr[1];
        }
        return new Rect(i16, i12, width, height);
    }

    private void e(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = this.f22554a.obtainStyledAttributes(attributeSet, R$styleable.TranCircleImageView);
        this.f22557d = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_radiusYL, 0.0f);
        this.f22558e = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_topLeftRadiusYL, 0.0f);
        this.f22559f = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_topRightRadiusYL, 0.0f);
        this.f22560g = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_bottomLeftRadiusYL, 0.0f);
        this.f22561h = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_bottomRightRadiusYL, 0.0f);
        this.f22574u = typedArrayObtainStyledAttributes.getInt(R$styleable.TranCircleImageView_scaleTypeYL, 0);
        this.f22570q = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_borderWidthYL, 0.0f);
        this.f22571r = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_borderSpaceYL, 0.0f);
        this.f22572s = typedArrayObtainStyledAttributes.getColor(R$styleable.TranCircleImageView_borderColorYL, -1);
        this.f22562i = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_topLeftRadius_xYL, 0.0f);
        this.f22563j = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_topLeftRadius_yYL, 0.0f);
        this.f22564k = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_topRightRadius_xYL, 0.0f);
        this.f22565l = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_topRightRadius_yYL, 0.0f);
        this.f22566m = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_bottomLeftRadius_xYL, 0.0f);
        this.f22567n = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_bottomLeftRadius_yYL, 0.0f);
        this.f22568o = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_bottomRightRadius_xYL, 0.0f);
        this.f22569p = typedArrayObtainStyledAttributes.getDimension(R$styleable.TranCircleImageView_bottomRightRadius_yYL, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        initData();
    }

    private void f() {
        float f10 = this.f22557d;
        if (f10 != 0.0f) {
            float f11 = this.f22558e;
            if (f11 == 0.0f) {
                f11 = f10;
            }
            this.f22558e = f11;
            float f12 = this.f22559f;
            if (f12 == 0.0f) {
                f12 = f10;
            }
            this.f22559f = f12;
            float f13 = this.f22560g;
            if (f13 == 0.0f) {
                f13 = f10;
            }
            this.f22560g = f13;
            float f14 = this.f22561h;
            if (f14 != 0.0f) {
                f10 = f14;
            }
            this.f22561h = f10;
        }
        float f15 = this.f22562i;
        if (f15 == 0.0f) {
            f15 = this.f22558e;
        }
        this.f22562i = f15;
        float f16 = this.f22563j;
        if (f16 == 0.0f) {
            f16 = this.f22558e;
        }
        this.f22563j = f16;
        float f17 = this.f22564k;
        if (f17 == 0.0f) {
            f17 = this.f22559f;
        }
        this.f22564k = f17;
        float f18 = this.f22565l;
        if (f18 == 0.0f) {
            f18 = this.f22559f;
        }
        this.f22565l = f18;
        float f19 = this.f22566m;
        if (f19 == 0.0f) {
            f19 = this.f22560g;
        }
        this.f22566m = f19;
        float f20 = this.f22567n;
        if (f20 == 0.0f) {
            f20 = this.f22560g;
        }
        this.f22567n = f20;
        float f21 = this.f22568o;
        if (f21 == 0.0f) {
            f21 = this.f22561h;
        }
        this.f22568o = f21;
        float f22 = this.f22569p;
        if (f22 == 0.0f) {
            f22 = this.f22561h;
        }
        this.f22569p = f22;
    }

    private float g(float f10, float f11) {
        return Math.max(f10 - f11, 0.0f);
    }

    public Paint getBorderPaint() {
        return this.f22556c;
    }

    public Paint getPaint() {
        return this.f22555b;
    }

    public void initData() {
        f();
        this.f22573t = (this.f22570q == 0.0f && this.f22571r == 0.0f && this.f22562i == 0.0f && this.f22563j == 0.0f && this.f22564k == 0.0f && this.f22565l == 0.0f && this.f22566m == 0.0f && this.f22567n == 0.0f && this.f22568o == 0.0f && this.f22569p == 0.0f) ? false : true;
        this.f22555b = new Paint(1);
        Paint paint = new Paint(1);
        this.f22556c = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f22556c.setStrokeWidth(this.f22570q);
        this.f22556c.setColor(this.f22572s);
        if (this.f22573t) {
            setScaleType(ImageView.ScaleType.MATRIX);
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        try {
            Drawable drawable = getDrawable();
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            if (this.f22570q != 0.0f) {
                RectF rectF = new RectF(paddingLeft, paddingTop, measuredWidth - paddingRight, measuredHeight - paddingBottom);
                float f10 = this.f22570q / 2.0f;
                rectF.inset(f10, f10);
                a(canvas, rectF, this.f22556c, f10);
            }
            if (!b(drawable) || !this.f22573t) {
                super.onDraw(canvas);
                return;
            }
            RectF rectF2 = new RectF(paddingLeft, paddingTop, measuredWidth - paddingRight, measuredHeight - paddingBottom);
            float f11 = this.f22570q + this.f22571r;
            float f12 = f11 > 1.0f ? f11 - 1.0f : 0.0f;
            rectF2.inset(f12, f12);
            int iSaveLayer = canvas.saveLayer(rectF2, null, 31);
            a(canvas, rectF2, this.f22555b, f12);
            Paint paint = this.f22555b;
            if (paint != null) {
                paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            }
            Bitmap bitmapC = c(drawable);
            canvas.drawBitmap(bitmapC, d(bitmapC, (int) rectF2.width(), (int) rectF2.height()), rectF2, this.f22555b);
            Paint paint2 = this.f22555b;
            if (paint2 != null) {
                paint2.setXfermode(null);
            }
            canvas.restoreToCount(iSaveLayer);
        } catch (Throwable th2) {
            c.Log().e("TranCircleImageView", Log.getStackTraceString(th2));
        }
    }

    public void setBorderColor(int i10) {
        this.f22572s = i10;
        Paint paint = this.f22556c;
        if (paint != null) {
            paint.setColor(i10);
        }
    }

    public void setBorderSpace(float f10) {
        this.f22571r = f10;
    }

    public void setBorderWidth(float f10) {
        this.f22570q = f10;
        Paint paint = this.f22556c;
        if (paint != null) {
            paint.setStrokeWidth(f10);
        }
    }

    public void setBottomLeftRadius(float f10) {
        setBottomLeftRadius_x(f10);
        setBottomLeftRadius_y(f10);
    }

    public void setBottomLeftRadius_x(float f10) {
        this.f22566m = f10;
    }

    public void setBottomLeftRadius_y(float f10) {
        this.f22567n = f10;
    }

    public void setBottomRightRadius(float f10) {
        setBottomRightRadius_x(f10);
        setBottomRightRadius_y(f10);
    }

    public void setBottomRightRadius_x(float f10) {
        this.f22568o = f10;
    }

    public void setBottomRightRadius_y(float f10) {
        this.f22569p = f10;
    }

    public void setCircle(boolean z10) {
        this.f22573t = z10;
    }

    public void setRadius(float f10) {
        setTopLeftRadius(f10);
        setTopRightRadius(f10);
        setBottomLeftRadius(f10);
        setBottomRightRadius(f10);
    }

    public void setStyleType(int i10) {
        this.f22574u = i10;
    }

    public void setTopLeftRadius(float f10) {
        setTopLeftRadius_x(f10);
        setTopLeftRadius_y(f10);
    }

    public void setTopLeftRadius_x(float f10) {
        this.f22562i = f10;
    }

    public void setTopLeftRadius_y(float f10) {
        this.f22563j = f10;
    }

    public void setTopRightRadius(float f10) {
        setTopRightRadius_x(f10);
        setTopRightRadius_y(f10);
    }

    public void setTopRightRadius_x(float f10) {
        this.f22564k = f10;
    }

    public void setTopRightRadius_y(float f10) {
        this.f22565l = f10;
    }

    public TranCircleImageView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f22554a = context;
        e(attributeSet);
    }
}
