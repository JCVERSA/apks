package com.yandex.div.core.view2.divs;

import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.internal.core.DivTreeVisitor;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.Div;
import com.yandex.div2.DivData;
import com.yandex.div2.DivFixedSize;
import com.yandex.div2.DivSize;
import defpackage.e74;
import defpackage.og2;
import defpackage.oj3;
import defpackage.qj3;
import defpackage.y45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.List;

public final class DivLayoutProviderVariablesHolder extends DivTreeVisitor implements qj3 {
    public final List c;
    public final List d;

    /* JADX WARN: Multi-variable type inference failed */
    public DivLayoutProviderVariablesHolder() {
        super(null, 1, 0 == true ? 1 : 0);
        this.c = new ArrayList();
        this.d = new ArrayList();
    }

    public final boolean A(String str) {
        y45.j(str, "variable");
        return this.c.contains(str);
    }

    public void B(Div div, com.yandex.div.core.view2.a aVar, DivStatePath divStatePath) {
        y45.j(div, "data");
        y45.j(aVar, "context");
        y45.j(divStatePath, "path");
        E(div.b(), aVar.b());
    }

    public final void C(DivSize divSize, oj3 oj3Var) {
        Object objB = divSize.b();
        DivFixedSize divFixedSize = objB instanceof DivFixedSize ? (DivFixedSize) objB : null;
        if (divFixedSize == null) {
            return;
        }
        Expression expression = divFixedSize.b;
        final Expression.MutableExpression mutableExpression = expression instanceof Expression.MutableExpression ? (Expression.MutableExpression) expression : null;
        if (mutableExpression == null) {
            return;
        }
        addSubscription(mutableExpression.e(oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Number) obj).longValue());
                return zfb.a;
            }

            public final void invoke(long j) {
                this.this$0.c.addAll(mutableExpression.i());
            }
        }));
    }

    public final void D(DivData divData, com.yandex.div.core.view2.a aVar) {
        y45.j(divData, "data");
        y45.j(aVar, "context");
        for (DivData.State state : divData.c) {
            x(state.a, aVar, DivStatePath.f.j(state));
        }
    }

    public final void E(og2 og2Var, oj3 oj3Var) {
        C(og2Var.getWidth(), oj3Var);
        C(og2Var.getHeight(), oj3Var);
    }

    @Override
    public Object c(Div div, com.yandex.div.core.view2.a aVar, DivStatePath divStatePath) {
        B(div, aVar, divStatePath);
        return zfb.a;
    }

    @Override
    public List getSubscriptions() {
        return this.d;
    }

    public final void z() {
        this.c.clear();
    }
}
