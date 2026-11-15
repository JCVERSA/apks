package com.transsion.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import com.transsion.common.R;

public class BubbleTextView extends AppCompatTextView {
    private int bgColor;
    private int bubbleOffset;
    private int height;
    private int labelHeight;
    private Paint mPaint;
    private int mRadius;
    private Paint mStrokePaint;
    private int strokeColor;
    private int strokeWidth;
    private int triangleColor;
    private int triangleDirection;
    private int triangleHeight;
    private int triangleWidth;
    private int width;

    public BubbleTextView(Context context) {
        this(context, null);
    }

    private void drawRound(Canvas canvas, Paint paint, int i) {
        int i2 = this.triangleHeight;
        float f = this.width - i;
        float f2 = (this.height - i2) - i;
        int i3 = this.mRadius;
        canvas.drawRoundRect(i, i2 + i, f, f2, i3, i3, paint);
    }

    private void drawTriangle(Canvas canvas, Paint paint, int i) {
        new Path();
        int i2 = this.width / 2;
        int i3 = this.bubbleOffset;
        if (i3 != 0) {
            i2 = i3;
        }
        if (this.triangleColor != 0) {
            paint.setColorFilter(new PorterDuffColorFilter(this.triangleColor, PorterDuff.Mode.SRC_IN));
        }
        int i4 = this.triangleDirection;
        if (i4 == 1) {
            canvas.drawBitmap(drawBitmap(R.drawable.ic_bubble_trangle_up), i2 - (this.triangleWidth / 2), 0.0f, paint);
        } else {
            if (i4 != 2) {
                return;
            }
            canvas.drawBitmap(drawBitmap(R.drawable.ic_bubble_trangle), i2 - (this.triangleWidth / 2), this.height - this.triangleHeight, paint);
        }
    }

    private void drawView(Canvas canvas) {
        if (this.strokeColor != 0 && this.strokeWidth != 0) {
            initStrokePaint();
            this.mStrokePaint.setColor(this.strokeColor);
            this.mRadius = getResources().getDimensionPixelOffset(R.dimen.bubble_text_view_radius) + this.strokeWidth;
            drawRound(canvas, this.mStrokePaint, 0);
            drawTriangle(canvas, this.mStrokePaint, 0);
        }
        int i = this.bgColor;
        if (i != 0) {
            this.mPaint.setColor(i);
            this.mRadius = getResources().getDimensionPixelOffset(R.dimen.bubble_text_view_radius);
            drawRound(canvas, this.mPaint, this.strokeWidth);
            drawTriangle(canvas, this.mPaint, this.strokeWidth);
        }
    }

    private int getFontHeight() {
        Paint.FontMetrics fontMetrics = this.mPaint.getFontMetrics();
        return Math.round(fontMetrics.descent - fontMetrics.ascent);
    }

    private int getFontWidth() {
        String string = getText().toString();
        if (!string.contains("\n")) {
            return (int) this.mPaint.measureText(string);
        }
        int i = 0;
        for (String str : string.split("\n")) {
            int iMeasureText = (int) this.mPaint.measureText(str);
            if (iMeasureText >= i) {
                i = iMeasureText;
            }
        }
        return i;
    }

    public Bitmap drawBitmap(int i) {
        Drawable drawable = getContext().getDrawable(i);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public int getTriangleHeight() {
        return this.triangleHeight;
    }

    public void init(Context context, AttributeSet attributeSet, int i) {
        this.triangleHeight = getResources().getDimensionPixelOffset(R.dimen.bubble_triangle_height);
        this.triangleWidth = getResources().getDimensionPixelOffset(R.dimen.bubble_triangle_width);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BubbleTextView);
            this.bgColor = typedArrayObtainStyledAttributes.getColor(R.styleable.BubbleTextView_bubbleColor, 0);
            this.strokeColor = typedArrayObtainStyledAttributes.getColor(R.styleable.BubbleTextView_bubbleStrokeColor, 0);
            this.strokeWidth = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.BubbleTextView_bubbleStrokeWidth, 0);
            this.triangleDirection = typedArrayObtainStyledAttributes.getInt(R.styleable.BubbleTextView_triangleDirection, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
        setGravity(17);
        initPaint();
    }

    public void initPaint() {
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setAntiAlias(true);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setDither(true);
        this.mPaint.setTextSize(getTextSize());
    }

    public void initStrokePaint() {
        Paint paint = new Paint();
        this.mStrokePaint = paint;
        paint.setAntiAlias(true);
        this.mStrokePaint.setStyle(Paint.Style.FILL);
        this.mStrokePaint.setDither(true);
    }

    @Override
    public void onDraw(Canvas canvas) {
        drawView(canvas);
        super.onDraw(canvas);
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int fontHeight = (getFontHeight() * getLineCount()) + getPaddingTop() + getPaddingBottom();
        this.labelHeight = fontHeight;
        this.height = fontHeight + (this.triangleHeight * 2) + (this.strokeWidth * 2);
        int paddingStart = getPaddingStart() + getFontWidth() + getPaddingEnd() + (this.strokeWidth * 2);
        this.width = paddingStart;
        setMeasuredDimension(paddingStart, this.height);
    }

    public void setBubbleColor(int i) {
        this.bgColor = ContextCompat.getColor(getContext(), i);
        invalidate();
    }

    public void setStroke(int i, int i2) {
        this.strokeColor = ContextCompat.getColor(getContext(), i);
        this.strokeWidth = i2;
        invalidate();
    }

    public void setTriangleColor(int i) {
        this.triangleColor = i;
        invalidate();
    }

    public void setTriangleDirection(int i) {
        this.triangleDirection = i;
        invalidate();
    }

    public void setTriangleOffset(int i) {
        this.bubbleOffset = i;
        invalidate();
    }

    public BubbleTextView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BubbleTextView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.bubbleOffset = 0;
        init(context, attributeSet, i);
    }
}
