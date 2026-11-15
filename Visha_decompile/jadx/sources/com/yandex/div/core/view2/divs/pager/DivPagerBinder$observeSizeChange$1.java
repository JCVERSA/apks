package com.yandex.div.core.view2.divs.pager;

import android.view.View;
import androidx.core.view.OneShotPreDrawListener;
import androidx.viewpager2.widget.ViewPager2;
import com.yandex.div2.DivPager;
import com.yandex.div2.DivPagerLayoutMode;
import defpackage.e74;
import defpackage.qc2;
import defpackage.y45;

public final class DivPagerBinder$observeSizeChange$1 implements qc2, View.OnLayoutChangeListener {
    public int b;
    public final ViewPager2 c;
    public final e74 d;
    public final DivPager e;

    public DivPagerBinder$observeSizeChange$1(final ViewPager2 viewPager2, final e74 e74Var, DivPager divPager) {
        this.c = viewPager2;
        this.d = e74Var;
        this.e = divPager;
        viewPager2.addOnLayoutChangeListener(this);
        OneShotPreDrawListener.add(viewPager2, new Runnable() {
            @Override
            public final void run() {
                int iD = this.d();
                e74Var.invoke(Integer.valueOf(iD));
                this.b = iD;
            }
        });
    }

    @Override
    public void close() {
        this.c.removeOnLayoutChangeListener(this);
    }

    public final int d() {
        int orientation = this.c.getOrientation();
        ViewPager2 viewPager2 = this.c;
        return orientation == 0 ? viewPager2.getWidth() : viewPager2.getHeight();
    }

    @Override
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        y45.j(view, "v");
        int iD = d();
        if (this.b != iD) {
            this.b = iD;
            this.d.invoke(Integer.valueOf(iD));
        } else if (this.e.u instanceof DivPagerLayoutMode.c) {
            this.c.requestTransform();
        }
    }
}
