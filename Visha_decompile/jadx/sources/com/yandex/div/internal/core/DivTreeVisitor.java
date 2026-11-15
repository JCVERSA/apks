package com.yandex.div.internal.core;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.state.DivPathUtils;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div2.Div;
import com.yandex.div2.DivState;
import com.yandex.div2.DivTabs;
import defpackage.bh2;
import defpackage.c74;
import defpackage.e74;
import defpackage.xt2;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import defpackage.zl2;
import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Triple;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class DivTreeVisitor {
    public final e74 b;

    public DivTreeVisitor(e74 e74Var) {
        this.b = e74Var;
    }

    public abstract Object c(Div div, a aVar, DivStatePath divStatePath);

    public Object d(Div div, a aVar, DivStatePath divStatePath, c74 c74Var) {
        e74 e74Var;
        y45.j(div, "data");
        y45.j(aVar, "context");
        y45.j(divStatePath, "path");
        y45.j(c74Var, "items");
        Object objC = c(div, aVar, divStatePath);
        e74 e74Var2 = this.b;
        if (e74Var2 != null && ((Boolean) e74Var2.invoke(objC)).booleanValue()) {
            return objC;
        }
        for (Triple triple : (Iterable) c74Var.invoke()) {
            Object objX = x((Div) triple.component1(), (a) triple.component2(), (DivStatePath) triple.component3());
            if (objX != null && (e74Var = this.b) != null && ((Boolean) e74Var.invoke(objX)).booleanValue()) {
                return objX;
            }
        }
        return objC;
    }

    public final List e(List list, a aVar, DivStatePath divStatePath) {
        List list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        int i = 0;
        for (Object obj : list2) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            Div div = (Div) obj;
            arrayList.add(new Triple(div, aVar, BaseDivViewExtensionsKt.o0(div.b(), i, divStatePath)));
            i = i2;
        }
        return arrayList;
    }

    public final List f(List list, a aVar, DivStatePath divStatePath) {
        List list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        int i = 0;
        for (Object obj : list2) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            zl2 zl2Var = (zl2) obj;
            arrayList.add(new Triple(zl2Var.c(), aVar.c(zl2Var.d()), BaseDivViewExtensionsKt.o0(zl2Var.c().b(), i, divStatePath)));
            i = i2;
        }
        return arrayList;
    }

    public Object g(final Div.b bVar, final a aVar, final DivStatePath divStatePath) {
        y45.j(bVar, "data");
        y45.j(aVar, "context");
        y45.j(divStatePath, "path");
        return d(bVar, aVar, divStatePath, new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final List<Triple<Div, a, DivStatePath>> invoke() {
                return this.this$0.f(bh2.c(bVar.c(), aVar.b()), aVar, divStatePath);
            }
        });
    }

    public Object h(final Div.c cVar, final a aVar, final DivStatePath divStatePath) {
        y45.j(cVar, "data");
        y45.j(aVar, "context");
        y45.j(divStatePath, "path");
        return d(cVar, aVar, divStatePath, new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final List<Triple<Div, a, DivStatePath>> invoke() {
                return this.this$0.e(bh2.l(cVar.c()), aVar, divStatePath);
            }
        });
    }

    public Object i(final Div.d dVar, final a aVar, final DivStatePath divStatePath) {
        y45.j(dVar, "data");
        y45.j(aVar, "context");
        y45.j(divStatePath, "path");
        return d(dVar, aVar, divStatePath, new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final List<Triple<Div, a, DivStatePath>> invoke() {
                return this.this$0.f(bh2.d(dVar.c(), aVar.b()), aVar, divStatePath);
            }
        });
    }

    public Object j(Div.e eVar, a aVar, DivStatePath divStatePath) {
        y45.j(eVar, "data");
        y45.j(aVar, "context");
        y45.j(divStatePath, "path");
        return c(eVar, aVar, divStatePath);
    }

    public Object k(final Div.f fVar, final a aVar, final DivStatePath divStatePath) {
        y45.j(fVar, "data");
        y45.j(aVar, "context");
        y45.j(divStatePath, "path");
        return d(fVar, aVar, divStatePath, new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final List<Triple<Div, a, DivStatePath>> invoke() {
                return this.this$0.e(bh2.n(fVar.c()), aVar, divStatePath);
            }
        });
    }

    public Object l(Div.g gVar, a aVar, DivStatePath divStatePath) {
        y45.j(gVar, "data");
        y45.j(aVar, "context");
        y45.j(divStatePath, "path");
        return c(gVar, aVar, divStatePath);
    }

    public Object m(Div.h hVar, a aVar, DivStatePath divStatePath) {
        y45.j(hVar, "data");
        y45.j(aVar, "context");
        y45.j(divStatePath, "path");
        return c(hVar, aVar, divStatePath);
    }

    public Object n(Div.i iVar, a aVar, DivStatePath divStatePath) {
        y45.j(iVar, "data");
        y45.j(aVar, "context");
        y45.j(divStatePath, "path");
        return c(iVar, aVar, divStatePath);
    }

    public Object o(final Div.j jVar, final a aVar, final DivStatePath divStatePath) {
        y45.j(jVar, "data");
        y45.j(aVar, "context");
        y45.j(divStatePath, "path");
        return d(jVar, aVar, divStatePath, new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final List<Triple<Div, a, DivStatePath>> invoke() {
                return this.this$0.f(bh2.e(jVar.c(), aVar.b()), aVar, divStatePath);
            }
        });
    }

    public Object p(Div.k kVar, a aVar, DivStatePath divStatePath) {
        y45.j(kVar, "data");
        y45.j(aVar, "context");
        y45.j(divStatePath, "path");
        return c(kVar, aVar, divStatePath);
    }

    public Object q(Div.l lVar, a aVar, DivStatePath divStatePath) {
        y45.j(lVar, "data");
        y45.j(aVar, "context");
        y45.j(divStatePath, "path");
        return c(lVar, aVar, divStatePath);
    }

    public Object r(Div.m mVar, a aVar, DivStatePath divStatePath) {
        y45.j(mVar, "data");
        y45.j(aVar, "context");
        y45.j(divStatePath, "path");
        return c(mVar, aVar, divStatePath);
    }

    public Object s(final Div.n nVar, final a aVar, final DivStatePath divStatePath) {
        y45.j(nVar, "data");
        y45.j(aVar, "context");
        y45.j(divStatePath, "path");
        return d(nVar, aVar, divStatePath, new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final List<Triple<Div, a, DivStatePath>> invoke() {
                List<DivState.State> list = nVar.c().y;
                a aVar2 = aVar;
                DivStatePath divStatePath2 = divStatePath;
                Div.n nVar2 = nVar;
                ArrayList arrayList = new ArrayList();
                for (DivState.State state : list) {
                    Div div = state.c;
                    Triple triple = div != null ? new Triple(div, aVar2, divStatePath2.b(DivPathUtils.i(DivPathUtils.a, nVar2.c(), null, 1, null), state.d)) : null;
                    if (triple != null) {
                        arrayList.add(triple);
                    }
                }
                return arrayList;
            }
        });
    }

    public Object t(Div.o oVar, a aVar, DivStatePath divStatePath) {
        y45.j(oVar, "data");
        y45.j(aVar, "context");
        y45.j(divStatePath, "path");
        return c(oVar, aVar, divStatePath);
    }

    public Object u(final Div.p pVar, final a aVar, final DivStatePath divStatePath) {
        y45.j(pVar, "data");
        y45.j(aVar, "context");
        y45.j(divStatePath, "path");
        return d(pVar, aVar, divStatePath, new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final List<Triple<Div, a, DivStatePath>> invoke() {
                List list = pVar.c().q;
                a aVar2 = aVar;
                DivStatePath divStatePath2 = divStatePath;
                ArrayList arrayList = new ArrayList(z71.v(list, 10));
                int i = 0;
                for (Object obj : list) {
                    int i2 = i + 1;
                    if (i < 0) {
                        y71.u();
                    }
                    Div div = ((DivTabs.Item) obj).a;
                    arrayList.add(new Triple(div, aVar2, BaseDivViewExtensionsKt.o0(div.b(), i, divStatePath2)));
                    i = i2;
                }
                return arrayList;
            }
        });
    }

    public Object v(Div.q qVar, a aVar, DivStatePath divStatePath) {
        y45.j(qVar, "data");
        y45.j(aVar, "context");
        y45.j(divStatePath, "path");
        return c(qVar, aVar, divStatePath);
    }

    public Object w(Div.r rVar, a aVar, DivStatePath divStatePath) {
        y45.j(rVar, "data");
        y45.j(aVar, "context");
        y45.j(divStatePath, "path");
        return c(rVar, aVar, divStatePath);
    }

    public final Object x(Div div, a aVar, DivStatePath divStatePath) {
        y45.j(div, TtmlNode.TAG_DIV);
        y45.j(aVar, "parentContext");
        y45.j(divStatePath, "path");
        a aVarA = xt2.a(aVar, div, divStatePath);
        if (div instanceof Div.q) {
            return v((Div.q) div, aVarA, divStatePath);
        }
        if (div instanceof Div.g) {
            return l((Div.g) div, aVarA, divStatePath);
        }
        if (div instanceof Div.e) {
            return j((Div.e) div, aVarA, divStatePath);
        }
        if (div instanceof Div.l) {
            return q((Div.l) div, aVarA, divStatePath);
        }
        if (div instanceof Div.b) {
            return g((Div.b) div, aVarA, divStatePath);
        }
        if (div instanceof Div.f) {
            return k((Div.f) div, aVarA, divStatePath);
        }
        if (div instanceof Div.d) {
            return i((Div.d) div, aVarA, divStatePath);
        }
        if (div instanceof Div.j) {
            return o((Div.j) div, aVarA, divStatePath);
        }
        if (div instanceof Div.p) {
            return u((Div.p) div, aVarA, divStatePath);
        }
        if (div instanceof Div.n) {
            return s((Div.n) div, aVarA, divStatePath);
        }
        if (div instanceof Div.c) {
            return h((Div.c) div, aVarA, divStatePath);
        }
        if (div instanceof Div.h) {
            return m((Div.h) div, aVarA, divStatePath);
        }
        if (div instanceof Div.m) {
            return r((Div.m) div, aVarA, divStatePath);
        }
        if (div instanceof Div.i) {
            return n((Div.i) div, aVarA, divStatePath);
        }
        if (div instanceof Div.k) {
            return p((Div.k) div, aVarA, divStatePath);
        }
        if (div instanceof Div.r) {
            return w((Div.r) div, aVarA, divStatePath);
        }
        if (div instanceof Div.o) {
            return t((Div.o) div, aVarA, divStatePath);
        }
        throw new NoWhenBranchMatchedException();
    }

    public DivTreeVisitor(e74 e74Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : e74Var);
    }
}
