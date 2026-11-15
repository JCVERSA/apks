package com.yandex.div.core.view2.divs.pager;

import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.yandex.div.core.view2.divs.widgets.DivPagerView;
import defpackage.e74;
import defpackage.ex3;
import defpackage.sn2;
import defpackage.y45;
import defpackage.zfb;

public final class FixedPageSizeOffScreenPagesController {
    public final DivPagerView a;
    public final int b;
    public final float c;
    public final ex3 d;
    public final sn2 e;
    public final boolean f;
    public final DivPagerAdapter g;

    public FixedPageSizeOffScreenPagesController(DivPagerView divPagerView, int i, float f, ex3 ex3Var, sn2 sn2Var, boolean z, DivPagerAdapter divPagerAdapter) {
        y45.j(divPagerView, "parent");
        y45.j(ex3Var, "pageSizeProvider");
        y45.j(sn2Var, "paddings");
        y45.j(divPagerAdapter, "adapter");
        this.a = divPagerView;
        this.b = i;
        this.c = f;
        this.d = ex3Var;
        this.e = sn2Var;
        this.f = z;
        this.g = divPagerAdapter;
        c();
    }

    public final void c() {
        if (this.d.a() == 0.0f) {
            return;
        }
        ViewPager2 viewPager = this.a.getViewPager();
        float fA = this.b / (this.d.a() + this.c);
        RecyclerView recyclerView = this.a.getRecyclerView();
        if (recyclerView != null) {
            recyclerView.setItemViewCacheSize(((int) Math.ceil(fA)) + 2);
        }
        if (this.d.c()) {
            viewPager.setOffscreenPageLimit(Math.max((int) Math.ceil(fA - 1), 1));
            return;
        }
        float fB = this.d.b();
        if (fB > this.c) {
            viewPager.setOffscreenPageLimit(1);
            return;
        }
        if (this.f || (this.e.i() >= fB && this.e.f() >= fB)) {
            viewPager.setOffscreenPageLimit(-1);
            return;
        }
        final e74 e74Var = new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Number) obj).intValue());
                return zfb.a;
            }

            public final void invoke(int i) {
                ViewPager2 viewPager2 = this.this$0.a.getViewPager();
                int i2 = 1;
                if (i != 0 && i != this.this$0.g.getItemCount() - 1) {
                    i2 = -1;
                }
                viewPager2.setOffscreenPageLimit(i2);
            }
        };
        e74Var.invoke(Integer.valueOf(viewPager.getCurrentItem()));
        this.a.setChangePageCallbackForOffScreenPages$div_release(new DivPagerView.OffScreenPagesUpdateCallback() {
            @Override
            public void onPageSelected(int position) {
                e74Var.invoke(Integer.valueOf(position));
            }
        });
    }
}
