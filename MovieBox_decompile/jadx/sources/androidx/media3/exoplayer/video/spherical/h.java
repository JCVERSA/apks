package androidx.media3.exoplayer.video.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

final class h extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, b.a {

    private final a f12987c;

    private final float f12988d;

    private final GestureDetector f12989e;

    private final PointF f12985a = new PointF();

    private final PointF f12986b = new PointF();

    private volatile float f12990f = 3.1415927f;

    public interface a {
        void b(PointF pointF);

        boolean onSingleTapUp(MotionEvent motionEvent);
    }

    public h(Context context, a aVar, float f10) {
        this.f12987c = aVar;
        this.f12988d = f10;
        this.f12989e = new GestureDetector(context, this);
    }

    @Override
    public void a(float[] fArr, float f10) {
        this.f12990f = -f10;
    }

    @Override
    public boolean onDown(MotionEvent motionEvent) {
        this.f12985a.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        float x10 = (motionEvent2.getX() - this.f12985a.x) / this.f12988d;
        float y10 = motionEvent2.getY();
        PointF pointF = this.f12985a;
        float f12 = (y10 - pointF.y) / this.f12988d;
        pointF.set(motionEvent2.getX(), motionEvent2.getY());
        double d10 = this.f12990f;
        float fCos = (float) Math.cos(d10);
        float fSin = (float) Math.sin(d10);
        PointF pointF2 = this.f12986b;
        pointF2.x -= (fCos * x10) - (fSin * f12);
        float f13 = pointF2.y + (fSin * x10) + (fCos * f12);
        pointF2.y = f13;
        pointF2.y = Math.max(-45.0f, Math.min(45.0f, f13));
        this.f12987c.b(this.f12986b);
        return true;
    }

    @Override
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return this.f12987c.onSingleTapUp(motionEvent);
    }

    @Override
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f12989e.onTouchEvent(motionEvent);
    }
}
