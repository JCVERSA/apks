package defpackage;

import android.view.GestureDetector;
import android.view.MotionEvent;

public final class bk2 extends GestureDetector.SimpleOnGestureListener {
    public final boolean b;
    public c74 c;
    public c74 d;

    public bk2(boolean z) {
        this.b = z;
    }

    public final c74 a() {
        return this.d;
    }

    public final c74 b() {
        return this.c;
    }

    public final void c(c74 c74Var) {
        this.d = c74Var;
    }

    public final void d(c74 c74Var) {
        this.c = c74Var;
    }

    @Override
    public boolean onDoubleTap(MotionEvent motionEvent) {
        y45.j(motionEvent, "e");
        c74 c74Var = this.d;
        if (c74Var == null) {
            return false;
        }
        c74Var.invoke();
        return true;
    }

    @Override
    public boolean onDown(MotionEvent motionEvent) {
        y45.j(motionEvent, "e");
        return (this.b || (this.d == null && this.c == null)) ? false : true;
    }

    @Override
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        c74 c74Var;
        y45.j(motionEvent, "e");
        if (this.d == null || (c74Var = this.c) == null) {
            return false;
        }
        if (c74Var == null) {
            return true;
        }
        c74Var.invoke();
        return true;
    }

    @Override
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        c74 c74Var;
        y45.j(motionEvent, "e");
        if (this.d != null || (c74Var = this.c) == null) {
            return false;
        }
        if (c74Var == null) {
            return true;
        }
        c74Var.invoke();
        return true;
    }
}
