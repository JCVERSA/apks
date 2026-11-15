package com.transsion.photoview;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

class b {

    private int f46002a = -1;

    private int f46003b = 0;

    private final ScaleGestureDetector f46004c;

    private VelocityTracker f46005d;

    private boolean f46006e;

    private float f46007f;

    private float f46008g;

    private final float f46009h;

    private final float f46010i;

    private final c f46011j;

    private float f46012k;

    private float f46013l;

    private float f46014m;

    private float f46015n;

    class a implements ScaleGestureDetector.OnScaleGestureListener {

        private float f46016a;

        private float f46017b = 0.0f;

        a() {
        }

        @Override
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            float scaleFactor = scaleGestureDetector.getScaleFactor();
            if (Float.isNaN(scaleFactor) || Float.isInfinite(scaleFactor)) {
                return false;
            }
            if (scaleFactor < 0.0f) {
                return true;
            }
            b.this.f46011j.c(scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY(), scaleGestureDetector.getFocusX() - this.f46016a, scaleGestureDetector.getFocusY() - this.f46017b);
            this.f46016a = scaleGestureDetector.getFocusX();
            this.f46017b = scaleGestureDetector.getFocusY();
            return true;
        }

        @Override
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            this.f46016a = scaleGestureDetector.getFocusX();
            this.f46017b = scaleGestureDetector.getFocusY();
            return true;
        }

        @Override
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        }
    }

    b(Context context, c cVar) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f46010i = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f46009h = viewConfiguration.getScaledTouchSlop();
        this.f46011j = cVar;
        this.f46004c = new ScaleGestureDetector(context, new a());
    }

    private float b(MotionEvent motionEvent) {
        try {
            return motionEvent.getX(this.f46003b);
        } catch (Exception unused) {
            return motionEvent.getX();
        }
    }

    private float c(MotionEvent motionEvent) {
        try {
            return motionEvent.getY(this.f46003b);
        } catch (Exception unused) {
            return motionEvent.getY();
        }
    }

    private boolean i(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f46002a = motionEvent.getPointerId(0);
            VelocityTracker velocityTrackerObtain = VelocityTracker.obtain();
            this.f46005d = velocityTrackerObtain;
            if (velocityTrackerObtain != null) {
                velocityTrackerObtain.addMovement(motionEvent);
            }
            this.f46007f = b(motionEvent);
            this.f46008g = c(motionEvent);
            this.f46006e = false;
            this.f46012k = motionEvent.getRawY();
            this.f46013l = motionEvent.getRawX();
        } else if (action == 1) {
            this.f46002a = -1;
            if (this.f46006e && this.f46005d != null) {
                this.f46007f = b(motionEvent);
                this.f46008g = c(motionEvent);
                this.f46005d.addMovement(motionEvent);
                this.f46005d.computeCurrentVelocity(1000);
                float xVelocity = this.f46005d.getXVelocity();
                float yVelocity = this.f46005d.getYVelocity();
                if (Math.max(Math.abs(xVelocity), Math.abs(yVelocity)) >= this.f46010i) {
                    this.f46011j.e(this.f46007f, this.f46008g, -xVelocity, -yVelocity);
                }
            }
            VelocityTracker velocityTracker = this.f46005d;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f46005d = null;
            }
        } else if (action == 2) {
            this.f46014m = motionEvent.getRawY() - this.f46012k;
            this.f46015n = motionEvent.getRawX() - this.f46013l;
            float fB = b(motionEvent);
            float fC = c(motionEvent);
            float f10 = fB - this.f46007f;
            float f11 = fC - this.f46008g;
            if (!this.f46006e) {
                this.f46006e = Math.sqrt((double) ((f10 * f10) + (f11 * f11))) >= ((double) this.f46009h);
            }
            if (this.f46006e) {
                this.f46011j.b(f10, f11);
                this.f46007f = fB;
                this.f46008g = fC;
                VelocityTracker velocityTracker2 = this.f46005d;
                if (velocityTracker2 != null) {
                    velocityTracker2.addMovement(motionEvent);
                }
            }
        } else if (action == 3) {
            this.f46002a = -1;
            VelocityTracker velocityTracker3 = this.f46005d;
            if (velocityTracker3 != null) {
                velocityTracker3.recycle();
                this.f46005d = null;
            }
        } else if (action == 6) {
            int iB = o.b(motionEvent.getAction());
            if (motionEvent.getPointerId(iB) == this.f46002a) {
                int i10 = iB == 0 ? 1 : 0;
                this.f46002a = motionEvent.getPointerId(i10);
                this.f46007f = motionEvent.getX(i10);
                this.f46008g = motionEvent.getY(i10);
            }
        }
        int i11 = this.f46002a;
        this.f46003b = motionEvent.findPointerIndex(i11 != -1 ? i11 : 0);
        return true;
    }

    public float d() {
        return this.f46015n;
    }

    public float e() {
        return this.f46014m;
    }

    public boolean f() {
        return this.f46006e;
    }

    public boolean g() {
        return this.f46004c.isInProgress();
    }

    public boolean h(MotionEvent motionEvent) {
        try {
            this.f46004c.onTouchEvent(motionEvent);
            return i(motionEvent);
        } catch (IllegalArgumentException unused) {
            return true;
        }
    }
}
