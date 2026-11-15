package com.google.android.flexbox;

import android.view.View;
import java.util.ArrayList;
import java.util.List;

public class a {
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public float j;
    public float k;
    public int l;
    public int m;
    public int o;
    public int p;
    public boolean q;
    public boolean r;
    public int a = Integer.MAX_VALUE;
    public int b = Integer.MAX_VALUE;
    public int c = Integer.MIN_VALUE;
    public int d = Integer.MIN_VALUE;
    public List n = new ArrayList();

    public int a() {
        return this.g;
    }

    public int b() {
        return this.h;
    }

    public int c() {
        return this.h - this.i;
    }

    public void d(View view, int i, int i2, int i3, int i4) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        this.a = Math.min(this.a, (view.getLeft() - flexItem.getMarginLeft()) - i);
        this.b = Math.min(this.b, (view.getTop() - flexItem.getMarginTop()) - i2);
        this.c = Math.max(this.c, view.getRight() + flexItem.getMarginRight() + i3);
        this.d = Math.max(this.d, view.getBottom() + flexItem.getMarginBottom() + i4);
    }
}
