package defpackage;

import android.graphics.Rect;
import android.view.MotionEvent;

public class hv8 extends wr4 {
    public hv8(p7a p7aVar) {
        super(-1, p7aVar);
    }

    @Override
    public void a(vt7 vt7Var, int i, int i2) {
        vt7Var.h(i, -i, i2);
    }

    @Override
    public void b(vt7 vt7Var, int i, int i2, int i3, int i4, int i5) {
        vt7Var.c(i, i2, i3, i4, i5);
    }

    @Override
    public void c(vt7 vt7Var, int i, int i2) {
        vt7Var.h(i, (-getMenuView().getMenuTotalWidth()) + Math.abs(i), i2);
    }

    @Override
    public void d(vt7 vt7Var, int i, int i2, int i3, int i4, int i5) {
        vt7Var.c(i, i2, i3, i4, i5);
    }

    @Override
    public void e(vt7 vt7Var, int i, int i2, int i3) {
        vt7Var.h(i2, getScreenWidth(), i3);
    }

    @Override
    public void f(vt7 vt7Var, int i, int i2) {
        vt7Var.h(i, -i, i2);
    }

    @Override
    public Rect g(int i, float f, int i2, boolean z, int i3) {
        Rect rect = new Rect();
        int menuItemCount = getMenuItemCount();
        if (menuItemCount <= 0) {
            bq5.p("RightHorizontal", "getClickMenuItemBound: menuItemCount = " + menuItemCount);
            return rect;
        }
        int menuWidth = getMenuWidth();
        if (menuWidth <= 0) {
            bq5.p("RightHorizontal", "getClickMenuItemBound: menuWidth = " + menuWidth);
            return rect;
        }
        bq5.c("RightHorizontal", "getClickMenuItemBound: right");
        if (z && getMenuView().b()) {
            ubc.a(getMenuView().getMenuItems().get(0));
            throw null;
        }
        ubc.a(getMenuView().getMenuItems().get(0));
        throw null;
    }

    @Override
    public int h(int i, float f, MotionEvent motionEvent, boolean z) {
        int menuWidth;
        float x = motionEvent.getX();
        motionEvent.getY();
        int menuItemCount = getMenuItemCount();
        if (menuItemCount <= 0 || x > getMenuWidth() || (menuWidth = getMenuWidth()) <= 0) {
            return -1;
        }
        if (!z || !getMenuView().b()) {
            return ((int) Math.abs(x)) / (menuWidth / menuItemCount);
        }
        ubc.a(getMenuView().getMenuItems().get(0));
        throw null;
    }

    @Override
    public boolean j(int i) {
        int menuTotalWidth = getMenuView().getMenuTotalWidth() * getDirection();
        return Math.abs(i - menuTotalWidth) <= 8 && menuTotalWidth != 0;
    }

    public boolean k(int i) {
        return i > (-getMenuView().getMenuTotalWidth()) * getDirection();
    }
}
