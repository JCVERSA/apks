package kotlin.reflect.jvm.internal.impl.util;

import defpackage.de5;
import defpackage.e74;
import defpackage.n37;
import defpackage.y45;
import java.util.Collection;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class TypeRegistry {
    public final ConcurrentHashMap a = new ConcurrentHashMap();
    public final AtomicInteger b = new AtomicInteger(0);

    public abstract int b(ConcurrentHashMap concurrentHashMap, String str, e74 e74Var);

    public final n37 c(de5 de5Var) {
        y45.j(de5Var, "kClass");
        return new n37(de5Var, d(de5Var));
    }

    public final int d(de5 de5Var) {
        y45.j(de5Var, "kClass");
        ConcurrentHashMap concurrentHashMap = this.a;
        String strC = de5Var.c();
        y45.g(strC);
        return b(concurrentHashMap, strC, new e74() {
            {
                super(1);
            }

            @Override
            public final Integer invoke(String str) {
                y45.j(str, "it");
                return Integer.valueOf(this.this$0.b.getAndIncrement());
            }
        });
    }

    public final Collection e() {
        Collection collectionValues = this.a.values();
        y45.i(collectionValues, "idPerType.values");
        return collectionValues;
    }
}
