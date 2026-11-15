package defpackage;

import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div2.Div;
import com.yandex.div2.DivContainer;
import com.yandex.div2.DivCustom;
import com.yandex.div2.DivData;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;

public final class hh2 {
    public static final hh2 a = new hh2();

    public static boolean b(hh2 hh2Var, List list, List list2, ih2 ih2Var, int i, Object obj) {
        if ((i & 4) != 0) {
            ih2Var = null;
        }
        return hh2Var.a(list, list2, ih2Var);
    }

    public static boolean d(hh2 hh2Var, Div div, Div div2, oj3 oj3Var, oj3 oj3Var2, ih2 ih2Var, int i, Object obj) {
        if ((i & 16) != 0) {
            ih2Var = null;
        }
        return hh2Var.c(div, div2, oj3Var, oj3Var2, ih2Var);
    }

    public static boolean f(hh2 hh2Var, og2 og2Var, og2 og2Var2, oj3 oj3Var, oj3 oj3Var2, ih2 ih2Var, int i, Object obj) {
        if ((i & 16) != 0) {
            ih2Var = null;
        }
        return hh2Var.e(og2Var, og2Var2, oj3Var, oj3Var2, ih2Var);
    }

    public final boolean a(List list, List list2, ih2 ih2Var) {
        y45.j(list, "oldChildren");
        y45.j(list2, "newChildren");
        if (list.size() != list2.size()) {
            if (ih2Var != null) {
                ih2Var.v();
            }
            return false;
        }
        List<Pair> listL1 = i81.l1(list, list2);
        if (!(listL1 instanceof Collection) || !listL1.isEmpty()) {
            for (Pair pair : listL1) {
                if (!a.c(((zl2) pair.getFirst()).c(), ((zl2) pair.getSecond()).c(), ((zl2) pair.getFirst()).d(), ((zl2) pair.getSecond()).d(), ih2Var)) {
                    return false;
                }
            }
        }
        return true;
    }

    public final boolean c(Div div, Div div2, oj3 oj3Var, oj3 oj3Var2, ih2 ih2Var) {
        y45.j(oj3Var, "oldResolver");
        y45.j(oj3Var2, "newResolver");
        if (!y45.e(div != null ? div.getClass() : null, div2 != null ? div2.getClass() : null)) {
            if (ih2Var != null) {
                ih2Var.g();
            }
            return false;
        }
        if (div == null || div2 == null || div == div2) {
            return true;
        }
        return e(div.b(), div2.b(), oj3Var, oj3Var2, ih2Var) && a(g(div, oj3Var), g(div2, oj3Var2), ih2Var);
    }

    public final boolean e(og2 og2Var, og2 og2Var2, oj3 oj3Var, oj3 oj3Var2, ih2 ih2Var) {
        y45.j(og2Var, "old");
        y45.j(og2Var2, "new");
        y45.j(oj3Var, "oldResolver");
        y45.j(oj3Var2, "newResolver");
        if (og2Var.getId() != null && og2Var2.getId() != null && !y45.e(og2Var.getId(), og2Var2.getId()) && (h(og2Var) || h(og2Var2))) {
            if (ih2Var != null) {
                ih2Var.f();
            }
            return false;
        }
        if ((og2Var instanceof DivCustom) && (og2Var2 instanceof DivCustom) && !y45.e(((DivCustom) og2Var).j, ((DivCustom) og2Var2).j)) {
            if (ih2Var != null) {
                ih2Var.x();
            }
            return false;
        }
        if (!(og2Var instanceof DivContainer) || !(og2Var2 instanceof DivContainer)) {
            return true;
        }
        DivContainer divContainer = (DivContainer) og2Var;
        DivContainer divContainer2 = (DivContainer) og2Var2;
        if (k(divContainer, oj3Var) != k(divContainer2, oj3Var2)) {
            if (ih2Var != null) {
                ih2Var.u();
            }
            return false;
        }
        if (BaseDivViewExtensionsKt.l0(divContainer, oj3Var) == BaseDivViewExtensionsKt.l0(divContainer2, oj3Var2)) {
            return true;
        }
        if (ih2Var != null) {
            ih2Var.r();
        }
        return false;
    }

    public final List g(Div div, oj3 oj3Var) {
        if (div instanceof Div.b) {
            return bh2.c(((Div.b) div).c(), oj3Var);
        }
        if (div instanceof Div.f) {
            return bh2.p(((Div.f) div).c(), oj3Var);
        }
        if (!(div instanceof Div.g) && !(div instanceof Div.e) && !(div instanceof Div.q) && !(div instanceof Div.l) && !(div instanceof Div.d) && !(div instanceof Div.j) && !(div instanceof Div.p) && !(div instanceof Div.n) && !(div instanceof Div.c) && !(div instanceof Div.i) && !(div instanceof Div.k) && !(div instanceof Div.h) && !(div instanceof Div.m) && !(div instanceof Div.r) && !(div instanceof Div.o)) {
            throw new NoWhenBranchMatchedException();
        }
        return y71.k();
    }

    public final boolean h(og2 og2Var) {
        return (og2Var.z() == null && og2Var.i() == null && og2Var.j() == null) ? false : true;
    }

    public final boolean i(DivData divData, DivData divData2, long j, oj3 oj3Var, oj3 oj3Var2, ih2 ih2Var) {
        Object obj;
        Object next;
        y45.j(divData2, "new");
        y45.j(oj3Var, "oldResolver");
        y45.j(oj3Var2, "newResolver");
        if (divData == null) {
            if (ih2Var != null) {
                ih2Var.k();
            }
            return false;
        }
        Iterator it = divData.c.iterator();
        do {
            obj = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((DivData.State) next).b != j);
        DivData.State state = (DivData.State) next;
        for (Object obj2 : divData2.c) {
            if (((DivData.State) obj2).b == j) {
                obj = obj2;
                break;
            }
        }
        DivData.State state2 = (DivData.State) obj;
        if (state == null || state2 == null) {
            if (ih2Var != null) {
                ih2Var.m();
            }
            return false;
        }
        boolean zC = c(state.a, state2.a, oj3Var, oj3Var2, ih2Var);
        if (zC && ih2Var != null) {
            ih2Var.d();
        }
        return zC;
    }

    public final boolean k(DivContainer divContainer, oj3 oj3Var) {
        return divContainer.G.b(oj3Var) == DivContainer.Orientation.OVERLAP;
    }
}
