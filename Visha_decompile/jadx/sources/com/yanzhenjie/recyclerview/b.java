package com.yanzhenjie.recyclerview;

import android.view.View;
import android.widget.OverScroller;

public class b extends a {
    public b(View view) {
        super(1, view);
    }

    @Override
    public void a(OverScroller overScroller, int i, int i2) {
        overScroller.startScroll(-Math.abs(i), 0, Math.abs(i), 0, i2);
    }

    @Override
    public void b(OverScroller overScroller, int i, int i2) {
        overScroller.startScroll(Math.abs(i), 0, f().getWidth() - Math.abs(i), 0, i2);
    }

    @Override
    public a.C0337a d(int i, int i2) {
        a.C0337a c0337a = this.c;
        c0337a.a = i;
        c0337a.b = i2;
        c0337a.c = false;
        if (i == 0) {
            c0337a.c = true;
        }
        if (i >= 0) {
            c0337a.a = 0;
        }
        if (c0337a.a <= (-f().getWidth())) {
            this.c.a = -f().getWidth();
        }
        return this.c;
    }

    @Override
    public boolean h(int i, float f) {
        return f > ((float) f().getWidth());
    }

    public boolean j(int i) {
        int iE = (-f().getWidth()) * e();
        return i <= iE && iE != 0;
    }

    public boolean k(int i) {
        return i < (-f().getWidth()) * e();
    }
}
