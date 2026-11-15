package com.yandex.div.evaluable;

import defpackage.e74;
import defpackage.l84;
import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class LocalFunctionProvider implements l84 {
    public final List a;

    public LocalFunctionProvider(List list) {
        y45.j(list, "functions");
        this.a = list;
    }

    @Override
    public Function a(String str, final List list) {
        y45.j(str, "name");
        y45.j(list, "args");
        Function functionC = c(str, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override
            public final Function.c invoke(Function function) {
                y45.j(function, "$this$findFunction");
                return function.k(list);
            }
        });
        if (functionC != null) {
            return functionC;
        }
        Function functionC2 = c(str, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override
            public final Function.c invoke(Function function) {
                y45.j(function, "$this$findFunction");
                return function.l(list);
            }
        });
        if (functionC2 != null) {
            return functionC2;
        }
        throw new MissingLocalFunctionException(str, list);
    }

    @Override
    public Function b(String str, final List list) {
        y45.j(str, "name");
        y45.j(list, "args");
        Function functionC = c(str, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override
            public final Function.c invoke(Function function) {
                y45.j(function, "$this$findFunction");
                return function.k(list);
            }
        });
        if (functionC != null) {
            return functionC;
        }
        Function functionC2 = c(str, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override
            public final Function.c invoke(Function function) {
                y45.j(function, "$this$findFunction");
                return function.l(list);
            }
        });
        if (functionC2 != null) {
            return functionC2;
        }
        throw new MissingLocalFunctionException(str, list);
    }

    public final Function c(String str, e74 e74Var) {
        List list = this.a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            Function function = (Function) obj;
            if (y45.e(function.f(), str) && y45.e(e74Var.invoke(function), Function.c.C0295c.a)) {
                arrayList.add(obj);
            }
        }
        int size = arrayList.size();
        if (size == 0) {
            return null;
        }
        if (size == 1) {
            return (Function) arrayList.get(0);
        }
        throw new EvaluableException("Function " + arrayList.get(0) + " declared multiple times.", null, 2, null);
    }
}
