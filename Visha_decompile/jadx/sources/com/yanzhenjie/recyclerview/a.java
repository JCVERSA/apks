package com.yanzhenjie.recyclerview;

import android.view.View;
import android.view.ViewGroup;
import android.widget.OverScroller;

public abstract class a {
    public int a;
    public View b;
    public C0337a c = new C0337a();

    public static final class C0337a {
        public int a;
        public int b;
        public boolean c;
    }

    public a(int i, View view) {
        this.a = i;
        this.b = view;
    }

    public abstract void a(OverScroller overScroller, int i, int i2);

    public abstract void b(OverScroller overScroller, int i, int i2);

    public boolean c() {
        View view = this.b;
        return (view instanceof ViewGroup) && ((ViewGroup) view).getChildCount() > 0;
    }

    public abstract C0337a d(int i, int i2);

    public int e() {
        return this.a;
    }

    public View f() {
        return this.b;
    }

    public int g() {
        return this.b.getWidth();
    }

    public abstract boolean h(int i, float f);

    public boolean i(int i) {
        return i == 0 && (-f().getWidth()) * e() != 0;
    }
}
