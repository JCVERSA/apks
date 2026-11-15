package com.transsion.widgets.bubblepopwindow;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.CornerPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.transsion.common.R;

public class BubbleRelativeLayout extends RelativeLayout {
    public static float CORNER_RADIUS = 8.0f;
    public static float STROKE_WIDTH = 2.0f;
    private float mBubbleLegOffset;
    private final Path mBubbleLegPrototype;
    private BubbleLegOrientation mBubbleOrientation;
    private Paint mFillPaint;
    private final Paint mPaint;
    private final Path mPath;
    public static int SHADOW_COLOR = Color.argb(100, 0, 0, 0);
    public static int PADDING = 0;
    public static int LEG_HALF_BASE = 30;
    public static float MIN_LEG_DISTANCE = PADDING + LEG_HALF_BASE;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$transsion$widgets$bubblepopwindow$BubbleRelativeLayout$BubbleLegOrientation;

        static {
            int[] iArr = new int[BubbleLegOrientation.values().length];
            $SwitchMap$com$transsion$widgets$bubblepopwindow$BubbleRelativeLayout$BubbleLegOrientation = iArr;
            try {
                iArr[BubbleLegOrientation.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$transsion$widgets$bubblepopwindow$BubbleRelativeLayout$BubbleLegOrientation[BubbleLegOrientation.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$transsion$widgets$bubblepopwindow$BubbleRelativeLayout$BubbleLegOrientation[BubbleLegOrientation.BOTTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum BubbleLegOrientation {
        TOP,
        LEFT,
        RIGHT,
        BOTTOM,
        NONE
    }

    public BubbleRelativeLayout(Context context) {
        this(context, null);
    }

    private void init(Context context, AttributeSet attributeSet) {
        setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.bubbleWindow);
            try {
                PADDING = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.bubbleWindow_bubbleWindowpadding, PADDING);
                SHADOW_COLOR = typedArrayObtainStyledAttributes.getInt(R.styleable.bubbleWindow_bubbleWindowshadowColor, SHADOW_COLOR);
                int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.bubbleWindow_bubbleWindowhalfBaseOfLeg, LEG_HALF_BASE);
                LEG_HALF_BASE = dimensionPixelSize;
                MIN_LEG_DISTANCE = PADDING + dimensionPixelSize;
                STROKE_WIDTH = typedArrayObtainStyledAttributes.getFloat(R.styleable.bubbleWindow_bubbleWindowstrokeWidth, STROKE_WIDTH);
                CORNER_RADIUS = typedArrayObtainStyledAttributes.getFloat(R.styleable.bubbleWindow_bubbleWindowcornerRadius, CORNER_RADIUS);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                if (typedArrayObtainStyledAttributes != null) {
                    typedArrayObtainStyledAttributes.recycle();
                }
                throw th;
            }
        }
        this.mPaint.setColor(SHADOW_COLOR);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setStrokeCap(Paint.Cap.BUTT);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStrokeWidth(STROKE_WIDTH);
        this.mPaint.setStrokeJoin(Paint.Join.MITER);
        this.mPaint.setPathEffect(new CornerPathEffect(CORNER_RADIUS));
        setLayerType(1, this.mPaint);
        Paint paint = new Paint(this.mPaint);
        this.mFillPaint = paint;
        paint.setColor(-1);
        this.mFillPaint.setShader(new LinearGradient(100.0f, 0.0f, 100.0f, 200.0f, -1, -1, Shader.TileMode.CLAMP));
        setLayerType(1, this.mFillPaint);
        this.mPaint.setShadowLayer(2.0f, 2.0f, 5.0f, SHADOW_COLOR);
        renderBubbleLegPrototype();
        int i = PADDING;
        setPadding(i, i, i, i);
    }

    private Matrix renderBubbleLegMatrix(float f, float f2) {
        float fMax = Math.max(this.mBubbleLegOffset, MIN_LEG_DISTANCE);
        float fMin = Math.min(fMax, f2 - MIN_LEG_DISTANCE);
        Matrix matrix = new Matrix();
        int i = AnonymousClass1.$SwitchMap$com$transsion$widgets$bubblepopwindow$BubbleRelativeLayout$BubbleLegOrientation[this.mBubbleOrientation.ordinal()];
        if (i == 1) {
            f = Math.min(fMax, f - MIN_LEG_DISTANCE);
            matrix.postRotate(90.0f);
            f2 = 0.0f;
        } else if (i == 2) {
            f2 = Math.min(fMax, f2 - MIN_LEG_DISTANCE);
            matrix.postRotate(180.0f);
        } else if (i != 3) {
            f2 = fMin;
            f = 0.0f;
        } else {
            f = Math.min(fMax, f - MIN_LEG_DISTANCE);
            matrix.postRotate(270.0f);
        }
        matrix.postTranslate(f, f2);
        return matrix;
    }

    private void renderBubbleLegPrototype() {
        this.mBubbleLegPrototype.moveTo(0.0f, 0.0f);
        Path path = this.mBubbleLegPrototype;
        int i = PADDING;
        path.lineTo(i * 1.5f, (-i) / 1.5f);
        Path path2 = this.mBubbleLegPrototype;
        int i2 = PADDING;
        path2.lineTo(i2 * 1.5f, i2 / 1.5f);
        this.mBubbleLegPrototype.close();
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override
    @SuppressLint({"DrawAllocation"})
    public void onDraw(Canvas canvas) {
        float width = getWidth();
        float height = getHeight();
        this.mPath.rewind();
        Path path = this.mPath;
        int i = PADDING;
        RectF rectF = new RectF(i, i, width - i, height - i);
        float f = CORNER_RADIUS;
        path.addRoundRect(rectF, f, f, Path.Direction.CW);
        this.mPath.addPath(this.mBubbleLegPrototype, renderBubbleLegMatrix(width, height));
        canvas.drawPath(this.mPath, this.mPaint);
        float f2 = STROKE_WIDTH;
        canvas.scale((width - f2) / width, (height - f2) / height, width / 2.0f, height / 2.0f);
        canvas.drawPath(this.mPath, this.mFillPaint);
    }

    public void setBubbleParams(BubbleLegOrientation bubbleLegOrientation, float f) {
        this.mBubbleLegOffset = f;
        this.mBubbleOrientation = bubbleLegOrientation;
    }

    public BubbleRelativeLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BubbleRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mFillPaint = null;
        this.mPath = new Path();
        this.mBubbleLegPrototype = new Path();
        this.mPaint = new Paint(4);
        this.mBubbleLegOffset = 0.75f;
        this.mBubbleOrientation = BubbleLegOrientation.LEFT;
        init(context, attributeSet);
    }
}
