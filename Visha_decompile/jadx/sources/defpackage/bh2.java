package defpackage;

import androidx.media3.common.C;
import com.yandex.div.core.expression.ExpressionResolverImpl;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.Div;
import com.yandex.div2.DivCollectionItemBuilder;
import com.yandex.div2.DivContainer;
import com.yandex.div2.DivCustom;
import com.yandex.div2.DivGallery;
import com.yandex.div2.DivGifImage;
import com.yandex.div2.DivGrid;
import com.yandex.div2.DivImage;
import com.yandex.div2.DivIndicator;
import com.yandex.div2.DivInput;
import com.yandex.div2.DivPager;
import com.yandex.div2.DivSelect;
import com.yandex.div2.DivSeparator;
import com.yandex.div2.DivSlider;
import com.yandex.div2.DivState;
import com.yandex.div2.DivSwitch;
import com.yandex.div2.DivTabs;
import com.yandex.div2.DivText;
import com.yandex.div2.DivVideo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.a;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class bh2 {
    public static final List a(DivCollectionItemBuilder divCollectionItemBuilder, oj3 oj3Var) throws JSONException {
        y45.j(divCollectionItemBuilder, "<this>");
        y45.j(oj3Var, "resolver");
        JSONArray jSONArray = (JSONArray) divCollectionItemBuilder.a.b(oj3Var);
        int length = jSONArray.length();
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            Object obj = jSONArray.get(i);
            y45.i(obj, "get(i)");
            zl2 zl2VarB = b(divCollectionItemBuilder, obj, i, oj3Var);
            if (zl2VarB != null) {
                arrayList.add(zl2VarB);
            }
        }
        return arrayList;
    }

    public static final zl2 b(DivCollectionItemBuilder divCollectionItemBuilder, Object obj, int i, oj3 oj3Var) {
        Object next;
        oj3 oj3VarJ = j(divCollectionItemBuilder, obj, i, oj3Var);
        if (oj3VarJ == null) {
            return null;
        }
        Iterator it = divCollectionItemBuilder.c.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((Boolean) ((DivCollectionItemBuilder.Prototype) next).c.b(oj3VarJ)).booleanValue());
        DivCollectionItemBuilder.Prototype prototype = (DivCollectionItemBuilder.Prototype) next;
        if (prototype == null) {
            return null;
        }
        Div div = prototype.a;
        Expression expression = prototype.b;
        return t(g(div, expression != null ? (String) expression.b(oj3VarJ) : null), oj3VarJ);
    }

    public static final List c(DivContainer divContainer, oj3 oj3Var) {
        y45.j(divContainer, "<this>");
        y45.j(oj3Var, "resolver");
        return f(divContainer.A, divContainer.z, oj3Var);
    }

    public static final List d(DivGallery divGallery, oj3 oj3Var) {
        y45.j(divGallery, "<this>");
        y45.j(oj3Var, "resolver");
        return f(divGallery.u, divGallery.s, oj3Var);
    }

    public static final List e(DivPager divPager, oj3 oj3Var) {
        y45.j(divPager, "<this>");
        y45.j(oj3Var, "resolver");
        return f(divPager.t, divPager.r, oj3Var);
    }

    public static final List f(List list, DivCollectionItemBuilder divCollectionItemBuilder, oj3 oj3Var) {
        List listA;
        if (divCollectionItemBuilder == null || (listA = a(divCollectionItemBuilder, oj3Var)) == null) {
            return list != null ? s(list, oj3Var) : y71.k();
        }
        return listA;
    }

    public static final Div g(Div div, String str) {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        if (div instanceof Div.g) {
            return new Div.g(DivImage.D(((Div.g) div).c(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, str, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -67108865, 8388607, null));
        }
        if (div instanceof Div.e) {
            return new Div.e(DivGifImage.D(((Div.e) div).c(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, str, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -16777217, 262143, null));
        }
        if (div instanceof Div.q) {
            return new Div.q(DivText.D(((Div.q) div).c(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, str, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -1073741825, -1, 31, null));
        }
        if (div instanceof Div.l) {
            return new Div.l(DivSeparator.D(((Div.l) div).c(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, str, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -2097153, 2047, null));
        }
        if (div instanceof Div.b) {
            Div.b bVar = (Div.b) div;
            DivContainer divContainerC = bVar.c();
            List list = bVar.c().A;
            if (list != null) {
                List list2 = list;
                ArrayList arrayList5 = new ArrayList(z71.v(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList5.add(h((Div) it.next(), null, 1, null));
                }
                arrayList4 = arrayList5;
            } else {
                arrayList4 = null;
            }
            return new Div.b(DivContainer.D(divContainerC, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, str, null, arrayList4, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -83886081, 1048575, null));
        }
        if (div instanceof Div.f) {
            Div.f fVar = (Div.f) div;
            DivGrid divGridC = fVar.c();
            List list3 = fVar.c().y;
            if (list3 != null) {
                List list4 = list3;
                ArrayList arrayList6 = new ArrayList(z71.v(list4, 10));
                Iterator it2 = list4.iterator();
                while (it2.hasNext()) {
                    arrayList6.add(h((Div) it2.next(), null, 1, null));
                }
                arrayList3 = arrayList6;
            } else {
                arrayList3 = null;
            }
            return new Div.f(DivGrid.D(divGridC, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, str, arrayList3, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -25165825, 16383, null));
        }
        if (div instanceof Div.d) {
            Div.d dVar = (Div.d) div;
            DivGallery divGalleryC = dVar.c();
            List list5 = dVar.c().u;
            if (list5 != null) {
                List list6 = list5;
                ArrayList arrayList7 = new ArrayList(z71.v(list6, 10));
                Iterator it3 = list6.iterator();
                while (it3.hasNext()) {
                    arrayList7.add(h((Div) it3.next(), null, 1, null));
                }
                arrayList2 = arrayList7;
            } else {
                arrayList2 = null;
            }
            return new Div.d(DivGallery.D(divGalleryC, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, str, null, null, arrayList2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -1179649, 2047, null));
        }
        if (div instanceof Div.j) {
            Div.j jVar = (Div.j) div;
            DivPager divPagerC = jVar.c();
            List list7 = jVar.c().t;
            if (list7 != null) {
                List list8 = list7;
                ArrayList arrayList8 = new ArrayList(z71.v(list8, 10));
                Iterator it4 = list8.iterator();
                while (it4.hasNext()) {
                    arrayList8.add(h((Div) it4.next(), null, 1, null));
                }
                arrayList = arrayList8;
            } else {
                arrayList = null;
            }
            return new Div.j(DivPager.D(divPagerC, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, str, null, null, null, arrayList, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -557057, 2047, null));
        }
        if (div instanceof Div.p) {
            Div.p pVar = (Div.p) div;
            DivTabs divTabsC = pVar.c();
            List<DivTabs.Item> list9 = pVar.c().q;
            ArrayList arrayList9 = new ArrayList(z71.v(list9, 10));
            for (DivTabs.Item item : list9) {
                arrayList9.add(DivTabs.Item.b(item, h(item.a, null, 1, null), null, null, 6, null));
            }
            return new Div.p(DivTabs.D(divTabsC, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, str, arrayList9, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -98305, 2047, null));
        }
        if (div instanceof Div.n) {
            Div.n nVar = (Div.n) div;
            DivState divStateC = nVar.c();
            List<DivState.State> list10 = nVar.c().y;
            ArrayList arrayList10 = new ArrayList(z71.v(list10, 10));
            for (DivState.State state : list10) {
                Div div2 = state.c;
                arrayList10.add(DivState.State.b(state, null, null, div2 != null ? h(div2, null, 1, null) : null, null, null, 27, null));
            }
            return new Div.n(DivState.D(divStateC, null, null, null, null, null, null, null, null, null, null, null, str, null, null, null, null, str, null, null, null, null, null, null, null, arrayList10, null, null, null, null, null, null, null, null, null, null, null, null, null, -16844801, 63, null));
        }
        if (div instanceof Div.c) {
            DivCustom divCustomC = ((Div.c) div).c();
            return new Div.c(divCustomC.C(((-32769) & 1) != 0 ? divCustomC.r() : null, ((-32769) & 2) != 0 ? divCustomC.g() : null, ((-32769) & 4) != 0 ? divCustomC.o() : null, ((-32769) & 8) != 0 ? divCustomC.p() : null, ((-32769) & 16) != 0 ? divCustomC.A() : null, ((-32769) & 32) != 0 ? divCustomC.getBackground() : null, ((-32769) & 64) != 0 ? divCustomC.B() : null, ((-32769) & 128) != 0 ? divCustomC.b() : null, ((-32769) & 256) != 0 ? divCustomC.i : null, ((-32769) & 512) != 0 ? divCustomC.j : null, ((-32769) & 1024) != 0 ? divCustomC.k() : null, ((-32769) & 2048) != 0 ? divCustomC.getExtensions() : null, ((-32769) & 4096) != 0 ? divCustomC.q() : null, ((-32769) & 8192) != 0 ? divCustomC.y() : null, ((-32769) & 16384) != 0 ? divCustomC.getHeight() : null, ((-32769) & 32768) != 0 ? divCustomC.getId() : str, ((-32769) & 65536) != 0 ? divCustomC.q : null, ((-32769) & 131072) != 0 ? divCustomC.v() : null, ((-32769) & 262144) != 0 ? divCustomC.d() : null, ((-32769) & 524288) != 0 ? divCustomC.t() : null, ((-32769) & 1048576) != 0 ? divCustomC.f() : null, ((-32769) & 2097152) != 0 ? divCustomC.e() : null, ((-32769) & 4194304) != 0 ? divCustomC.u() : null, ((-32769) & 8388608) != 0 ? divCustomC.h() : null, ((-32769) & 16777216) != 0 ? divCustomC.m() : null, ((-32769) & 33554432) != 0 ? divCustomC.j() : null, ((-32769) & 67108864) != 0 ? divCustomC.z() : null, ((-32769) & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? divCustomC.i() : null, ((-32769) & 268435456) != 0 ? divCustomC.n() : null, ((-32769) & 536870912) != 0 ? divCustomC.w() : null, ((-32769) & 1073741824) != 0 ? divCustomC.c() : null, ((-32769) & Integer.MIN_VALUE) != 0 ? divCustomC.getVisibility() : null, (7 & 1) != 0 ? divCustomC.x() : null, (7 & 2) != 0 ? divCustomC.a() : null, (7 & 4) != 0 ? divCustomC.getWidth() : null));
        }
        if (div instanceof Div.h) {
            return new Div.h(DivIndicator.D(((Div.h) div).c(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, str, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -131073, 4095, null));
        }
        if (div instanceof Div.m) {
            return new Div.m(DivSlider.D(((Div.m) div).c(), null, null, null, null, null, null, null, null, null, null, null, null, null, str, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -8193, 32767, null));
        }
        if (div instanceof Div.i) {
            return new Div.i(DivInput.D(((Div.i) div).c(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, str, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -67108865, 134217727, null));
        }
        if (div instanceof Div.k) {
            return new Div.k(DivSelect.D(((Div.k) div).c(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, str, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -2097153, 8191, null));
        }
        if (div instanceof Div.r) {
            return new Div.r(DivVideo.D(((Div.r) div).c(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, str, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -524289, 32767, null));
        }
        if (!(div instanceof Div.o)) {
            throw new NoWhenBranchMatchedException();
        }
        DivSwitch divSwitchC = ((Div.o) div).c();
        return new Div.o(divSwitchC.C(((-8193) & 1) != 0 ? divSwitchC.r() : null, ((-8193) & 2) != 0 ? divSwitchC.g() : null, ((-8193) & 4) != 0 ? divSwitchC.o() : null, ((-8193) & 8) != 0 ? divSwitchC.p() : null, ((-8193) & 16) != 0 ? divSwitchC.A() : null, ((-8193) & 32) != 0 ? divSwitchC.getBackground() : null, ((-8193) & 64) != 0 ? divSwitchC.B() : null, ((-8193) & 128) != 0 ? divSwitchC.b() : null, ((-8193) & 256) != 0 ? divSwitchC.k() : null, ((-8193) & 512) != 0 ? divSwitchC.getExtensions() : null, ((-8193) & 1024) != 0 ? divSwitchC.q() : null, ((-8193) & 2048) != 0 ? divSwitchC.y() : null, ((-8193) & 4096) != 0 ? divSwitchC.getHeight() : null, ((-8193) & 8192) != 0 ? divSwitchC.getId() : str, ((-8193) & 16384) != 0 ? divSwitchC.o : null, ((-8193) & 32768) != 0 ? divSwitchC.p : null, ((-8193) & 65536) != 0 ? divSwitchC.v() : null, ((-8193) & 131072) != 0 ? divSwitchC.d() : null, ((-8193) & 262144) != 0 ? divSwitchC.s : null, ((-8193) & 524288) != 0 ? divSwitchC.t() : null, ((-8193) & 1048576) != 0 ? divSwitchC.f() : null, ((-8193) & 2097152) != 0 ? divSwitchC.e() : null, ((-8193) & 4194304) != 0 ? divSwitchC.u() : null, ((-8193) & 8388608) != 0 ? divSwitchC.h() : null, ((-8193) & 16777216) != 0 ? divSwitchC.m() : null, ((-8193) & 33554432) != 0 ? divSwitchC.j() : null, ((-8193) & 67108864) != 0 ? divSwitchC.z() : null, ((-8193) & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? divSwitchC.i() : null, ((-8193) & 268435456) != 0 ? divSwitchC.n() : null, ((-8193) & 536870912) != 0 ? divSwitchC.w() : null, ((-8193) & 1073741824) != 0 ? divSwitchC.c() : null, ((-8193) & Integer.MIN_VALUE) != 0 ? divSwitchC.getVisibility() : null, (7 & 1) != 0 ? divSwitchC.x() : null, (7 & 2) != 0 ? divSwitchC.a() : null, (7 & 4) != 0 ? divSwitchC.getWidth() : null));
    }

    public static Div h(Div div, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = div.b().getId();
        }
        return g(div, str);
    }

    public static final oj3 i(DivCollectionItemBuilder divCollectionItemBuilder, oj3 oj3Var) {
        oj3 oj3VarJ;
        y45.j(divCollectionItemBuilder, "<this>");
        y45.j(oj3Var, "resolver");
        JSONArray jSONArray = (JSONArray) divCollectionItemBuilder.a.b(oj3Var);
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            Object obj = jSONArray.get(i);
            if (obj != null && (oj3VarJ = j(divCollectionItemBuilder, obj, i, oj3Var)) != null) {
                return oj3VarJ;
            }
        }
        return oj3Var;
    }

    public static final oj3 j(DivCollectionItemBuilder divCollectionItemBuilder, Object obj, int i, oj3 oj3Var) {
        ExpressionResolverImpl expressionResolverImplC;
        ExpressionResolverImpl expressionResolverImpl = oj3Var instanceof ExpressionResolverImpl ? (ExpressionResolverImpl) oj3Var : null;
        if (expressionResolverImpl == null) {
            return oj3Var;
        }
        JSONObject jSONObjectS = expressionResolverImpl.s(obj, i);
        if (jSONObjectS == null) {
            return null;
        }
        vf1 vf1Var = new vf1(a.p(abb.a(divCollectionItemBuilder.b, jSONObjectS), abb.a("index", Long.valueOf(i))));
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(':');
        sb.append(i);
        ExpressionResolverImpl expressionResolverImplT = expressionResolverImpl.t(sb.toString(), vf1Var);
        vj3 vj3VarP = expressionResolverImpl.j().p(expressionResolverImplT.i(), null, expressionResolverImplT, expressionResolverImpl);
        if (vj3VarP != null && (expressionResolverImplC = vj3VarP.c()) != null) {
            return expressionResolverImplC;
        }
        xi.i("Failed to acquire ExpressionResolver from store! This may lead to leaks and errors!");
        return expressionResolverImplT;
    }

    public static final List k(DivContainer divContainer) {
        y45.j(divContainer, "<this>");
        List list = divContainer.A;
        return list == null ? y71.k() : list;
    }

    public static final List l(DivCustom divCustom) {
        y45.j(divCustom, "<this>");
        List list = divCustom.q;
        return list == null ? y71.k() : list;
    }

    public static final List m(DivGallery divGallery) {
        y45.j(divGallery, "<this>");
        List list = divGallery.u;
        return list == null ? y71.k() : list;
    }

    public static final List n(DivGrid divGrid) {
        y45.j(divGrid, "<this>");
        List list = divGrid.y;
        return list == null ? y71.k() : list;
    }

    public static final List o(DivPager divPager) {
        y45.j(divPager, "<this>");
        List list = divPager.t;
        return list == null ? y71.k() : list;
    }

    public static final List p(DivGrid divGrid, oj3 oj3Var) {
        y45.j(divGrid, "<this>");
        y45.j(oj3Var, "resolver");
        return s(n(divGrid), oj3Var);
    }

    public static final List q(DivTabs divTabs, oj3 oj3Var) {
        y45.j(divTabs, "<this>");
        y45.j(oj3Var, "resolver");
        List list = divTabs.q;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(t(((DivTabs.Item) it.next()).a, oj3Var));
        }
        return arrayList;
    }

    public static final List r(DivState divState, oj3 oj3Var) {
        y45.j(divState, "<this>");
        y45.j(oj3Var, "resolver");
        List list = divState.y;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Div div = ((DivState.State) it.next()).c;
            zl2 zl2VarT = div != null ? t(div, oj3Var) : null;
            if (zl2VarT != null) {
                arrayList.add(zl2VarT);
            }
        }
        return arrayList;
    }

    public static final List s(List list, oj3 oj3Var) {
        y45.j(list, "<this>");
        y45.j(oj3Var, "resolver");
        List list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(t((Div) it.next(), oj3Var));
        }
        return arrayList;
    }

    public static final zl2 t(Div div, oj3 oj3Var) {
        y45.j(div, "<this>");
        y45.j(oj3Var, "resolver");
        return new zl2(div, oj3Var);
    }
}
