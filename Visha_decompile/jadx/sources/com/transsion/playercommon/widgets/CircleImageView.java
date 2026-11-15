package com.transsion.playercommon.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import com.transsion.playercommon.R;

@SuppressLint({"AppCompatCustomView"})
public class CircleImageView extends ImageView {
    public static final Bitmap.Config x = Bitmap.Config.RGB_565;
    public final RectF b;
    public final RectF c;
    public final Matrix d;
    public final Paint e;
    public final Paint f;
    public final Paint g;
    public final Paint h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public Bitmap n;
    public Canvas o;
    public float p;
    public float q;
    public ColorFilter r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;

    public class a extends ViewOutlineProvider {
        @Override
        public void getOutline(View view, Outline outline) {
            if (CircleImageView.this.w) {
                ViewOutlineProvider.BACKGROUND.getOutline(view, outline);
                return;
            }
            Rect rect = new Rect();
            CircleImageView.this.c.roundOut(rect);
            outline.setRoundRect(rect, rect.width() / 2.0f);
        }

        public a() {
        }
    }

    public CircleImageView(Context context) {
        super(context);
        this.b = new RectF();
        this.c = new RectF();
        this.d = new Matrix();
        this.e = new Paint();
        this.f = new Paint();
        this.g = new Paint();
        this.h = new Paint();
        this.i = -16777216;
        this.j = 0;
        this.k = 0;
        this.l = 0;
        this.m = 255;
        d();
    }

    public final RectF c() {
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
        int iMin = Math.min(width, height);
        float paddingLeft = getPaddingLeft() + ((width - iMin) / 2.0f);
        float paddingTop = getPaddingTop() + ((height - iMin) / 2.0f);
        float f = iMin;
        return new RectF(paddingLeft, paddingTop, paddingLeft + f, f + paddingTop);
    }

    public final void d() {
        this.s = true;
        this.e.setAntiAlias(true);
        this.e.setDither(true);
        this.e.setFilterBitmap(true);
        this.e.setAlpha(this.m);
        this.e.setColorFilter(this.r);
        this.f.setStyle(Paint.Style.STROKE);
        this.f.setAntiAlias(true);
        this.f.setColor(this.i);
        this.f.setStrokeWidth(this.j);
        Paint paint = this.g;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        this.g.setAntiAlias(true);
        this.g.setColor(this.k);
        this.h.setStyle(style);
        this.h.setAntiAlias(true);
        this.h.setColor(this.l);
        setOutlineProvider(new a());
    }

    public final void e() {
        Bitmap bitmapFromDrawable = getBitmapFromDrawable(getDrawable());
        this.n = bitmapFromDrawable;
        if (bitmapFromDrawable == null || !bitmapFromDrawable.isMutable()) {
            this.o = null;
        } else {
            this.o = new Canvas(this.n);
        }
        if (this.s) {
            if (this.n != null) {
                g();
            } else {
                this.e.setShader(null);
            }
        }
    }

    public final void f() {
        int i;
        this.c.set(c());
        this.q = Math.min((this.c.height() - this.j) / 2.0f, (this.c.width() - this.j) / 2.0f);
        this.b.set(this.c);
        if (!this.v && (i = this.j) > 0) {
            this.b.inset(i - 1.0f, i - 1.0f);
        }
        this.p = Math.min(this.b.height() / 2.0f, this.b.width() / 2.0f) - 1.0f;
        g();
    }

    public final void g() {
        float fWidth;
        float fHeight;
        if (this.n == null) {
            return;
        }
        this.d.set(null);
        int height = this.n.getHeight();
        float width = this.n.getWidth();
        float f = height;
        float f2 = 0.0f;
        if (this.b.height() * width > this.b.width() * f) {
            fWidth = this.b.height() / f;
            float fWidth2 = (this.b.width() - (width * fWidth)) * 0.5f;
            fHeight = 0.0f;
            f2 = fWidth2;
        } else {
            fWidth = this.b.width() / width;
            fHeight = (this.b.height() - (f * fWidth)) * 0.5f;
        }
        this.d.setScale(fWidth, fWidth);
        Matrix matrix = this.d;
        float f3 = (int) (f2 + 0.5f);
        RectF rectF = this.b;
        matrix.postTranslate(f3 + rectF.left, ((int) (fHeight + 0.5f)) + rectF.top);
        this.t = true;
    }

    public Bitmap getBitmap() {
        return getBitmapFromDrawable(getDrawable());
    }

    public Bitmap getBitmapFromDrawable(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        try {
            Bitmap bitmapCreateBitmap = drawable instanceof ColorDrawable ? Bitmap.createBitmap(2, 2, x) : Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), x);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return bitmapCreateBitmap;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public int getBorderColor() {
        return this.i;
    }

    public int getBorderWidth() {
        return this.j;
    }

    public int getCircleBackgroundColor() {
        return this.k;
    }

    @Override
    public ColorFilter getColorFilter() {
        return this.r;
    }

    @Override
    public int getImageAlpha() {
        return this.m;
    }

    @Override
    public void invalidateDrawable(@NonNull Drawable drawable) {
        this.u = true;
        invalidate();
    }

    @Override
    public void onDraw(Canvas canvas) {
        if (this.w) {
            super.onDraw(canvas);
            return;
        }
        if (this.k != 0) {
            canvas.drawCircle(this.b.centerX(), this.b.centerY(), this.p, this.g);
        }
        if (this.n != null) {
            if (this.u && this.o != null) {
                this.u = false;
                Drawable drawable = getDrawable();
                drawable.setBounds(0, 0, this.o.getWidth(), this.o.getHeight());
                drawable.draw(this.o);
            }
            if (this.t) {
                this.t = false;
                Bitmap bitmap = this.n;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
                bitmapShader.setLocalMatrix(this.d);
                this.e.setShader(bitmapShader);
            }
            canvas.drawCircle(this.b.centerX(), this.b.centerY(), this.p, this.e);
        }
        if (this.j > 0) {
            canvas.drawCircle(this.c.centerX(), this.c.centerY(), this.q, this.f);
        }
        if (this.l != 0) {
            canvas.drawCircle(this.b.centerX(), this.b.centerY(), this.p, this.h);
        }
    }

    @Override
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        f();
        invalidate();
    }

    public void setBorderColor(@ColorInt int i) {
        if (i == this.i) {
            return;
        }
        this.i = i;
        this.f.setColor(i);
        invalidate();
    }

    public void setBorderWidth(int i) {
        if (i == this.j) {
            return;
        }
        this.j = i;
        this.f.setStrokeWidth(i);
        f();
        invalidate();
    }

    public void setCircleBackgroundColor(@ColorInt int i) {
        if (i == this.k) {
            return;
        }
        this.k = i;
        this.g.setColor(i);
        invalidate();
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        if (colorFilter == this.r) {
            return;
        }
        this.r = colorFilter;
        if (this.s) {
            this.e.setColorFilter(colorFilter);
            invalidate();
        }
    }

    @Override
    public void setImageAlpha(int i) {
        int i2 = i & 255;
        if (i2 == this.m) {
            return;
        }
        this.m = i2;
        if (this.s) {
            this.e.setAlpha(i2);
            invalidate();
        }
    }

    @Override
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        e();
        invalidate();
    }

    @Override
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        e();
        invalidate();
    }

    @Override
    public void setImageResource(@DrawableRes int i) {
        super.setImageResource(i);
        e();
        invalidate();
    }

    @Override
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        e();
        invalidate();
    }

    @Override
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        f();
        invalidate();
    }

    @Override
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(i, i2, i3, i4);
        f();
        invalidate();
    }

    public CircleImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CircleImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new RectF();
        this.c = new RectF();
        this.d = new Matrix();
        this.e = new Paint();
        this.f = new Paint();
        this.g = new Paint();
        this.h = new Paint();
        this.i = -16777216;
        this.j = 0;
        this.k = 0;
        this.l = 0;
        this.m = 255;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CircleImageView, i, 0);
        this.j = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.CircleImageView_border_width, 0);
        this.i = typedArrayObtainStyledAttributes.getColor(R.styleable.CircleImageView_border_color, -16777216);
        this.v = typedArrayObtainStyledAttributes.getBoolean(R.styleable.CircleImageView_border_overlay, false);
        this.k = typedArrayObtainStyledAttributes.getColor(R.styleable.CircleImageView_circle_background_color, 0);
        this.l = typedArrayObtainStyledAttributes.getColor(R.styleable.CircleImageView_circle_foreground_color, 0);
        typedArrayObtainStyledAttributes.recycle();
        d();
    }
}
