package com.yandex.div.core.view2.divs;

import android.util.DisplayMetrics;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.expression.variables.TwoWayVariableBinder;
import com.yandex.div.core.expression.variables.c;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.animations.UtilsKt;
import com.yandex.div.core.view2.divs.widgets.DivSelectView;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivFontWeight;
import com.yandex.div2.DivSelect;
import com.yandex.div2.DivSizeUnit;
import defpackage.ae5;
import defpackage.cu2;
import defpackage.du2;
import defpackage.e74;
import defpackage.i81;
import defpackage.oj3;
import defpackage.pc9;
import defpackage.qc2;
import defpackage.wc3;
import defpackage.wu2;
import defpackage.xc3;
import defpackage.xi;
import defpackage.y45;
import defpackage.y71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.sequences.SequencesKt___SequencesKt;

public final class DivSelectBinder extends wu2 {
    public final cu2 b;
    public final c c;
    public final xc3 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivSelectBinder(DivBaseBinder divBaseBinder, cu2 cu2Var, c cVar, xc3 xc3Var) {
        super(divBaseBinder);
        y45.j(divBaseBinder, "baseBinder");
        y45.j(cu2Var, "typefaceResolver");
        y45.j(cVar, "variableBinder");
        y45.j(xc3Var, "errorCollectors");
        this.b = cu2Var;
        this.c = cVar;
        this.d = xc3Var;
    }

    public final void g(final DivSelectView divSelectView, final DivSelect divSelect, final com.yandex.div.core.view2.a aVar) {
        BaseDivViewExtensionsKt.q0(divSelectView, aVar, UtilsKt.e(), null);
        final List<String> listJ = j(divSelectView, divSelect, aVar.b());
        divSelectView.setItems(listJ);
        divSelectView.setOnItemSelectedListener(new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Number) obj).intValue());
                return zfb.a;
            }

            public final void invoke(int i) {
                divSelectView.setText(listJ.get(i));
                e74 valueUpdater = divSelectView.getValueUpdater();
                if (valueUpdater != null) {
                    valueUpdater.invoke(((DivSelect.Option) divSelect.A.get(i)).b.b(aVar.b()));
                }
            }
        });
    }

    public final void h(DivSelectView divSelectView, DivSelect divSelect, oj3 oj3Var) {
        cu2 cu2Var = this.b;
        Expression expression = divSelect.l;
        String str = expression != null ? (String) expression.b(oj3Var) : null;
        DivFontWeight divFontWeight = (DivFontWeight) divSelect.p.b(oj3Var);
        Expression expression2 = divSelect.q;
        divSelectView.setTypeface(du2.a(cu2Var, str, divFontWeight, expression2 != null ? (Long) expression2.b(oj3Var) : null));
    }

    @Override
    public void b(DivSelectView divSelectView, com.yandex.div.core.view2.a aVar, DivSelect divSelect, DivSelect divSelect2, DivStatePath divStatePath) {
        y45.j(divSelectView, "<this>");
        y45.j(aVar, "bindingContext");
        y45.j(divSelect, TtmlNode.TAG_DIV);
        y45.j(divStatePath, "path");
        Div2View div2ViewA = aVar.a();
        oj3 oj3VarB = aVar.b();
        divSelectView.setTextAlignment(5);
        divSelectView.setFocusTracker(div2ViewA.getInputFocusTracker());
        g(divSelectView, divSelect, aVar);
        q(divSelectView, divSelect, aVar, divStatePath);
        k(divSelectView, divSelect, oj3VarB);
        p(divSelectView, divSelect, oj3VarB);
        o(divSelectView, divSelect, oj3VarB);
        n(divSelectView, divSelect, oj3VarB);
        m(divSelectView, divSelect, oj3VarB);
        l(divSelectView, divSelect, oj3VarB);
    }

    public final List j(final DivSelectView divSelectView, DivSelect divSelect, oj3 oj3Var) {
        final ArrayList arrayList = new ArrayList();
        final int i = 0;
        for (Object obj : divSelect.A) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            DivSelect.Option option = (DivSelect.Option) obj;
            Expression expression = option.a;
            if (expression == null) {
                expression = option.b;
            }
            arrayList.add(expression.b(oj3Var));
            expression.e(oj3Var, new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj2) {
                    invoke((String) obj2);
                    return zfb.a;
                }

                public final void invoke(String str) {
                    y45.j(str, "it");
                    arrayList.set(i, str);
                    divSelectView.setItems(arrayList);
                }
            });
            i = i2;
        }
        return arrayList;
    }

    public final void k(final DivSelectView divSelectView, final DivSelect divSelect, final oj3 oj3Var) {
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m213invoke(obj);
                return zfb.a;
            }

            public final void m213invoke(Object obj) {
                int i;
                y45.j(obj, "<anonymous parameter 0>");
                long jLongValue = ((Number) divSelect.m.b(oj3Var)).longValue();
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
                BaseDivViewExtensionsKt.k(divSelectView, i, (DivSizeUnit) divSelect.n.b(oj3Var));
                BaseDivViewExtensionsKt.p(divSelectView, ((Number) divSelect.x.b(oj3Var)).doubleValue(), i);
            }
        };
        divSelectView.addSubscription(divSelect.m.f(oj3Var, e74Var));
        divSelectView.addSubscription(divSelect.x.e(oj3Var, e74Var));
        divSelectView.addSubscription(divSelect.n.e(oj3Var, e74Var));
    }

    public final void l(final DivSelectView divSelectView, DivSelect divSelect, oj3 oj3Var) {
        divSelectView.addSubscription(divSelect.t.f(oj3Var, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Number) obj).intValue());
                return zfb.a;
            }

            public final void invoke(int i) {
                divSelectView.setHintTextColor(i);
            }
        }));
    }

    public final void m(final DivSelectView divSelectView, DivSelect divSelect, oj3 oj3Var) {
        Expression expression = divSelect.u;
        if (expression == null) {
            return;
        }
        divSelectView.addSubscription(expression.f(oj3Var, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((String) obj);
                return zfb.a;
            }

            public final void invoke(String str) {
                y45.j(str, "hint");
                divSelectView.setHint(str);
            }
        }));
    }

    public final void n(final DivSelectView divSelectView, final DivSelect divSelect, final oj3 oj3Var) {
        final Expression expression = divSelect.y;
        if (expression == null) {
            BaseDivViewExtensionsKt.q(divSelectView, null, (DivSizeUnit) divSelect.n.b(oj3Var));
            return;
        }
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m214invoke(obj);
                return zfb.a;
            }

            public final void m214invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                long jLongValue = ((Number) expression.b(oj3Var)).longValue();
                DivSizeUnit divSizeUnit = (DivSizeUnit) divSelect.n.b(oj3Var);
                DivSelectView divSelectView2 = divSelectView;
                Long lValueOf = Long.valueOf(jLongValue);
                DisplayMetrics displayMetrics = divSelectView.getResources().getDisplayMetrics();
                y45.i(displayMetrics, "resources.displayMetrics");
                divSelectView2.setLineHeight(BaseDivViewExtensionsKt.Q0(lValueOf, displayMetrics, divSizeUnit));
                BaseDivViewExtensionsKt.q(divSelectView, Long.valueOf(jLongValue), divSizeUnit);
            }
        };
        divSelectView.addSubscription(expression.f(oj3Var, e74Var));
        divSelectView.addSubscription(divSelect.n.e(oj3Var, e74Var));
    }

    public final void o(final DivSelectView divSelectView, DivSelect divSelect, oj3 oj3Var) {
        divSelectView.addSubscription(divSelect.F.f(oj3Var, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Number) obj).intValue());
                return zfb.a;
            }

            public final void invoke(int i) {
                divSelectView.setTextColor(i);
            }
        }));
    }

    public final void p(final DivSelectView divSelectView, final DivSelect divSelect, final oj3 oj3Var) {
        qc2 qc2VarF;
        h(divSelectView, divSelect, oj3Var);
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m215invoke(obj);
                return zfb.a;
            }

            public final void m215invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                this.this$0.h(divSelectView, divSelect, oj3Var);
            }
        };
        Expression expression = divSelect.l;
        if (expression != null && (qc2VarF = expression.f(oj3Var, e74Var)) != null) {
            divSelectView.addSubscription(qc2VarF);
        }
        divSelectView.addSubscription(divSelect.p.e(oj3Var, e74Var));
        Expression expression2 = divSelect.q;
        divSelectView.addSubscription(expression2 != null ? expression2.e(oj3Var, e74Var) : null);
    }

    public final void q(final DivSelectView divSelectView, final DivSelect divSelect, com.yandex.div.core.view2.a aVar, DivStatePath divStatePath) {
        final oj3 oj3VarB = aVar.b();
        final wc3 wc3VarA = this.d.a(aVar.a().getDataTag(), aVar.a().getDivData());
        divSelectView.addSubscription(this.c.a(aVar, divSelect.M, new TwoWayVariableBinder.a() {
            @Override
            public void b(e74 e74Var) {
                y45.j(e74Var, "valueUpdater");
                divSelectView.setValueUpdater(e74Var);
            }

            @Override
            public void a(final String str) {
                CharSequence charSequence;
                pc9 pc9VarB0 = i81.b0(divSelect.A);
                final oj3 oj3Var = oj3VarB;
                Iterator it = SequencesKt___SequencesKt.F(pc9VarB0, new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public final Boolean invoke(DivSelect.Option option) {
                        y45.j(option, "it");
                        return Boolean.valueOf(y45.e(option.b.b(oj3Var), str));
                    }
                }).iterator();
                DivSelectView divSelectView2 = divSelectView;
                if (it.hasNext()) {
                    DivSelect.Option option = (DivSelect.Option) it.next();
                    if (it.hasNext()) {
                        wc3VarA.f(new Throwable("Multiple options found with value = \"" + str + "\", selecting first one"));
                    }
                    Expression expression = option.a;
                    if (expression == null) {
                        expression = option.b;
                    }
                    charSequence = (CharSequence) expression.b(oj3VarB);
                } else {
                    wc3VarA.f(new Throwable("No option found with value = \"" + str + '\"'));
                    charSequence = "";
                }
                divSelectView2.setText(charSequence);
            }
        }, divStatePath));
    }
}
