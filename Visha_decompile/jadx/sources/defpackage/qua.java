package defpackage;

import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;

public abstract class qua {

    public static abstract class a implements View.OnTouchListener {
        public int b;
        public int c;
        public int d;
        public int e;
        public int f;
        public int g;
        public int h;
        public VelocityTracker i;
        public int j;
        public int k;

        public a() {
            g(-1, -1);
        }

        public abstract boolean a(View view, int i, int i2, MotionEvent motionEvent);

        public abstract boolean b(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, MotionEvent motionEvent);

        public abstract boolean c(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, MotionEvent motionEvent);

        public boolean d(View view, MotionEvent motionEvent) {
            int rawX = (int) motionEvent.getRawX();
            int rawY = (int) motionEvent.getRawY();
            g(rawX, rawY);
            view.setPressed(true);
            return a(view, rawX, rawY, motionEvent);
        }

        public boolean e(View view, MotionEvent motionEvent) {
            int rawX = (int) motionEvent.getRawX();
            int rawY = (int) motionEvent.getRawY();
            if (this.c == -1) {
                g(rawX, rawY);
                view.setPressed(true);
            }
            if (this.g != 1) {
                if (Math.abs(rawX - this.e) < this.b && Math.abs(rawY - this.f) < this.b) {
                    return true;
                }
                this.g = 1;
                if (Math.abs(rawX - this.e) >= Math.abs(rawY - this.f)) {
                    if (rawX - this.e < 0) {
                        this.h = 1;
                    } else {
                        this.h = 4;
                    }
                } else if (rawY - this.f < 0) {
                    this.h = 2;
                } else {
                    this.h = 8;
                }
            }
            boolean zB = b(view, this.h, rawX, rawY, rawX - this.e, rawY - this.f, rawX - this.c, rawY - this.d, motionEvent);
            this.e = rawX;
            this.f = rawY;
            return zB;
        }

        public boolean f(View view, MotionEvent motionEvent) {
            int i;
            int i2;
            int rawX = (int) motionEvent.getRawX();
            int rawY = (int) motionEvent.getRawY();
            VelocityTracker velocityTracker = this.i;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(1000, this.j);
                int xVelocity = (int) this.i.getXVelocity();
                int yVelocity = (int) this.i.getYVelocity();
                this.i.recycle();
                if (Math.abs(xVelocity) < this.k) {
                    xVelocity = 0;
                }
                if (Math.abs(yVelocity) < this.k) {
                    yVelocity = 0;
                }
                this.i = null;
                i = xVelocity;
                i2 = yVelocity;
            } else {
                i = 0;
                i2 = 0;
            }
            view.setPressed(false);
            boolean zC = c(view, this.h, rawX, rawY, rawX - this.c, rawY - this.d, i, i2, motionEvent);
            if (motionEvent.getAction() == 1 && this.g == 0) {
                if (motionEvent.getEventTime() - motionEvent.getDownTime() <= 1000) {
                    view.performClick();
                } else {
                    view.performLongClick();
                }
            }
            g(-1, -1);
            return zC;
        }

        public final void g(int i, int i2) {
            this.c = i;
            this.d = i2;
            this.e = i;
            this.f = i2;
            this.g = 0;
            this.h = 0;
            VelocityTracker velocityTracker = this.i;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (this.b == 0) {
                this.b = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            }
            if (this.j == 0) {
                this.j = ViewConfiguration.get(view.getContext()).getScaledMaximumFlingVelocity();
            }
            if (this.k == 0) {
                this.k = ViewConfiguration.get(view.getContext()).getScaledMinimumFlingVelocity();
            }
            if (this.i == null) {
                this.i = VelocityTracker.obtain();
            }
            this.i.addMovement(motionEvent);
            int action = motionEvent.getAction();
            if (action == 0) {
                return d(view, motionEvent);
            }
            if (action != 1) {
                if (action == 2) {
                    return e(view, motionEvent);
                }
                if (action != 3) {
                    return false;
                }
            }
            return f(view, motionEvent);
        }
    }

    public static void a(View view, a aVar) {
        if (view == null || aVar == null) {
            return;
        }
        view.setOnTouchListener(aVar);
    }
}
