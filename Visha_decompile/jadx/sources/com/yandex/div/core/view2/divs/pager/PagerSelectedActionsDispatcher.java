package com.yandex.div.core.view2.divs.pager;

import androidx.viewpager2.widget.ViewPager2;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.divs.DivActionBinder;
import com.yandex.div.logging.Severity;
import defpackage.c74;
import defpackage.hg;
import defpackage.ne5;
import defpackage.y45;
import defpackage.zfb;
import defpackage.zl2;
import java.util.List;

public final class PagerSelectedActionsDispatcher {
    public final Div2View a;
    public final List b;
    public final DivActionBinder c;
    public ViewPager2.OnPageChangeCallback d;

    public final class a extends ViewPager2.OnPageChangeCallback {
        public int d = -1;
        public final hg e = new hg();

        public a() {
        }

        public final void a() {
            while (!this.e.isEmpty()) {
                int iIntValue = ((Number) this.e.removeFirst()).intValue();
                ne5 ne5Var = ne5.a;
                if (ne5Var.a(Severity.DEBUG)) {
                    ne5Var.b(3, "Ya:PagerSelectedActionsTracker", "dispatch selected actions for page " + iIntValue);
                }
                PagerSelectedActionsDispatcher pagerSelectedActionsDispatcher = PagerSelectedActionsDispatcher.this;
                pagerSelectedActionsDispatcher.g((zl2) pagerSelectedActionsDispatcher.b.get(iIntValue));
            }
        }

        @Override
        public void onPageScrollStateChanged(int i) {
            if (i == 0) {
                a();
            }
        }

        @Override
        public void onPageSelected(int i) {
            ne5 ne5Var = ne5.a;
            if (ne5Var.a(Severity.DEBUG)) {
                ne5Var.b(3, "Ya:PagerSelectedActionsTracker", "onPageSelected(" + i + ')');
            }
            if (this.d == i) {
                return;
            }
            if (i != -1) {
                this.e.add(Integer.valueOf(i));
            }
            if (this.d == -1) {
                a();
            }
            this.d = i;
        }
    }

    public PagerSelectedActionsDispatcher(Div2View div2View, List list, DivActionBinder divActionBinder) {
        y45.j(div2View, "divView");
        y45.j(list, "items");
        y45.j(divActionBinder, "divActionBinder");
        this.a = div2View;
        this.b = list;
        this.c = divActionBinder;
    }

    public final void e(ViewPager2 viewPager2) {
        y45.j(viewPager2, "viewPager");
        a aVar = new a();
        viewPager2.registerOnPageChangeCallback(aVar);
        this.d = aVar;
    }

    public final void f(ViewPager2 viewPager2) {
        y45.j(viewPager2, "viewPager");
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.d;
        if (onPageChangeCallback != null) {
            viewPager2.unregisterOnPageChangeCallback(onPageChangeCallback);
        }
        this.d = null;
    }

    public final void g(final zl2 zl2Var) {
        final List listU = zl2Var.c().b().u();
        if (listU != null) {
            this.a.bulkActions$div_release(new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m246invoke();
                    return zfb.a;
                }

                public final void m246invoke() {
                    DivActionBinder.I(this.this$0.c, this.this$0.a, zl2Var.d(), listU, "selection", null, 16, null);
                }
            });
        }
    }
}
