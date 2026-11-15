package com.therouter.inject;

import com.therouter.TheRouterKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

public abstract class RouterInjectKt {

    private static final RecyclerBin f39783a = new RecyclerBin();

    private static final void b(String str, Function0 function0) {
        TheRouterKt.c("RouterInject", str, function0);
    }

    static void c(String str, Function0 function0, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function0 = new Function0<Unit>() {
                public final void m305invoke() {
                }

                @Override
                public Object invoke() {
                    m305invoke();
                    return Unit.f64096a;
                }
            };
        }
        b(str, function0);
    }
}
