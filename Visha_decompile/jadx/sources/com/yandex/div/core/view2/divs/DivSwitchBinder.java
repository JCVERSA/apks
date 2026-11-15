package com.yandex.div.core.view2.divs;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.expression.variables.TwoWayVariableBinder;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.divs.widgets.DivSwitchView;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivSwitch;
import defpackage.e74;
import defpackage.oj3;
import defpackage.uj3;
import defpackage.wu2;
import defpackage.y45;
import defpackage.zfb;

public final class DivSwitchBinder extends wu2 {
    public final com.yandex.div.core.expression.variables.a b;

    public static class a implements TwoWayVariableBinder.a {
        public final DivSwitchView a;

        public a(DivSwitchView divSwitchView) {
            this.a = divSwitchView;
        }

        @Override
        public void b(e74 e74Var) {
            y45.j(e74Var, "valueUpdater");
            this.a.setOnCheckedChangeListener(e74Var);
        }

        @Override
        public void a(Boolean bool) {
            if (bool != null) {
                this.a.setChecked(bool.booleanValue());
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivSwitchBinder(DivBaseBinder divBaseBinder, com.yandex.div.core.expression.variables.a aVar) {
        super(divBaseBinder);
        y45.j(divBaseBinder, "baseBinder");
        y45.j(aVar, "variableBinder");
        this.b = aVar;
    }

    public final void h(DivSwitchView divSwitchView, DivSwitch divSwitch, oj3 oj3Var) {
        divSwitchView.setEnabled(((Boolean) divSwitch.o.b(oj3Var)).booleanValue());
    }

    public final void i(DivSwitchView divSwitchView, DivSwitch divSwitch, oj3 oj3Var) {
        Expression expression = divSwitch.s;
        divSwitchView.setColorOn(expression != null ? (Integer) expression.b(oj3Var) : null);
    }

    @Override
    public void b(DivSwitchView divSwitchView, com.yandex.div.core.view2.a aVar, DivSwitch divSwitch, DivSwitch divSwitch2, DivStatePath divStatePath) {
        y45.j(divSwitchView, "<this>");
        y45.j(aVar, "bindingContext");
        y45.j(divSwitch, TtmlNode.TAG_DIV);
        y45.j(divStatePath, "path");
        k(divSwitchView, divSwitch, divSwitch2, aVar.b());
        l(divSwitchView, divSwitch, divSwitch2, aVar.b());
        m(divSwitchView, divSwitch, aVar, divStatePath);
    }

    public final void k(final DivSwitchView divSwitchView, final DivSwitch divSwitch, DivSwitch divSwitch2, final oj3 oj3Var) {
        if (uj3.b(divSwitch.o, divSwitch2 != null ? divSwitch2.o : null)) {
            return;
        }
        h(divSwitchView, divSwitch, oj3Var);
        if (uj3.d(divSwitch.o)) {
            return;
        }
        divSwitchView.addSubscription(divSwitch.o.e(oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m228invoke(obj);
                return zfb.a;
            }

            public final void m228invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                this.this$0.h(divSwitchView, divSwitch, oj3Var);
            }
        }));
    }

    public final void l(final DivSwitchView divSwitchView, final DivSwitch divSwitch, DivSwitch divSwitch2, final oj3 oj3Var) {
        if (uj3.b(divSwitch.s, divSwitch2 != null ? divSwitch2.s : null)) {
            return;
        }
        i(divSwitchView, divSwitch, oj3Var);
        if (uj3.f(divSwitch.s)) {
            return;
        }
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m229invoke(obj);
                return zfb.a;
            }

            public final void m229invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                this.this$0.i(divSwitchView, divSwitch, oj3Var);
            }
        };
        Expression expression = divSwitch.s;
        divSwitchView.addSubscription(expression != null ? expression.e(oj3Var, e74Var) : null);
    }

    public final void m(DivSwitchView divSwitchView, DivSwitch divSwitch, com.yandex.div.core.view2.a aVar, DivStatePath divStatePath) {
        divSwitchView.addSubscription(this.b.a(aVar, divSwitch.p, new a(divSwitchView), divStatePath));
    }
}
