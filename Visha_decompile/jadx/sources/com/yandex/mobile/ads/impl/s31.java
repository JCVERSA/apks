package com.yandex.mobile.ads.impl;

import android.view.View;
import androidx.viewpager2.widget.ViewPager2;
import defpackage.y45;
import java.util.List;

public final class s31 extends vg2<ViewPager2, List<? extends xj0>> {
    private final sj0 c;
    private final sp1 d;
    private final o8<?> e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s31(ViewPager2 viewPager2, sj0 sj0Var, sp1 sp1Var, o8<?> o8Var) {
        super(viewPager2);
        y45.j(viewPager2, "viewPager");
        y45.j(sj0Var, "imageProvider");
        y45.j(sp1Var, "reporter");
        y45.j(o8Var, "adResponse");
        this.c = sj0Var;
        this.d = sp1Var;
        this.e = o8Var;
    }

    @Override
    public final boolean a(View view, List<? extends xj0> list) {
        ViewPager2 viewPager2 = (ViewPager2) view;
        y45.j(viewPager2, "viewPager");
        y45.j(list, "imageValues");
        return viewPager2.getAdapter() instanceof p31;
    }

    @Override
    public final void b(View view, List<? extends xj0> list) {
        ViewPager2 viewPager2 = (ViewPager2) view;
        List<? extends xj0> list2 = list;
        y45.j(viewPager2, "viewPager");
        y45.j(list2, "imageValues");
        try {
            viewPager2.setAdapter(new p31(this.c, list2, this.e));
        } catch (IllegalArgumentException e) {
            sp1 sp1Var = this.d;
            String message = e.getMessage();
            if (message == null) {
                message = "IllegalArgumentException: set adapter exception";
            }
            sp1Var.reportError(message, e);
        }
    }
}
