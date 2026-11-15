package com.yandex.div.core.expression.local;

import com.yandex.div.core.expression.ExpressionResolverImpl;
import defpackage.c74;
import defpackage.m84;
import defpackage.snb;
import defpackage.vj3;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/yandex/div/core/expression/ExpressionResolverImpl$a;", "invoke", "()Lcom/yandex/div/core/expression/ExpressionResolverImpl$a;", "<anonymous>"}, k = 3, mv = {1, 8, 0})
public final class RuntimeStore$onCreateCallback$2 extends Lambda implements c74 {
    final RuntimeStore this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RuntimeStore$onCreateCallback$2(RuntimeStore runtimeStore) {
        super(0);
        this.this$0 = runtimeStore;
    }

    public static final void b(RuntimeStore runtimeStore, ExpressionResolverImpl expressionResolverImpl, snb snbVar, m84 m84Var) {
        y45.j(runtimeStore, "this$0");
        y45.j(expressionResolverImpl, "resolver");
        y45.j(snbVar, "variableController");
        y45.j(m84Var, "functionProvider");
        runtimeStore.m(new vj3(expressionResolverImpl, snbVar, null, m84Var, runtimeStore));
    }

    @Override
    public final ExpressionResolverImpl.a invoke() {
        final RuntimeStore runtimeStore = this.this$0;
        return new ExpressionResolverImpl.a() {
            @Override
            public final void a(ExpressionResolverImpl expressionResolverImpl, snb snbVar, m84 m84Var) {
                RuntimeStore$onCreateCallback$2.b(runtimeStore, expressionResolverImpl, snbVar, m84Var);
            }
        };
    }
}
