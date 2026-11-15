package defpackage;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.downloader.DivPatchApply;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.DivViewCreator;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.view2.divs.tabs.DivTabsActiveStateTracker;
import com.yandex.div.core.view2.divs.tabs.DivTabsEventManager;
import com.yandex.div.internal.widget.tabs.ScrollableViewPager;
import com.yandex.div.internal.widget.tabs.b;
import com.yandex.div.internal.widget.tabs.d;
import com.yandex.div2.Div;
import com.yandex.div2.DivTabs;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.mozilla.javascript.ES6Iterator;

public final class pr2 extends b {
    public final Map A;
    public final Map B;
    public final wv7 C;
    public final View r;
    public final boolean s;
    public a t;
    public final DivViewCreator u;
    public final rg2 v;
    public final DivTabsEventManager w;
    public final DivTabsActiveStateTracker x;
    public DivStatePath y;
    public final zn2 z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pr2(cdc cdcVar, View view, b.i iVar, d dVar, boolean z, a aVar, fda fdaVar, DivViewCreator divViewCreator, rg2 rg2Var, DivTabsEventManager divTabsEventManager, DivTabsActiveStateTracker divTabsActiveStateTracker, DivStatePath divStatePath, zn2 zn2Var) {
        super(cdcVar, view, iVar, dVar, fdaVar, divTabsEventManager, divTabsEventManager, divTabsActiveStateTracker);
        y45.j(cdcVar, "viewPool");
        y45.j(view, "view");
        y45.j(iVar, "tabbedCardConfig");
        y45.j(dVar, "heightCalculatorFactory");
        y45.j(aVar, "bindingContext");
        y45.j(fdaVar, "textStyleProvider");
        y45.j(divViewCreator, "viewCreator");
        y45.j(rg2Var, "divBinder");
        y45.j(divTabsEventManager, "divTabsEventManager");
        y45.j(divTabsActiveStateTracker, "activeStateTracker");
        y45.j(divStatePath, "path");
        y45.j(zn2Var, "divPatchCache");
        this.r = view;
        this.s = z;
        this.t = aVar;
        this.u = divViewCreator;
        this.v = rg2Var;
        this.w = divTabsEventManager;
        this.x = divTabsActiveStateTracker;
        this.y = divStatePath;
        this.z = zn2Var;
        this.A = new LinkedHashMap();
        this.B = new LinkedHashMap();
        ScrollableViewPager scrollableViewPager = this.e;
        y45.i(scrollableViewPager, "mPager");
        this.C = new wv7(scrollableViewPager);
    }

    public static final List A(List list) {
        y45.j(list, "$list");
        return list;
    }

    @Override
    public ViewGroup o(ViewGroup viewGroup, yp2 yp2Var, int i) {
        y45.j(viewGroup, "tabView");
        y45.j(yp2Var, "tab");
        yr8.a.a(viewGroup, this.t.a());
        Div div = yp2Var.e().a;
        View viewC = C(div, this.t.b(), i);
        this.A.put(viewGroup, new yca(i, div, viewC));
        viewGroup.addView(viewC);
        return viewGroup;
    }

    public final View C(Div div, oj3 oj3Var, int i) {
        View viewL = this.u.L(div, oj3Var);
        viewL.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.v.b(this.t, viewL, div, E(i, div));
        return viewL;
    }

    public final DivTabsActiveStateTracker D() {
        return this.x;
    }

    public final DivStatePath E(int i, Div div) {
        Map map = this.B;
        Integer numValueOf = Integer.valueOf(i);
        Object objO0 = map.get(numValueOf);
        if (objO0 == null) {
            objO0 = BaseDivViewExtensionsKt.o0(div.b(), i, this.y);
            map.put(numValueOf, objO0);
        }
        return (DivStatePath) objO0;
    }

    public final DivTabsEventManager F() {
        return this.w;
    }

    public final wv7 G() {
        return this.C;
    }

    public final boolean H() {
        return this.s;
    }

    public final void I() {
        for (Map.Entry entry : this.A.entrySet()) {
            ViewGroup viewGroup = (ViewGroup) entry.getKey();
            yca ycaVar = (yca) entry.getValue();
            this.v.b(this.t, ycaVar.c(), ycaVar.a(), E(ycaVar.b(), ycaVar.a()));
            viewGroup.requestLayout();
        }
    }

    public final void J(a aVar) {
        y45.j(aVar, "<set-?>");
        this.t = aVar;
    }

    public final void K(b.g gVar, int i) {
        y45.j(gVar, "data");
        super.v(gVar, this.t.b(), vr8.a(this.r));
        this.A.clear();
        this.e.setCurrentItem(i, true);
    }

    public final void L(DivStatePath divStatePath) {
        y45.j(divStatePath, ES6Iterator.VALUE_PROPERTY);
        this.y = divStatePath;
        this.B.clear();
    }

    @Override
    public void x(ViewGroup viewGroup) {
        y45.j(viewGroup, "tabView");
        this.A.remove(viewGroup);
        yr8.a.a(viewGroup, this.t.a());
    }

    public final Div.p z(oj3 oj3Var, Div.p pVar) {
        y45.j(oj3Var, "resolver");
        y45.j(pVar, TtmlNode.TAG_DIV);
        do2 do2VarA = this.z.a(this.t.a().getDataTag());
        if (do2VarA == null) {
            return null;
        }
        Object obj = new DivPatchApply(do2VarA).o(pVar, oj3Var).get(0);
        y45.h(obj, "null cannot be cast to non-null type com.yandex.div2.Div.Tabs");
        Div.p pVar2 = (Div.p) obj;
        DisplayMetrics displayMetrics = this.t.a().getResources().getDisplayMetrics();
        List<DivTabs.Item> list = pVar2.c().q;
        final ArrayList arrayList = new ArrayList(z71.v(list, 10));
        for (DivTabs.Item item : list) {
            y45.i(displayMetrics, "displayMetrics");
            arrayList.add(new yp2(item, displayMetrics, oj3Var));
        }
        K(new b.g() {
            @Override
            public final List a() {
                return pr2.A(arrayList);
            }
        }, this.e.getCurrentItem());
        return pVar2;
    }
}
