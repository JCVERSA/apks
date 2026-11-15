package com.yandex.div.core.expression.triggers;

import com.yandex.div.core.expression.triggers.TriggerExecutor;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.divs.DivActionBinder;
import com.yandex.div.evaluable.EvaluableException;
import com.yandex.div.evaluable.Evaluator;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivAction;
import com.yandex.div2.DivTrigger;
import defpackage.e74;
import defpackage.gd2;
import defpackage.hb0;
import defpackage.oj3;
import defpackage.qc2;
import defpackage.qnb;
import defpackage.snb;
import defpackage.sv2;
import defpackage.w08;
import defpackage.wc3;
import defpackage.xi;
import defpackage.y45;
import defpackage.zfb;
import java.util.List;

public final class TriggerExecutor {
    public final String a;
    public final com.yandex.div.evaluable.a b;
    public final Evaluator c;
    public final List d;
    public final Expression e;
    public final oj3 f;
    public final snb g;
    public final wc3 h;
    public final gd2 i;
    public final DivActionBinder j;
    public final e74 k;
    public qc2 l;
    public DivTrigger.Mode m;
    public boolean n;
    public qc2 o;
    public qc2 p;
    public qc2 q;
    public sv2 r;

    public static final class a implements w08 {
        public final Div2View a;
        public final TriggerExecutor b;

        public a(Div2View div2View, TriggerExecutor triggerExecutor) {
            this.a = div2View;
            this.b = triggerExecutor;
        }

        @Override
        public void a() {
            this.a.removePersistentDivDataObserver$div_release(this);
            this.b.i();
        }
    }

    public TriggerExecutor(String str, com.yandex.div.evaluable.a aVar, Evaluator evaluator, List list, Expression expression, oj3 oj3Var, snb snbVar, wc3 wc3Var, gd2 gd2Var, DivActionBinder divActionBinder) {
        y45.j(str, "rawExpression");
        y45.j(aVar, "condition");
        y45.j(evaluator, "evaluator");
        y45.j(list, "actions");
        y45.j(expression, hb0.KEY_NAME_MODE);
        y45.j(oj3Var, "resolver");
        y45.j(snbVar, "variableController");
        y45.j(wc3Var, "errorCollector");
        y45.j(gd2Var, "logger");
        y45.j(divActionBinder, "divActionBinder");
        this.a = str;
        this.b = aVar;
        this.c = evaluator;
        this.d = list;
        this.e = expression;
        this.f = oj3Var;
        this.g = snbVar;
        this.h = wc3Var;
        this.i = gd2Var;
        this.j = divActionBinder;
        this.k = new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((qnb) obj);
                return zfb.a;
            }

            public final void invoke(qnb qnbVar) {
                y45.j(qnbVar, "<anonymous parameter 0>");
                this.this$0.i();
            }
        };
        this.l = expression.f(oj3Var, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((DivTrigger.Mode) obj);
                return zfb.a;
            }

            public final void invoke(DivTrigger.Mode mode) {
                y45.j(mode, "it");
                this.this$0.m = mode;
            }
        });
        this.m = DivTrigger.Mode.ON_CONDITION;
        qc2 qc2Var = qc2.A1;
        this.o = qc2Var;
        this.p = qc2Var;
        this.q = qc2Var;
    }

    public static final void k(Div2View div2View, a aVar) {
        y45.j(div2View, "$div2View");
        y45.j(aVar, "$observer");
        div2View.removePersistentDivDataObserver$div_release(aVar);
    }

    public final boolean e() throws Exception {
        RuntimeException runtimeException;
        try {
            boolean zBooleanValue = ((Boolean) this.c.d(this.b)).booleanValue();
            boolean z = this.n;
            this.n = zBooleanValue;
            if (zBooleanValue) {
                return (this.m == DivTrigger.Mode.ON_CONDITION && z && zBooleanValue) ? false : true;
            }
            return false;
        } catch (Exception e) {
            if (e instanceof ClassCastException) {
                runtimeException = new RuntimeException("Condition evaluated in non-boolean result! (expression: '" + this.a + "')", e);
            } else {
                if (!(e instanceof EvaluableException)) {
                    throw e;
                }
                runtimeException = new RuntimeException("Condition evaluation failed! (expression: '" + this.a + "')", e);
            }
            this.h.e(runtimeException);
            return false;
        }
    }

    public final void f(sv2 sv2Var) {
        this.r = sv2Var;
        if (sv2Var == null) {
            h();
        } else {
            g();
        }
    }

    public final void g() {
        this.l.close();
        this.o = this.g.c(this.b.f(), false, this.k);
        this.p = this.g.g(this.b.f(), new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((qnb) obj);
                return zfb.a;
            }

            public final void invoke(qnb qnbVar) {
                y45.j(qnbVar, "it");
                this.this$0.h();
            }
        });
        this.l = this.e.f(this.f, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((DivTrigger.Mode) obj);
                return zfb.a;
            }

            public final void invoke(DivTrigger.Mode mode) {
                y45.j(mode, "it");
                this.this$0.m = mode;
            }
        });
        i();
    }

    public final void h() {
        this.l.close();
        this.o.close();
        this.p.close();
        this.q.close();
    }

    public final void i() {
        xi.c();
        sv2 sv2Var = this.r;
        if (sv2Var == null) {
            return;
        }
        boolean z = sv2Var instanceof Div2View;
        Div2View div2View = z ? (Div2View) sv2Var : null;
        if (div2View != null) {
            if (!div2View.getInMiddleOfBind()) {
                div2View = null;
            }
            if (div2View != null) {
                j(div2View);
                return;
            }
        }
        if (e()) {
            for (DivAction divAction : this.d) {
                Div2View div2View2 = z ? (Div2View) sv2Var : null;
                if (div2View2 != null) {
                    this.i.k(div2View2, divAction);
                }
            }
            DivActionBinder.I(this.j, sv2Var, this.f, this.d, "trigger", null, 16, null);
        }
    }

    public final void j(final Div2View div2View) {
        this.q.close();
        final a aVar = new a(div2View, this);
        this.q = new qc2() {
            @Override
            public final void close() {
                TriggerExecutor.k(div2View, aVar);
            }
        };
        div2View.addPersistentDivDataObserver$div_release(aVar);
    }
}
