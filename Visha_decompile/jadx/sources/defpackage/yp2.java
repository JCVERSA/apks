package defpackage;

import android.util.DisplayMetrics;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.internal.widget.tabs.b;
import com.yandex.div2.DivAction;
import com.yandex.div2.DivSize;
import com.yandex.div2.DivTabs;

public final class yp2 implements b.g.a {
    public final DivTabs.Item a;
    public final DisplayMetrics b;
    public final oj3 c;

    public yp2(DivTabs.Item item, DisplayMetrics displayMetrics, oj3 oj3Var) {
        y45.j(item, "item");
        y45.j(displayMetrics, "displayMetrics");
        y45.j(oj3Var, "resolver");
        this.a = item;
        this.b = displayMetrics;
        this.c = oj3Var;
    }

    @Override
    public Integer a() {
        DivSize height = this.a.a.b().getHeight();
        if (height instanceof DivSize.b) {
            return Integer.valueOf(BaseDivViewExtensionsKt.D0(height, this.b, this.c, null, 4, null));
        }
        return null;
    }

    @Override
    public Integer c() {
        return Integer.valueOf(BaseDivViewExtensionsKt.D0(this.a.a.b().getHeight(), this.b, this.c, null, 4, null));
    }

    @Override
    public DivAction b() {
        return this.a.c;
    }

    public DivTabs.Item e() {
        return this.a;
    }

    @Override
    public String getTitle() {
        return (String) this.a.b.b(this.c);
    }
}
