package kotlin.reflect.jvm.internal.impl.util;

import defpackage.y45;
import java.util.List;

public abstract class a {
    public final c a(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
        y45.j(eVar, "functionDescriptor");
        for (Checks checks : b()) {
            if (checks.b(eVar)) {
                return checks.a(eVar);
            }
        }
        return c.a.b;
    }

    public abstract List b();
}
