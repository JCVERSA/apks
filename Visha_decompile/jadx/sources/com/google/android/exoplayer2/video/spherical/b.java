package com.google.android.exoplayer2.video.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

public final class b extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, com.google.android.exoplayer2.video.spherical.a.InterfaceC0087a {
    public final a d;
    public final float e;
    public final GestureDetector f;
    public final PointF b = new PointF();
    public final PointF c = new PointF();
    public volatile float g = 3.1415927f;

    public interface a {
        void onScrollChange(PointF pointF);

        boolean onSingleTapUp(MotionEvent motionEvent);
    }

    public b(Context context, a aVar, float f) {
        this.d = aVar;
        this.e = f;
        this.f = new GestureDetector(context, this);
    }

    @Override
    public boolean onDown(MotionEvent motionEvent) {
        this.b.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override
    public void onOrientationChange(float[] fArr, float f) {
        this.g = -f;
    }

    @Override
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        float x = (motionEvent2.getX() - this.b.x) / this.e;
        float y = motionEvent2.getY();
        PointF pointF = this.b;
        float f3 = (y - pointF.y) / this.e;
        pointF.set(motionEvent2.getX(), motionEvent2.getY());
        double d = this.g;
        float fCos = (float) Math.cos(d);
        float fSin = (float) Math.sin(d);
        PointF pointF2 = this.c;
        pointF2.x -= (fCos * x) - (fSin * f3);
        float f4 = pointF2.y + (fSin * x) + (fCos * f3);
        pointF2.y = f4;
        pointF2.y = Math.max(-45.0f, Math.min(45.0f, f4));
        this.d.onScrollChange(this.c);
        return true;
    }

    @Override
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return this.d.onSingleTapUp(motionEvent);
    }

    @Override
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f.onTouchEvent(motionEvent);
    }
}
