package com.yandex.mobile.ads.impl;

import androidx.viewpager2.widget.ViewPager2;
import defpackage.y45;

public final class xf1 extends ViewPager2.OnPageChangeCallback {
    private final k31 a;
    private final g31 b;
    private boolean c;

    public xf1(k31 k31Var, g31 g31Var) {
        y45.j(k31Var, "multiBannerEventTracker");
        this.a = k31Var;
        this.b = g31Var;
    }

    @Override
    public final void onPageScrollStateChanged(int i) {
        if (i == 0) {
            this.c = false;
        } else {
            if (i != 1) {
                return;
            }
            g31 g31Var = this.b;
            if (g31Var != null) {
                g31Var.a();
            }
            this.c = true;
        }
    }

    @Override
    public final void onPageSelected(int i) {
        if (this.c) {
            this.a.c();
            this.c = false;
        }
    }
}
