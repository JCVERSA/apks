package com.transsion.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.transsion.common.R;
import defpackage.oc2;

public class PauseProgresPlayBtnView extends View {
    private int RectBottom;
    private int RectLeft;
    private int RectRight;
    private int RectTOP;
    private int color;
    private int colorCircleLine;
    private boolean isMeasured;
    private boolean isPlaying;
    private OnStatusChangeListener onStatusChangeListener;
    private Paint paintA;
    private Paint paintB;
    private Paint paintC;
    private Paint paintD;
    private Path path;
    private Point pointA;
    private Point pointB;
    private Point pointC;
    private int progress;
    private int progressWith;
    private RectF rectF;
    private RectF rectF2;
    private int viewCenterX;
    private int viewCenterY;
    private int viewHalfLength;

    public interface OnStatusChangeListener {
        void pause();

        void play();
    }

    public class Point {
        float x;
        float y;

        private Point() {
        }
    }

    public PauseProgresPlayBtnView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.pointA = new Point();
        this.pointB = new Point();
        this.pointC = new Point();
        this.path = new Path();
        this.rectF = new RectF();
        this.rectF2 = new RectF();
        this.progress = 0;
        this.isPlaying = false;
        this.isMeasured = false;
        this.paintA = new Paint();
        this.paintB = new Paint();
        this.paintC = new Paint();
        this.paintD = new Paint();
        this.color = getResources().getColor(R.color.visha_music_play_progress_line);
        this.colorCircleLine = getResources().getColor(R.color.visha_music_play_progress_line_bg);
        this.progressWith = oc2.a(context, 1.0f);
    }

    private void getWidthAndHeight() {
        int measuredHeight = getMeasuredHeight();
        int measuredWidth = getMeasuredWidth();
        int i = measuredWidth / 2;
        this.viewCenterX = i;
        int i2 = measuredHeight / 2;
        this.viewCenterY = i2;
        int i3 = measuredHeight < measuredWidth ? i2 : i;
        this.viewHalfLength = i3;
        int i4 = this.progressWith;
        int i5 = i3 / 5;
        RectF rectF = this.rectF;
        int i6 = i4 / 2;
        rectF.left = i - (i3 - i6);
        rectF.top = i2 - (i3 - i6);
        rectF.right = (i3 - i6) + i;
        rectF.bottom = (i3 - i6) + i2;
        RectF rectF2 = this.rectF2;
        int i7 = i4 / 2;
        rectF2.left = i - (i3 - i7);
        rectF2.top = i2 - (i3 - i7);
        rectF2.right = i + (i3 - i7);
        rectF2.bottom = i2 + (i3 - i7);
        this.paintA.setColor(this.colorCircleLine);
        this.paintA.setStrokeWidth(i4);
        this.paintA.setAntiAlias(true);
        Paint paint = this.paintA;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.paintB.setColor(this.color);
        this.paintB.setStrokeWidth(i4);
        this.paintB.setAntiAlias(true);
        this.paintB.setStyle(style);
        this.paintD.setColor(this.color);
        this.paintD.setStrokeWidth(i5);
        this.paintD.setAntiAlias(true);
        this.paintD.setStyle(style);
        this.paintC.setColor(this.color);
        this.paintC.setStrokeWidth(1.0f);
        this.paintC.setAntiAlias(true);
        this.paintC.setStyle(Paint.Style.FILL);
        Point point = this.pointA;
        point.x = this.viewCenterX + (this.viewHalfLength / 2);
        point.y = this.viewCenterY;
        double dSin = Math.sin(Math.toRadians(60.0d));
        double dCos = Math.cos(Math.toRadians(60.0d));
        Point point2 = this.pointB;
        int i8 = this.viewCenterX;
        int i9 = this.viewHalfLength;
        point2.x = (float) (((((double) i8) - (((double) i9) * dCos)) + ((double) i8)) / 2.0d);
        int i10 = this.viewCenterY;
        point2.y = (float) (((((double) i10) - (((double) i9) * dSin)) + ((double) i10)) / 2.0d);
        Point point3 = this.pointC;
        point3.x = (float) (((((double) i8) - (dCos * ((double) i9))) + ((double) i8)) / 2.0d);
        point3.y = (float) (((((double) i10) + (dSin * ((double) i9))) + ((double) i10)) / 2.0d);
        this.RectLeft = i8 - (i9 / 4);
        this.RectTOP = i10 - (i9 / 3);
        this.RectRight = i8 + (i9 / 4);
        this.RectBottom = i10 + (i9 / 3);
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawArc(this.rectF, 0.0f, 360.0f, false, this.paintA);
        canvas.drawArc(this.rectF2, -90.0f, this.progress * 3.6f, false, this.paintB);
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.isMeasured) {
            return;
        }
        getWidthAndHeight();
        this.isMeasured = true;
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.isPlaying = !this.isPlaying;
            invalidate();
            OnStatusChangeListener onStatusChangeListener = this.onStatusChangeListener;
            if (onStatusChangeListener != null) {
                if (this.isPlaying) {
                    onStatusChangeListener.play();
                } else {
                    onStatusChangeListener.pause();
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setOnStatusChangeListener(OnStatusChangeListener onStatusChangeListener) {
        this.onStatusChangeListener = onStatusChangeListener;
    }

    public void setPlaying(boolean z) {
        this.isPlaying = z;
        invalidate();
    }

    public void setProgress(int i) {
        if (i < 0) {
            i = 0;
        }
        if (i > 100) {
            i = 100;
        }
        this.progress = i;
        invalidate();
    }
}
