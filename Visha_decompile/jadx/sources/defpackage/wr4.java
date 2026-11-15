package defpackage;

import android.graphics.Rect;
import android.view.MotionEvent;

public abstract class wr4 {
    public int a;
    public p7a b;
    public a c = new a();
    public int d;

    public static final class a {
    }

    public wr4(int i, p7a p7aVar) {
        this.a = i;
        this.b = p7aVar;
    }

    public abstract void a(vt7 vt7Var, int i, int i2);

    public abstract void b(vt7 vt7Var, int i, int i2, int i3, int i4, int i5);

    public abstract void c(vt7 vt7Var, int i, int i2);

    public abstract void d(vt7 vt7Var, int i, int i2, int i3, int i4, int i5);

    public abstract void e(vt7 vt7Var, int i, int i2, int i3);

    public abstract void f(vt7 vt7Var, int i, int i2);

    public abstract Rect g(int i, float f, int i2, boolean z, int i3);

    public int getDirection() {
        return this.a;
    }

    public int getMenuItemCount() {
        return this.b.getMenuItems().size();
    }

    public p7a getMenuView() {
        return this.b;
    }

    public int getMenuWidth() {
        return this.b.getMenuTotalWidth();
    }

    public int getScreenWidth() {
        return this.d;
    }

    public abstract int h(int i, float f, MotionEvent motionEvent, boolean z);

    public boolean i(int i) {
        return i == 0 && (-getMenuView().getMenuTotalWidth()) * getDirection() != 0;
    }

    public abstract boolean j(int i);

    public void setScreenWidth(int i) {
        this.d = i;
    }
}
