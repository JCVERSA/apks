package defpackage;

import android.view.MotionEvent;

public class yv8 {
    public float a;
    public float b;
    public float c;
    public float d;
    public int e = -1;
    public int f = -1;
    public float g;
    public boolean h;
    public a i;

    public interface a {
        boolean a(yv8 yv8Var);
    }

    public static class b implements a {
    }

    public yv8(a aVar) {
        this.i = aVar;
    }

    public final float a(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        return b((float) Math.toDegrees((float) Math.atan2(f2 - f4, f - f3)), (float) Math.toDegrees((float) Math.atan2(f6 - f8, f5 - f7)));
    }

    public final float b(float f, float f2) {
        float f3 = (f2 % 360.0f) - (f % 360.0f);
        this.g = f3;
        if (f3 < -180.0f) {
            this.g = f3 + 360.0f;
        } else if (f3 > 180.0f) {
            this.g = f3 - 360.0f;
        }
        return this.g;
    }

    public float c() {
        return this.g;
    }

    public boolean d(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.c = motionEvent.getX();
            this.d = motionEvent.getY();
            this.e = motionEvent.findPointerIndex(motionEvent.getPointerId(0));
            this.g = 0.0f;
            this.h = true;
        } else if (actionMasked == 1) {
            this.e = -1;
        } else if (actionMasked != 2) {
            if (actionMasked == 5) {
                this.a = motionEvent.getX();
                this.b = motionEvent.getY();
                this.f = motionEvent.findPointerIndex(motionEvent.getPointerId(motionEvent.getActionIndex()));
                this.g = 0.0f;
                this.h = true;
            } else if (actionMasked == 6) {
                this.f = -1;
            }
        } else if (this.e != -1 && this.f != -1 && motionEvent.getPointerCount() > this.f) {
            float x = motionEvent.getX(this.e);
            float y = motionEvent.getY(this.e);
            float x2 = motionEvent.getX(this.f);
            float y2 = motionEvent.getY(this.f);
            if (this.h) {
                this.g = 0.0f;
                this.h = false;
            } else {
                a(this.a, this.b, this.c, this.d, x2, y2, x, y);
            }
            a aVar = this.i;
            if (aVar != null) {
                aVar.a(this);
            }
            this.a = x2;
            this.b = y2;
            this.c = x;
            this.d = y;
        }
        return true;
    }
}
