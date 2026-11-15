package com.yandex.mobile.ads.impl;

import androidx.viewpager2.widget.ViewPager2;
import defpackage.y45;
import java.lang.ref.WeakReference;

public final class r31 {
    private final WeakReference<ViewPager2> a;

    public r31(ViewPager2 viewPager2) {
        y45.j(viewPager2, "viewPager");
        this.a = new WeakReference<>(viewPager2);
    }

    public final void a() {
        ViewPager2 viewPager2 = this.a.get();
        if (viewPager2 != null) {
            viewPager2.setCurrentItem(viewPager2.getCurrentItem() + 1, true);
        }
    }

    public final void b() {
        ViewPager2 viewPager2 = this.a.get();
        if (viewPager2 != null) {
            viewPager2.setCurrentItem(viewPager2.getCurrentItem() - 1, true);
        }
    }
}
