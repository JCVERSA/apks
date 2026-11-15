package com.mbridge.msdk.videocommon.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.widget.MBImageView;

public class RoundImageView extends MBImageView {

    private int f39183c;

    private int f39184d;

    private Paint f39185e;

    private int f39186f;

    private Matrix f39187g;

    private BitmapShader f39188h;

    private int f39189i;

    private RectF f39190j;

    public RoundImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f39187g = new Matrix();
        Paint paint = new Paint();
        this.f39185e = paint;
        paint.setAntiAlias(true);
        this.f39184d = (int) TypedValue.applyDimension(1, 5.0f, getResources().getDisplayMetrics());
        this.f39183c = 1;
    }

    private Bitmap a(Drawable drawable) {
        try {
            if (drawable instanceof BitmapDrawable) {
                return ((BitmapDrawable) drawable).getBitmap();
            }
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_4444);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            drawable.draw(canvas);
            return bitmapCreateBitmap;
        } catch (Throwable th2) {
            o0.b("View", th2.getMessage());
            return null;
        }
    }

    private void b() {
        Bitmap bitmapA;
        try {
            Drawable drawable = getDrawable();
            if (drawable == null || (bitmapA = a(drawable)) == null || bitmapA.isRecycled()) {
                return;
            }
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.f39188h = new BitmapShader(bitmapA, tileMode, tileMode);
            int i10 = this.f39183c;
            float fMax = 1.0f;
            if (i10 == 0) {
                fMax = (this.f39189i * 1.0f) / Math.min(bitmapA.getWidth(), bitmapA.getHeight());
            } else if (i10 == 1) {
                fMax = Math.max((getWidth() * 1.0f) / bitmapA.getWidth(), (getHeight() * 1.0f) / bitmapA.getHeight());
            }
            this.f39187g.setScale(fMax, fMax);
            this.f39188h.setLocalMatrix(this.f39187g);
            this.f39185e.setShader(this.f39188h);
        } catch (Throwable th2) {
            o0.b("RoundImageView", th2.getMessage());
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        try {
            if (getDrawable() == null) {
                return;
            }
            b();
            if (this.f39183c == 1) {
                RectF rectF = this.f39190j;
                float f10 = this.f39184d;
                canvas.drawRoundRect(rectF, f10, f10, this.f39185e);
            } else {
                float f11 = this.f39186f;
                canvas.drawCircle(f11, f11, f11, this.f39185e);
            }
        } catch (Throwable th2) {
            o0.b("RoundImageView", th2.getMessage());
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.f39183c == 0) {
            int iMin = Math.min(getMeasuredWidth(), getMeasuredHeight());
            this.f39189i = iMin;
            this.f39186f = iMin / 2;
            setMeasuredDimension(iMin, iMin);
        }
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable("state_instance"));
        this.f39183c = bundle.getInt("state_type");
        this.f39184d = bundle.getInt("state_border_radius");
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("state_instance", super.onSaveInstanceState());
        bundle.putInt("state_type", this.f39183c);
        bundle.putInt("state_border_radius", this.f39184d);
        return bundle;
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (this.f39183c == 1) {
            this.f39190j = new RectF(0.0f, 0.0f, getWidth(), getHeight());
        }
    }

    public void setBorderRadius(int i10) {
        int iA = t0.a(getContext(), i10);
        if (this.f39184d != iA) {
            this.f39184d = iA;
            invalidate();
        }
    }

    public void setType(int i10) {
        if (this.f39183c != i10) {
            this.f39183c = i10;
            if (i10 != 1 && i10 != 0) {
                this.f39183c = 0;
            }
            requestLayout();
        }
    }

    public RoundImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f39187g = new Matrix();
        Paint paint = new Paint();
        this.f39185e = paint;
        paint.setAntiAlias(true);
        this.f39184d = (int) TypedValue.applyDimension(1, 5.0f, getResources().getDisplayMetrics());
        this.f39183c = 1;
    }

    public RoundImageView(Context context) {
        super(context);
        this.f39187g = new Matrix();
        Paint paint = new Paint();
        this.f39185e = paint;
        paint.setAntiAlias(true);
        this.f39184d = (int) TypedValue.applyDimension(1, 5.0f, getResources().getDisplayMetrics());
        this.f39183c = 1;
    }
}
