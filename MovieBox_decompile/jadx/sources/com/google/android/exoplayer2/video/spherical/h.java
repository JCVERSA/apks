package com.google.android.exoplayer2.video.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

final class h extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, b.a {

    private final a f27124c;

    private final float f27125d;

    private final GestureDetector f27126e;

    private final PointF f27122a = new PointF();

    private final PointF f27123b = new PointF();

    private volatile float f27127f = 3.1415927f;

    public interface a {
        void b(PointF pointF);

        boolean onSingleTapUp(MotionEvent motionEvent);
    }

    public h(Context context, a aVar, float f10) {
        this.f27124c = aVar;
        this.f27125d = f10;
        this.f27126e = new GestureDetector(context, this);
    }

    @Override
    public void a(float[] fArr, float f10) {
        this.f27127f = -f10;
    }

    @Override
    public boolean onDown(MotionEvent motionEvent) {
        this.f27122a.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        float x10 = (motionEvent2.getX() - this.f27122a.x) / this.f27125d;
        float y10 = motionEvent2.getY();
        PointF pointF = this.f27122a;
        float f12 = (y10 - pointF.y) / this.f27125d;
        pointF.set(motionEvent2.getX(), motionEvent2.getY());
        double d10 = this.f27127f;
        float fCos = (float) Math.cos(d10);
        float fSin = (float) Math.sin(d10);
        PointF pointF2 = this.f27123b;
        pointF2.x -= (fCos * x10) - (fSin * f12);
        float f13 = pointF2.y + (fSin * x10) + (fCos * f12);
        pointF2.y = f13;
        pointF2.y = Math.max(-45.0f, Math.min(45.0f, f13));
        this.f27124c.b(this.f27123b);
        return true;
    }

    @Override
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return this.f27124c.onSingleTapUp(motionEvent);
    }

    @Override
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f27126e.onTouchEvent(motionEvent);
    }
}
