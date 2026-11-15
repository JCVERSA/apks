package com.mgmi.ViewGroup.convenientbanner;

import android.widget.Scroller;

public class a extends Scroller {
    private int a;
    private boolean b;

    public int a() {
        return this.a;
    }

    @Override
    public void startScroll(int i, int i2, int i3, int i4, int i5) {
        super.startScroll(i, i2, i3, i4, this.b ? 0 : this.a);
    }

    public void a(int i) {
        this.a = i;
    }

    @Override
    public void startScroll(int i, int i2, int i3, int i4) {
        super.startScroll(i, i2, i3, i4, this.b ? 0 : this.a);
    }
}
