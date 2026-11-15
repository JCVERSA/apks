package defpackage;

import com.yandex.div.internal.widget.tabs.ScrollableViewPager;

public final class wv7 {
    public final ScrollableViewPager a;

    public wv7(ScrollableViewPager scrollableViewPager) {
        y45.j(scrollableViewPager, "scrollableViewPager");
        this.a = scrollableViewPager;
    }

    public final int a() {
        return this.a.getCurrentItem();
    }

    public final void b(int i) {
        this.a.setCurrentItem(i, true);
    }
}
