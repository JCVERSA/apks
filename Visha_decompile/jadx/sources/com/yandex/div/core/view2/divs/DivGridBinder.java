package com.yandex.div.core.view2.divs;

import android.view.View;
import android.view.ViewGroup;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.divs.widgets.DivGridLayout;
import com.yandex.div.internal.widget.DivLayoutParams;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.Div;
import com.yandex.div2.DivAlignmentHorizontal;
import com.yandex.div2.DivAlignmentVertical;
import com.yandex.div2.DivGrid;
import defpackage.ae5;
import defpackage.bh2;
import defpackage.co2;
import defpackage.d81;
import defpackage.e74;
import defpackage.i81;
import defpackage.og2;
import defpackage.oj3;
import defpackage.oj8;
import defpackage.oo8;
import defpackage.qj3;
import defpackage.rg2;
import defpackage.vr8;
import defpackage.wu2;
import defpackage.x71;
import defpackage.xi;
import defpackage.y45;
import defpackage.y71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class DivGridBinder extends wu2 {
    public final DivBaseBinder b;
    public final co2 c;
    public final oj8 d;
    public final oj8 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivGridBinder(DivBaseBinder divBaseBinder, co2 co2Var, oj8 oj8Var, oj8 oj8Var2) {
        super(divBaseBinder);
        y45.j(divBaseBinder, "baseBinder");
        y45.j(co2Var, "divPatchManager");
        y45.j(oj8Var, "divBinder");
        y45.j(oj8Var2, "divViewCreator");
        this.b = divBaseBinder;
        this.c = co2Var;
        this.d = oj8Var;
        this.e = oj8Var2;
    }

    private final List i(ViewGroup viewGroup, com.yandex.div.core.view2.a aVar, Div div, int i) {
        Div2View div2ViewA = aVar.a();
        String id = div.b().getId();
        if (id == null || div2ViewA.getComplexRebindInProgress$div_release()) {
            return x71.e(div);
        }
        Map mapC = this.c.c(aVar, id);
        if (mapC == null) {
            return x71.e(div);
        }
        viewGroup.removeViewAt(i);
        Iterator it = mapC.entrySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            viewGroup.addView((View) ((Map.Entry) it.next()).getValue(), i2 + i, new DivLayoutParams(-2, -2));
            i2++;
        }
        return i81.b1(mapC.keySet());
    }

    public final void g(View view, oj3 oj3Var, Expression expression) {
        int i;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        DivLayoutParams divLayoutParams = layoutParams instanceof DivLayoutParams ? (DivLayoutParams) layoutParams : null;
        if (divLayoutParams == null) {
            return;
        }
        if (expression != null) {
            long jLongValue = ((Number) expression.b(oj3Var)).longValue();
            long j = jLongValue >> 31;
            if (j == 0 || j == -1) {
                i = (int) jLongValue;
            } else {
                ae5 ae5Var = ae5.a;
                if (xi.o()) {
                    xi.i("Unable convert '" + jLongValue + "' to Int");
                }
                i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
        } else {
            i = 1;
        }
        if (divLayoutParams.a() != i) {
            divLayoutParams.l(i);
            view.requestLayout();
        }
    }

    public final void h(View view, oj3 oj3Var, og2 og2Var) {
        g(view, oj3Var, og2Var.b());
        j(view, oj3Var, og2Var.e());
    }

    public final void j(View view, oj3 oj3Var, Expression expression) {
        int i;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        DivLayoutParams divLayoutParams = layoutParams instanceof DivLayoutParams ? (DivLayoutParams) layoutParams : null;
        if (divLayoutParams == null) {
            return;
        }
        if (expression != null) {
            long jLongValue = ((Number) expression.b(oj3Var)).longValue();
            long j = jLongValue >> 31;
            if (j == 0 || j == -1) {
                i = (int) jLongValue;
            } else {
                ae5 ae5Var = ae5.a;
                if (xi.o()) {
                    xi.i("Unable convert '" + jLongValue + "' to Int");
                }
                i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
        } else {
            i = 1;
        }
        if (divLayoutParams.g() != i) {
            divLayoutParams.q(i);
            view.requestLayout();
        }
    }

    @Override
    public void a(final DivGridLayout divGridLayout, com.yandex.div.core.view2.a aVar, DivGrid divGrid, DivGrid divGrid2) {
        y45.j(divGridLayout, "<this>");
        y45.j(aVar, "bindingContext");
        y45.j(divGrid, TtmlNode.TAG_DIV);
        divGridLayout.setReleaseViewVisitor$div_release(aVar.a().getReleaseViewVisitor$div_release());
        BaseDivViewExtensionsKt.j(divGridLayout, aVar, divGrid.b, divGrid.d, divGrid.A, divGrid.q, divGrid.w, divGrid.v, divGrid.E, divGrid.D, divGrid.c, divGrid.r(), divGrid.k);
        divGridLayout.addSubscription(divGrid.l.f(aVar.b(), new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Number) obj).longValue());
                return zfb.a;
            }

            public final void invoke(long j) {
                int i;
                DivGridLayout divGridLayout2 = divGridLayout;
                long j2 = j >> 31;
                if (j2 == 0 || j2 == -1) {
                    i = (int) j;
                } else {
                    ae5 ae5Var = ae5.a;
                    if (xi.o()) {
                        xi.i("Unable convert '" + j + "' to Int");
                    }
                    i = j > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                }
                divGridLayout2.setColumnCount(i);
            }
        }));
        p(divGridLayout, divGrid.n, divGrid.o, aVar.b());
    }

    public final void l(DivGridLayout divGridLayout, com.yandex.div.core.view2.a aVar, DivGrid divGrid, DivGrid divGrid2, DivStatePath divStatePath) {
        List list;
        oj3 oj3VarB = aVar.b();
        List listN = bh2.n(divGrid);
        oo8.a(divGridLayout, aVar.a(), bh2.s(listN, oj3VarB), this.e);
        BaseDivViewExtensionsKt.O0(divGridLayout, aVar.a(), bh2.s(o(divGridLayout, aVar, listN, divStatePath), oj3VarB), (divGrid2 == null || (list = divGrid2.y) == null) ? null : bh2.s(list, oj3VarB));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void m(final View view, final og2 og2Var, final oj3 oj3Var) {
        this.b.F(view, og2Var, null, oj3Var, vr8.a(view));
        h(view, oj3Var, og2Var);
        if (view instanceof qj3) {
            e74 e74Var = new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    m187invoke(obj);
                    return zfb.a;
                }

                public final void m187invoke(Object obj) {
                    y45.j(obj, "<anonymous parameter 0>");
                    this.this$0.h(view, oj3Var, og2Var);
                }
            };
            qj3 qj3Var = (qj3) view;
            Expression expressionB = og2Var.b();
            qj3Var.addSubscription(expressionB != null ? expressionB.e(oj3Var, e74Var) : null);
            Expression expressionE = og2Var.e();
            qj3Var.addSubscription(expressionE != null ? expressionE.e(oj3Var, e74Var) : null);
        }
    }

    public void n(com.yandex.div.core.view2.a aVar, DivGridLayout divGridLayout, Div.f fVar, DivStatePath divStatePath) {
        y45.j(aVar, "context");
        y45.j(divGridLayout, "view");
        y45.j(fVar, TtmlNode.TAG_DIV);
        y45.j(divStatePath, "path");
        super.d(aVar, divGridLayout, fVar, divStatePath);
        DivGrid divGridC = fVar.c();
        Div.f div = divGridLayout.getDiv();
        l(divGridLayout, aVar, divGridC, div != null ? div.c() : null, divStatePath);
    }

    public final List o(DivGridLayout divGridLayout, com.yandex.div.core.view2.a aVar, List list, DivStatePath divStatePath) {
        Div2View div2ViewA = aVar.a();
        oj3 oj3VarB = aVar.b();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = 0;
        int size = 0;
        for (Object obj : list) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                y71.u();
            }
            List listI = i(divGridLayout, aVar, (Div) obj, i2 + size);
            size += listI.size() - 1;
            d81.C(arrayList, listI);
            i2 = i3;
        }
        for (Object obj2 : arrayList) {
            int i4 = i + 1;
            if (i < 0) {
                y71.u();
            }
            Div div = (Div) obj2;
            View childAt = divGridLayout.getChildAt(i);
            og2 og2VarB = div.b();
            DivStatePath divStatePathO0 = BaseDivViewExtensionsKt.o0(og2VarB, i, divStatePath);
            childAt.setLayoutParams(new DivLayoutParams(-2, -2));
            rg2 rg2Var = (rg2) this.d.get();
            y45.i(childAt, "childView");
            rg2Var.b(aVar, childAt, div, divStatePathO0);
            m(childAt, og2VarB, oj3VarB);
            if (BaseDivViewExtensionsKt.b0(og2VarB)) {
                div2ViewA.bindViewToDiv$div_release(childAt, div);
            } else {
                div2ViewA.unbindViewFromDiv$div_release(childAt);
            }
            i = i4;
        }
        return arrayList;
    }

    public final void p(final DivGridLayout divGridLayout, final Expression expression, final Expression expression2, final oj3 oj3Var) {
        divGridLayout.setGravity(BaseDivViewExtensionsKt.O((DivAlignmentHorizontal) expression.b(oj3Var), (DivAlignmentVertical) expression2.b(oj3Var)));
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m188invoke(obj);
                return zfb.a;
            }

            public final void m188invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                divGridLayout.setGravity(BaseDivViewExtensionsKt.O((DivAlignmentHorizontal) expression.b(oj3Var), (DivAlignmentVertical) expression2.b(oj3Var)));
            }
        };
        divGridLayout.addSubscription(expression.e(oj3Var, e74Var));
        divGridLayout.addSubscription(expression2.e(oj3Var, e74Var));
    }

    public final void q(com.yandex.div.core.view2.a aVar, DivGridLayout divGridLayout, Div.f fVar) {
        y45.j(aVar, "bindingContext");
        y45.j(divGridLayout, "view");
        y45.j(fVar, TtmlNode.TAG_DIV);
        divGridLayout.setDiv(fVar);
        List listN = bh2.n(fVar.c());
        int size = listN.size();
        for (int i = 0; i < size; i++) {
            View childAt = divGridLayout.getChildAt(i);
            y45.i(childAt, "childView");
            com.yandex.div.core.view2.a aVarZ = BaseDivViewExtensionsKt.Z(childAt);
            if (aVarZ == null) {
                aVarZ = aVar;
            }
            ((rg2) this.d.get()).w(aVarZ, childAt, (Div) listN.get(i));
        }
    }
}
