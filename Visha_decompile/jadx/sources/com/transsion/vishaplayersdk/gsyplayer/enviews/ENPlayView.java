package com.transsion.vishaplayersdk.gsyplayer.enviews;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.AnticipateInterpolator;
import com.transsion.vishaplayersdk.R;

public class ENPlayView extends View {
    public static int DEFAULT_BG_LINE_COLOR = -328966;
    public static int DEFAULT_BG_LINE_WIDTH = 4;
    public static int DEFAULT_DURATION = 1200;
    public static int DEFAULT_LINE_COLOR = -1;
    public static int DEFAULT_LINE_WIDTH = 4;
    public static int STATE_PAUSE = 1;
    public static int STATE_PLAY;
    private Paint mBgPaint;
    private RectF mBgRectF;
    private int mCenterX;
    private int mCenterY;
    private int mCircleRadius;
    private int mCurrentState;
    private Path mDstPath;
    private int mDuration;
    private float mFraction;
    private int mHeight;
    private Paint mPaint;
    private Path mPath;
    private float mPathLength;
    private PathMeasure mPathMeasure;
    private RectF mRectF;
    private int mWidth;

    public ENPlayView(Context context) {
        super(context);
        this.mCurrentState = STATE_PAUSE;
        this.mFraction = 1.0f;
    }

    private int dp2px(int i) {
        return (int) TypedValue.applyDimension(1, i, getContext().getResources().getDisplayMetrics());
    }

    public int getCurrentState() {
        return this.mCurrentState;
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawCircle(this.mCenterX, this.mCenterY, this.mWidth / 2, this.mBgPaint);
        float f = this.mFraction;
        if (f < 0.0f) {
            int i = this.mCenterX;
            int i2 = this.mCircleRadius;
            int i3 = this.mCenterY;
            canvas.drawLine(i + i2, (i3 - (i2 * 1.6f)) + (i2 * 10 * f), i + i2, i3 + (i2 * 1.6f) + (i2 * 10 * f), this.mPaint);
            int i4 = this.mCenterX;
            int i5 = this.mCircleRadius;
            int i6 = this.mCenterY;
            canvas.drawLine(i4 - i5, i6 - (i5 * 1.6f), i4 - i5, i6 + (i5 * 1.6f), this.mPaint);
            canvas.drawArc(this.mBgRectF, -105.0f, 360.0f, false, this.mPaint);
            return;
        }
        if (f <= 0.3d) {
            int i7 = this.mCenterX;
            int i8 = this.mCircleRadius;
            int i9 = this.mCenterY;
            canvas.drawLine(i7 + i8, (i9 - (i8 * 1.6f)) + (((i8 * 3.2f) / 0.3f) * f), i7 + i8, i9 + (i8 * 1.6f), this.mPaint);
            int i10 = this.mCenterX;
            int i11 = this.mCircleRadius;
            int i12 = this.mCenterY;
            canvas.drawLine(i10 - i11, i12 - (i11 * 1.6f), i10 - i11, i12 + (i11 * 1.6f), this.mPaint);
            float f2 = this.mFraction;
            if (f2 != 0.0f) {
                canvas.drawArc(this.mRectF, 0.0f, f2 * 600.0f, false, this.mPaint);
            }
            RectF rectF = this.mBgRectF;
            float f3 = this.mFraction;
            canvas.drawArc(rectF, (f3 * 360.0f) - 105.0f, (1.0f - f3) * 360.0f, false, this.mPaint);
            return;
        }
        if (f <= 0.6d) {
            canvas.drawArc(this.mRectF, (f - 0.3f) * 600.0f, 180.0f - ((f - 0.3f) * 600.0f), false, this.mPaint);
            this.mDstPath.reset();
            PathMeasure pathMeasure = this.mPathMeasure;
            float f4 = this.mPathLength;
            pathMeasure.getSegment(0.02f * f4, (0.38f * f4) + (((f4 * 0.42f) / 0.3f) * (this.mFraction - 0.3f)), this.mDstPath, true);
            canvas.drawPath(this.mDstPath, this.mPaint);
            RectF rectF2 = this.mBgRectF;
            float f5 = this.mFraction;
            canvas.drawArc(rectF2, (f5 * 360.0f) - 105.0f, (1.0f - f5) * 360.0f, false, this.mPaint);
            return;
        }
        if (f > 0.8d) {
            this.mDstPath.reset();
            this.mPathMeasure.getSegment(this.mCircleRadius * 10 * (this.mFraction - 1.0f), this.mPathLength, this.mDstPath, true);
            canvas.drawPath(this.mDstPath, this.mPaint);
            return;
        }
        this.mDstPath.reset();
        PathMeasure pathMeasure2 = this.mPathMeasure;
        float f6 = this.mPathLength;
        float f7 = this.mFraction;
        pathMeasure2.getSegment((0.02f * f6) + (((f6 * 0.2f) / 0.2f) * (f7 - 0.6f)), (0.8f * f6) + (((f6 * 0.2f) / 0.2f) * (f7 - 0.6f)), this.mDstPath, true);
        canvas.drawPath(this.mDstPath, this.mPaint);
        RectF rectF3 = this.mBgRectF;
        float f8 = this.mFraction;
        canvas.drawArc(rectF3, (f8 * 360.0f) - 105.0f, (1.0f - f8) * 360.0f, false, this.mPaint);
    }

    @Override
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        int i5 = (i * 9) / 10;
        this.mWidth = i5;
        this.mHeight = (i2 * 9) / 10;
        this.mCircleRadius = i5 / dp2px(4);
        this.mCenterX = i / 2;
        this.mCenterY = i2 / 2;
        int i6 = this.mCenterX;
        int i7 = this.mCircleRadius;
        int i8 = this.mCenterY;
        this.mRectF = new RectF(i6 - i7, i8 + (i7 * 0.6f), i6 + i7, i8 + (i7 * 2.6f));
        int i9 = this.mCenterX;
        int i10 = this.mWidth;
        int i11 = this.mCenterY;
        int i12 = this.mHeight;
        this.mBgRectF = new RectF(i9 - (i10 / 2), i11 - (i12 / 2), i9 + (i10 / 2), i11 + (i12 / 2));
        Path path = this.mPath;
        int i13 = this.mCenterX;
        int i14 = this.mCircleRadius;
        path.moveTo(i13 - i14, this.mCenterY + (i14 * 1.8f));
        Path path2 = this.mPath;
        int i15 = this.mCenterX;
        int i16 = this.mCircleRadius;
        path2.lineTo(i15 - i16, this.mCenterY - (i16 * 1.8f));
        this.mPath.lineTo(this.mCenterX + this.mCircleRadius, this.mCenterY);
        this.mPath.close();
        this.mPathMeasure.setPath(this.mPath, false);
        this.mPathLength = this.mPathMeasure.getLength();
    }

    public void pause() {
        int i = this.mCurrentState;
        int i2 = STATE_PAUSE;
        if (i == i2) {
            return;
        }
        this.mCurrentState = i2;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 100.0f);
        valueAnimatorOfFloat.setDuration(this.mDuration);
        valueAnimatorOfFloat.setInterpolator(new AnticipateInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ENPlayView.this.mFraction = valueAnimator.getAnimatedFraction();
                ENPlayView.this.invalidate();
            }
        });
        if (valueAnimatorOfFloat.isRunning()) {
            return;
        }
        valueAnimatorOfFloat.start();
    }

    public void play() {
        int i = this.mCurrentState;
        int i2 = STATE_PLAY;
        if (i == i2) {
            return;
        }
        this.mCurrentState = i2;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 100.0f);
        valueAnimatorOfFloat.setDuration(this.mDuration);
        valueAnimatorOfFloat.setInterpolator(new AnticipateInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ENPlayView.this.mFraction = 1.0f - valueAnimator.getAnimatedFraction();
                ENPlayView.this.invalidate();
            }
        });
        if (valueAnimatorOfFloat.isRunning()) {
            return;
        }
        valueAnimatorOfFloat.start();
    }

    public void setDuration(int i) {
        this.mDuration = i;
    }

    public ENPlayView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCurrentState = STATE_PAUSE;
        this.mFraction = 1.0f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.play);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.play_play_line_color, DEFAULT_LINE_COLOR);
        int color2 = typedArrayObtainStyledAttributes.getColor(R.styleable.play_play_bg_line_color, DEFAULT_BG_LINE_COLOR);
        int integer = typedArrayObtainStyledAttributes.getInteger(R.styleable.play_play_line_width, dp2px(DEFAULT_LINE_WIDTH));
        int integer2 = typedArrayObtainStyledAttributes.getInteger(R.styleable.play_play_bg_line_width, dp2px(DEFAULT_BG_LINE_WIDTH));
        typedArrayObtainStyledAttributes.recycle();
        setLayerType(1, null);
        Paint paint = new Paint(1);
        this.mPaint = paint;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        Paint paint2 = this.mPaint;
        Paint.Cap cap = Paint.Cap.ROUND;
        paint2.setStrokeCap(cap);
        this.mPaint.setColor(color);
        this.mPaint.setStrokeWidth(integer);
        this.mPaint.setPathEffect(new CornerPathEffect(1.0f));
        Paint paint3 = new Paint(1);
        this.mBgPaint = paint3;
        paint3.setStyle(style);
        this.mBgPaint.setStrokeCap(cap);
        this.mBgPaint.setColor(color2);
        this.mBgPaint.setStrokeWidth(integer2);
        this.mPath = new Path();
        this.mDstPath = new Path();
        this.mPathMeasure = new PathMeasure();
        this.mDuration = DEFAULT_DURATION;
    }
}
