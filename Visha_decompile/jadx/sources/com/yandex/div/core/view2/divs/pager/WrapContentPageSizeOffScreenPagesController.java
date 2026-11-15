package com.yandex.div.core.view2.divs.pager;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.yandex.div.core.view2.divs.widgets.DivPagerView;
import defpackage.sn2;
import defpackage.un2;
import defpackage.wn8;
import defpackage.y45;

public final class WrapContentPageSizeOffScreenPagesController {
    public final DivPagerView a;
    public final float b;
    public final un2 c;
    public final sn2 d;
    public final DivPagerAdapter e;
    public int f;

    public WrapContentPageSizeOffScreenPagesController(DivPagerView divPagerView, float f, un2 un2Var, sn2 sn2Var, DivPagerAdapter divPagerAdapter) {
        y45.j(divPagerView, "parent");
        y45.j(un2Var, "pageSizeProvider");
        y45.j(sn2Var, "paddings");
        y45.j(divPagerAdapter, "adapter");
        this.a = divPagerView;
        this.b = f;
        this.c = un2Var;
        this.d = sn2Var;
        this.e = divPagerAdapter;
        this.f = 1;
        this.f = b();
        d(divPagerView);
        divPagerView.setChangePageCallbackForOffScreenPages$div_release(new DivPagerView.OffScreenPagesUpdateCallback() {
            @Override
            public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                WrapContentPageSizeOffScreenPagesController.this.e();
            }

            @Override
            public void onPageSelected(int position) {
                WrapContentPageSizeOffScreenPagesController.this.e();
            }
        });
    }

    public final int b() {
        Float fG = this.c.g(this.a.getCurrentItem$div_release());
        if (fG == null) {
            return 1;
        }
        float fFloatValue = fG.floatValue();
        int currentItem$div_release = this.a.getCurrentItem$div_release() - 1;
        int i = 0;
        int i2 = 0;
        while (fFloatValue > 0.0f && currentItem$div_release > 0) {
            i2++;
            Float fC = c(currentItem$div_release);
            if (fC == null) {
                break;
            }
            fFloatValue -= fC.floatValue();
            currentItem$div_release--;
        }
        if (fFloatValue > this.d.i() && currentItem$div_release == 0) {
            i2++;
            Float fC2 = c(currentItem$div_release);
            fFloatValue -= fC2 != null ? fC2.floatValue() : 0.0f;
        }
        Float f = this.c.f(this.a.getCurrentItem$div_release());
        if (f == null) {
            return wn8.d(i2, 1);
        }
        float fFloatValue2 = f.floatValue();
        if (fFloatValue > this.d.i()) {
            fFloatValue2 += fFloatValue;
        }
        int currentItem$div_release2 = this.a.getCurrentItem$div_release() + 1;
        while (fFloatValue2 > 0.0f && currentItem$div_release2 < this.e.getItemCount() - 1) {
            i++;
            Float fC3 = c(currentItem$div_release2);
            if (fC3 == null) {
                break;
            }
            fFloatValue2 -= fC3.floatValue();
            currentItem$div_release2++;
        }
        if (fFloatValue2 > this.d.f() && currentItem$div_release2 == this.e.getItemCount() - 1) {
            i++;
            Float fC4 = c(currentItem$div_release2);
            fFloatValue2 -= fC4 != null ? fC4.floatValue() : 0.0f;
        }
        while (fFloatValue2 > 0.0f && currentItem$div_release >= 0) {
            i2++;
            Float fC5 = c(currentItem$div_release);
            if (fC5 == null) {
                break;
            }
            fFloatValue2 -= fC5.floatValue();
            currentItem$div_release--;
        }
        return wn8.d(Math.max(i2, i), 1);
    }

    public final Float c(int i) {
        Float fE = this.c.e(i);
        if (fE != null) {
            return Float.valueOf(fE.floatValue() + this.b);
        }
        return null;
    }

    public final void d(DivPagerView divPagerView) {
        RecyclerView recyclerView = divPagerView.getRecyclerView();
        if (recyclerView != null) {
            recyclerView.setItemViewCacheSize((this.f * 2) + 3);
        }
        divPagerView.getViewPager().setOffscreenPageLimit(this.f);
    }

    public final void e() {
        int iB = b();
        if (iB <= this.f) {
            return;
        }
        this.f = iB;
        d(this.a);
    }
}
