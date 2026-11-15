package com.transsion.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.common.R;

public class RoundImageView extends AppCompatImageView {
    public static final int TYPE_CIRCLE = 0;
    public static final int TYPE_OVAL = 2;
    public static final int TYPE_ROUND = 1;
    private Paint mBitmapPaint;
    private BitmapShader mBitmapShader;
    private int mBorderColor;
    private Paint mBorderPaint;
    private float mBorderWidth;
    private float mCornerRadius;
    private float mLeftBottomCornerRadius;
    private float mLeftTopCornerRadius;
    private Matrix mMatrix;
    private float mRadius;
    private float mRightBottomCornerRadius;
    private float mRightTopCornerRadius;
    private Path mRoundPath;
    private RectF mRoundRect;
    private int mWidth;
    private int type;
    private boolean useUnitDip;

    public RoundImageView(Context context) {
        this(context, null);
    }

    private int dp2px(int i) {
        return !this.useUnitDip ? i : (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    private Bitmap drawableToBitmap(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        Bitmap bitmapCreateBitmap = null;
        try {
            bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            drawable.draw(canvas);
            return bitmapCreateBitmap;
        } catch (Exception | OutOfMemoryError e) {
            Log.e("RoundImageView", "drawableToBitmap " + e);
            return bitmapCreateBitmap;
        }
    }

    private void init() {
        this.mRoundPath = new Path();
        this.mRoundRect = new RectF();
        this.mMatrix = new Matrix();
        Paint paint = new Paint();
        this.mBitmapPaint = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.mBorderPaint = paint2;
        paint2.setAntiAlias(true);
        this.mBorderPaint.setStyle(Paint.Style.STROKE);
        updateStrokePaint();
    }

    private void setRoundPath() {
        this.mRoundPath.reset();
        float f = this.mLeftTopCornerRadius;
        if (f == 0.0f && this.mLeftBottomCornerRadius == 0.0f && this.mRightTopCornerRadius == 0.0f && this.mRightBottomCornerRadius == 0.0f) {
            Path path = this.mRoundPath;
            RectF rectF = this.mRoundRect;
            float f2 = this.mCornerRadius;
            path.addRoundRect(rectF, new float[]{f2, f2, f2, f2, f2, f2, f2, f2}, Path.Direction.CW);
            return;
        }
        Path path2 = this.mRoundPath;
        RectF rectF2 = this.mRoundRect;
        float f3 = this.mRightTopCornerRadius;
        float f4 = this.mRightBottomCornerRadius;
        float f5 = this.mLeftBottomCornerRadius;
        path2.addRoundRect(rectF2, new float[]{f, f, f3, f3, f4, f4, f5, f5}, Path.Direction.CW);
    }

    private void setupShader() {
        Bitmap bitmapDrawableToBitmap;
        Drawable drawable = getDrawable();
        if (drawable == null || (bitmapDrawableToBitmap = drawableToBitmap(drawable)) == null) {
            return;
        }
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.mBitmapShader = new BitmapShader(bitmapDrawableToBitmap, tileMode, tileMode);
        this.mMatrix.setTranslate(0.0f, 0.0f);
        int i = this.type;
        float fMax = 1.0f;
        if (i == 0) {
            if (bitmapDrawableToBitmap.getWidth() != getWidth() || bitmapDrawableToBitmap.getHeight() != getHeight()) {
                fMax = (this.mWidth * 1.0f) / Math.min(bitmapDrawableToBitmap.getWidth(), bitmapDrawableToBitmap.getHeight());
                this.mMatrix.setTranslate(-(((bitmapDrawableToBitmap.getWidth() * fMax) - this.mWidth) / 2.0f), -(((bitmapDrawableToBitmap.getHeight() * fMax) - this.mWidth) / 2.0f));
            }
        } else if ((i == 1 || i == 2) && (bitmapDrawableToBitmap.getWidth() != getWidth() || bitmapDrawableToBitmap.getHeight() != getHeight())) {
            fMax = Math.max((getWidth() * 1.0f) / bitmapDrawableToBitmap.getWidth(), (getHeight() * 1.0f) / bitmapDrawableToBitmap.getHeight());
            this.mMatrix.setTranslate(-(((bitmapDrawableToBitmap.getWidth() * fMax) - getWidth()) / 2.0f), -(((bitmapDrawableToBitmap.getHeight() * fMax) - getHeight()) / 2.0f));
        }
        this.mMatrix.preScale(fMax, fMax);
        this.mBitmapShader.setLocalMatrix(this.mMatrix);
        this.mBitmapPaint.setShader(this.mBitmapShader);
    }

    private void updateStrokePaint() {
        this.mBorderPaint.setColor(this.mBorderColor);
        this.mBorderPaint.setStrokeWidth(this.mBorderWidth);
    }

    public float getCornerRadius() {
        return this.mCornerRadius;
    }

    public boolean isUseUnitDip() {
        return this.useUnitDip;
    }

    @Override
    public void onDraw(Canvas canvas) {
        if (getDrawable() == null) {
            return;
        }
        setupShader();
        int i = this.type;
        if (i == 1) {
            setRoundPath();
            canvas.drawPath(this.mRoundPath, this.mBitmapPaint);
            if (this.mBorderWidth > 0.0f) {
                canvas.drawPath(this.mRoundPath, this.mBorderPaint);
                return;
            }
            return;
        }
        if (i != 0) {
            canvas.drawOval(this.mRoundRect, this.mBitmapPaint);
            if (this.mBorderWidth > 0.0f) {
                canvas.drawOval(this.mRoundRect, this.mBorderPaint);
                return;
            }
            return;
        }
        float f = this.mRadius;
        float f2 = this.mBorderWidth;
        canvas.drawCircle((f2 / 2.0f) + f, (f2 / 2.0f) + f, f, this.mBitmapPaint);
        float f3 = this.mBorderWidth;
        if (f3 > 0.0f) {
            float f4 = this.mRadius;
            canvas.drawCircle((f3 / 2.0f) + f4, (f3 / 2.0f) + f4, f4, this.mBorderPaint);
        }
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.type == 0) {
            int iMin = Math.min(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
            this.mWidth = iMin;
            this.mRadius = (iMin / 2) - (this.mBorderWidth / 2.0f);
            setMeasuredDimension(iMin, iMin);
        }
    }

    @Override
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        int i5 = this.type;
        if (i5 == 1 || i5 == 2) {
            RectF rectF = this.mRoundRect;
            float f = this.mBorderWidth;
            rectF.set(f / 2.0f, f / 2.0f, i - (f / 2.0f), i2 - (f / 2.0f));
        }
    }

    public RoundImageView setBorderColor(int i) {
        if (this.mBorderColor != i) {
            this.mBorderColor = i;
            updateStrokePaint();
            invalidate();
        }
        return this;
    }

    public RoundImageView setBorderWidth(int i) {
        float fDp2px = dp2px(i);
        if (this.mBorderWidth != fDp2px) {
            this.mBorderWidth = fDp2px;
            updateStrokePaint();
            invalidate();
        }
        return this;
    }

    public RoundImageView setCornerRadius(int i) {
        float fDp2px = dp2px(i);
        if (this.mCornerRadius != fDp2px) {
            this.mCornerRadius = fDp2px;
            invalidate();
        }
        return this;
    }

    public RoundImageView setLeftBottomCornerRadius(int i) {
        float fDp2px = dp2px(i);
        if (this.mLeftBottomCornerRadius != fDp2px) {
            this.mLeftBottomCornerRadius = fDp2px;
            invalidate();
        }
        return this;
    }

    public RoundImageView setLeftTopCornerRadius(int i) {
        float fDp2px = dp2px(i);
        if (this.mLeftTopCornerRadius != fDp2px) {
            this.mLeftTopCornerRadius = fDp2px;
            invalidate();
        }
        return this;
    }

    public RoundImageView setRightBottomCornerRadius(int i) {
        float fDp2px = dp2px(i);
        if (this.mRightBottomCornerRadius != fDp2px) {
            this.mRightBottomCornerRadius = fDp2px;
            invalidate();
        }
        return this;
    }

    public RoundImageView setRightTopCornerRadius(int i) {
        float fDp2px = dp2px(i);
        if (this.mRightTopCornerRadius != fDp2px) {
            this.mRightTopCornerRadius = fDp2px;
            invalidate();
        }
        return this;
    }

    public RoundImageView setType(int i) {
        if (this.type != i) {
            this.type = i;
            if (i != 1 && i != 0 && i != 2) {
                this.type = 2;
            }
            requestLayout();
        }
        return this;
    }

    public void setUseUnitDip(boolean z) {
        this.useUnitDip = z;
    }

    public RoundImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.useUnitDip = true;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RoundImageView, i, 0);
        this.type = typedArrayObtainStyledAttributes.getInt(R.styleable.RoundImageView_type, 1);
        this.mBorderColor = typedArrayObtainStyledAttributes.getColor(R.styleable.RoundImageView_border_color, -1);
        this.mBorderWidth = typedArrayObtainStyledAttributes.getDimension(R.styleable.RoundImageView_border_width, 0.0f);
        this.mCornerRadius = typedArrayObtainStyledAttributes.getDimension(R.styleable.RoundImageView_corner_radius, dp2px(10));
        this.mLeftTopCornerRadius = typedArrayObtainStyledAttributes.getDimension(R.styleable.RoundImageView_leftTop_corner_radius, 0.0f);
        this.mLeftBottomCornerRadius = typedArrayObtainStyledAttributes.getDimension(R.styleable.RoundImageView_leftBottom_corner_radius, 0.0f);
        this.mRightTopCornerRadius = typedArrayObtainStyledAttributes.getDimension(R.styleable.RoundImageView_rightTop_corner_radius, 0.0f);
        this.mRightBottomCornerRadius = typedArrayObtainStyledAttributes.getDimension(R.styleable.RoundImageView_rightBottom_corner_radius, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        init();
    }
}
