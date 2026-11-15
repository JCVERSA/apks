package defpackage;

import com.yandex.div.core.view2.divs.widgets.DivPagerIndicatorView;
import com.yandex.div.core.view2.divs.widgets.DivPagerView;
import com.yandex.div2.DivPager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class xv7 {
    public final Map a = new LinkedHashMap();
    public final List b = new ArrayList();

    public static final class a {
        public final DivPagerIndicatorView a;
        public final DivPager b;

        public a(DivPagerIndicatorView divPagerIndicatorView, DivPager divPager) {
            y45.j(divPagerIndicatorView, "indicator");
            y45.j(divPager, "pagerDiv");
            this.a = divPagerIndicatorView;
            this.b = divPager;
        }

        public final DivPagerIndicatorView a() {
            return this.a;
        }

        public final DivPager b() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return y45.e(this.a, aVar.a) && y45.e(this.b, aVar.b);
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + this.b.hashCode();
        }

        public String toString() {
            return "IndicatorData(indicator=" + this.a + ", pagerDiv=" + this.b + ')';
        }
    }

    public final void a() {
        Iterator it = this.a.entrySet().iterator();
        while (it.hasNext()) {
            ((DivPagerView) ((Map.Entry) it.next()).getValue()).clearChangePageCallbackForIndicators();
        }
        for (a aVar : this.b) {
            DivPagerView divPagerView = (DivPagerView) this.a.get(aVar.b());
            if (divPagerView != null) {
                aVar.a().attachPager(divPagerView);
            }
        }
        this.a.clear();
        this.b.clear();
    }

    public final void b(DivPagerIndicatorView divPagerIndicatorView, DivPager divPager) {
        y45.j(divPagerIndicatorView, "indicatorView");
        y45.j(divPager, "pagerDiv");
        this.b.add(new a(divPagerIndicatorView, divPager));
    }

    public final void c(DivPagerView divPagerView, DivPager divPager) {
        y45.j(divPagerView, "pagerView");
        y45.j(divPager, "pagerDiv");
        this.a.put(divPager, divPagerView);
    }
}
