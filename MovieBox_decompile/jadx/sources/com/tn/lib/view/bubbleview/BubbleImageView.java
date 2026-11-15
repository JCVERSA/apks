package com.tn.lib.view.bubbleview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.ImageView;
import com.tn.lib.widget.R$styleable;

public class BubbleImageView extends ImageView {

    private BubbleDrawable f40244a;

    private Drawable f40245b;

    private float f40246c;

    private float f40247d;

    private float f40248e;

    private float f40249f;

    private Bitmap f40250g;

    private BubbleDrawable.ArrowLocation f40251h;

    private boolean f40252i;

    public BubbleImageView(Context context) {
        super(context);
        c(null);
    }

    private Bitmap a(Drawable drawable) {
        return getBitmapFromDrawable(getContext(), drawable, getWidth(), getWidth(), 25);
    }

    private Drawable b(int i10) {
        if (i10 != 0) {
            return getContext().getResources().getDrawable(i10);
        }
        throw new IllegalArgumentException("getDrawable res can not be zero");
    }

    private void c(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.BubbleView);
            this.f40246c = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowWidth, BubbleDrawable.b.f40151u);
            this.f40248e = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowHeight, BubbleDrawable.b.f40152v);
            this.f40247d = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_angle, BubbleDrawable.b.f40153w);
            this.f40249f = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowPosition, BubbleDrawable.b.f40154x);
            this.f40251h = BubbleDrawable.ArrowLocation.mapIntToValue(typedArrayObtainStyledAttributes.getInt(R$styleable.BubbleView_arrowLocation, 0));
            this.f40252i = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BubbleView_arrowCenter, false);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void d() {
        Drawable drawable;
        Drawable drawable2;
        int width = getWidth();
        int height = getHeight();
        if (width > 0 && height <= 0 && (drawable2 = this.f40245b) != null && drawable2.getIntrinsicWidth() >= 0) {
            height = (width / this.f40245b.getIntrinsicWidth()) * this.f40245b.getIntrinsicHeight();
        }
        if (height > 0 && width <= 0 && (drawable = this.f40245b) != null && drawable.getIntrinsicHeight() >= 0) {
            width = (height / this.f40245b.getIntrinsicHeight()) * this.f40245b.getIntrinsicWidth();
        }
        e(width, height);
    }

    public static int dp2px(Context context, int i10) {
        return (int) TypedValue.applyDimension(1, i10, context.getResources().getDisplayMetrics());
    }

    private void e(int i10, int i11) {
        f(getPaddingLeft(), i10 - getPaddingRight(), getPaddingTop(), i11 - getPaddingBottom());
    }

    private void f(int i10, int i11, int i12, int i13) {
        if (i11 <= i10 || i13 <= i12) {
            return;
        }
        RectF rectF = new RectF(i10, i12, i11, i13);
        Drawable drawable = this.f40245b;
        if (drawable != null) {
            this.f40250g = a(drawable);
        }
        this.f40244a = new BubbleDrawable.b().B(rectF).t(this.f40251h).q(this.f40247d).s(this.f40248e).v(this.f40246c).z(BubbleDrawable.BubbleType.BITMAP).u(this.f40249f).w(this.f40250g).r(this.f40252i).A();
    }

    public static Bitmap getBitmapFromDrawable(Context context, Drawable drawable, int i10, int i11, int i12) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        try {
            Bitmap bitmapCreateBitmap = (i10 <= 0 || i11 <= 0) ? Bitmap.createBitmap(dp2px(context, i12), dp2px(context, i12), Bitmap.Config.ARGB_8888) : Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return bitmapCreateBitmap;
        } catch (OutOfMemoryError unused) {
            return null;
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        int saveCount = canvas.getSaveCount();
        canvas.translate(getPaddingLeft(), getPaddingTop());
        BubbleDrawable bubbleDrawable = this.f40244a;
        if (bubbleDrawable != null) {
            bubbleDrawable.draw(canvas);
        }
        canvas.restoreToCount(saveCount);
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        d();
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (measuredWidth <= 0 && measuredHeight > 0) {
            setMeasuredDimension(measuredHeight, measuredHeight);
        }
        if (measuredHeight > 0 || measuredWidth <= 0) {
            return;
        }
        setMeasuredDimension(measuredWidth, measuredWidth);
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 <= 0 || i11 <= 0) {
            return;
        }
        e(i10, i11);
    }

    @Override
    public void setImageBitmap(Bitmap bitmap) {
        if (bitmap == null) {
            return;
        }
        this.f40250g = bitmap;
        this.f40245b = new BitmapDrawable(getResources(), bitmap);
        d();
        super.setImageDrawable(this.f40244a);
    }

    @Override
    public void setImageDrawable(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        this.f40245b = drawable;
        d();
        super.setImageDrawable(this.f40244a);
    }

    @Override
    public void setImageResource(int i10) {
        setImageDrawable(b(i10));
    }

    public BubbleImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        c(attributeSet);
    }

    public BubbleImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        c(attributeSet);
    }
}
