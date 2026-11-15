package com.yandex.div.core.state;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import com.transsion.livecaption.constant.ICode;
import com.yandex.div.core.view2.divs.widgets.DivStateLayout;
import com.yandex.div2.Div;
import com.yandex.div2.DivData;
import com.yandex.div2.DivState;
import com.yandex.div2.DivTabs;
import defpackage.bh2;
import defpackage.c74;
import defpackage.e74;
import defpackage.i81;
import defpackage.oj3;
import defpackage.x71;
import defpackage.y45;
import defpackage.z71;
import defpackage.zl2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;

public final class DivPathUtils {
    public static final DivPathUtils a = new DivPathUtils();

    public static Div f(DivPathUtils divPathUtils, Iterable iterable, String str, oj3 oj3Var, e74 e74Var, int i, Object obj) {
        if ((i & 4) != 0) {
            e74Var = new e74() {
                @Override
                public final Div invoke(Object obj2) {
                    return (Div) obj2;
                }
            };
        }
        return divPathUtils.e(iterable, str, oj3Var, e74Var);
    }

    public static String i(DivPathUtils divPathUtils, DivState divState, c74 c74Var, int i, Object obj) {
        if ((i & 1) != 0) {
            c74Var = null;
        }
        return divPathUtils.h(divState, c74Var);
    }

    public final List a(List list) {
        List listE;
        y45.j(list, "paths");
        if (list.isEmpty()) {
            return list;
        }
        List listT0 = i81.T0(list, DivStatePath.f.c());
        List<DivStatePath> list2 = listT0;
        Object objO0 = i81.o0(listT0);
        int iV = z71.v(list2, 9);
        if (iV == 0) {
            listE = x71.e(objO0);
        } else {
            ArrayList arrayList = new ArrayList(iV + 1);
            arrayList.add(objO0);
            Object obj = objO0;
            for (DivStatePath divStatePath : list2) {
                DivStatePath divStatePath2 = (DivStatePath) obj;
                if (!divStatePath2.l(divStatePath)) {
                    divStatePath2 = divStatePath;
                }
                arrayList.add(divStatePath2);
                obj = divStatePath2;
            }
            listE = arrayList;
        }
        return i81.e0(listE);
    }

    public final Div b(Div div, String str, oj3 oj3Var) {
        if (div instanceof Div.n) {
            Div.n nVar = (Div.n) div;
            if (!y45.e(i(a, nVar.c(), null, 1, null), str)) {
                div = null;
            }
            Div.n nVar2 = (Div.n) div;
            return nVar2 != null ? nVar2 : e(nVar.c().y, str, oj3Var, new e74() {
                @Override
                public final Div invoke(DivState.State state) {
                    y45.j(state, "it");
                    return state.c;
                }
            });
        }
        if (div instanceof Div.p) {
            return e(((Div.p) div).c().q, str, oj3Var, new e74() {
                @Override
                public final Div invoke(DivTabs.Item item) {
                    y45.j(item, "it");
                    return item.a;
                }
            });
        }
        if (div instanceof Div.b) {
            return d(bh2.c(((Div.b) div).c(), oj3Var), str);
        }
        if (div instanceof Div.f) {
            return f(this, bh2.n(((Div.f) div).c()), str, oj3Var, null, 4, null);
        }
        if (div instanceof Div.d) {
            return d(bh2.d(((Div.d) div).c(), oj3Var), str);
        }
        if (div instanceof Div.j) {
            return d(bh2.e(((Div.j) div).c(), oj3Var), str);
        }
        if (div instanceof Div.c) {
            List list = ((Div.c) div).c().q;
            if (list != null) {
                return f(this, list, str, oj3Var, null, 4, null);
            }
            return null;
        }
        if ((div instanceof Div.q) || (div instanceof Div.g) || (div instanceof Div.m) || (div instanceof Div.i) || (div instanceof Div.e) || (div instanceof Div.h) || (div instanceof Div.l) || (div instanceof Div.k) || (div instanceof Div.r) || (div instanceof Div.o)) {
            return null;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final Div c(Div div, DivStatePath divStatePath, oj3 oj3Var) {
        y45.j(div, "<this>");
        y45.j(divStatePath, "path");
        y45.j(oj3Var, "resolver");
        List listI = divStatePath.i();
        if (listI.isEmpty()) {
            return null;
        }
        Iterator it = listI.iterator();
        while (it.hasNext()) {
            String str = (String) ((Pair) it.next()).component1();
            if (div == null || (div = a.b(div, str, oj3Var)) == null) {
                return null;
            }
        }
        return div;
    }

    public final Div d(Iterable iterable, String str) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            zl2 zl2Var = (zl2) it.next();
            Div divB = a.b(zl2Var.a(), str, zl2Var.b());
            if (divB != null) {
                return divB;
            }
        }
        return null;
    }

    public final Div e(Iterable iterable, String str, oj3 oj3Var, e74 e74Var) {
        Div divB;
        Iterator it = iterable.iterator();
        do {
            divB = null;
            if (!it.hasNext()) {
                break;
            }
            Div div = (Div) e74Var.invoke(it.next());
            if (div != null) {
                divB = a.b(div, str, oj3Var);
            }
        } while (divB == null);
        return divB;
    }

    public final DivStateLayout g(View view, DivStatePath divStatePath) throws StateConflictException {
        y45.j(view, "<this>");
        y45.j(divStatePath, "path");
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof DivStateLayout) {
            DivStateLayout divStateLayout = (DivStateLayout) view;
            DivStatePath path = divStateLayout.getPath();
            if (y45.e(path != null ? path.h() : null, divStatePath.h())) {
                return divStateLayout;
            }
        }
        Iterator it = ViewGroupKt.getChildren((ViewGroup) view).iterator();
        DivStateLayout divStateLayout2 = null;
        while (it.hasNext()) {
            DivStateLayout divStateLayoutG = g((View) it.next(), divStatePath);
            if (divStateLayoutG != null) {
                if (y45.e(String.valueOf(divStateLayout2 != null ? divStateLayout2.getPath() : null), String.valueOf(divStateLayoutG.getPath()))) {
                    throw new StateConflictException("Error resolving state for '" + divStatePath + "'. Found multiple elements that respond to path '" + divStateLayoutG.getPath() + "'!", null, 2, null);
                }
                divStateLayout2 = divStateLayoutG;
            }
        }
        return divStateLayout2;
    }

    public final String h(DivState divState, c74 c74Var) {
        y45.j(divState, "<this>");
        String str = divState.l;
        if (str != null) {
            return str;
        }
        String id = divState.getId();
        if (id != null) {
            return id;
        }
        if (c74Var != null) {
            c74Var.invoke();
        }
        return "";
    }

    public final Pair j(View view, DivData.State state, DivStatePath divStatePath, oj3 oj3Var) throws StateConflictException {
        Div.n div;
        y45.j(view, "<this>");
        y45.j(state, ICode.CALL.CALL_KEY_STATE);
        y45.j(divStatePath, "path");
        y45.j(oj3Var, "resolver");
        DivStateLayout divStateLayoutG = g(view, divStatePath);
        if (divStateLayoutG == null) {
            DivStatePath divStatePathN = divStatePath.n();
            if ((divStatePathN.m() && state.b == divStatePath.k()) || g(view, divStatePathN) == null) {
                return null;
            }
        }
        if (divStateLayoutG == null || (div = divStateLayoutG.getDiv()) == null) {
            Div divC = c(state.a, divStatePath, oj3Var);
            div = divC instanceof Div.n ? (Div.n) divC : null;
            if (div == null) {
                return null;
            }
        }
        return new Pair(divStateLayoutG, div);
    }
}
