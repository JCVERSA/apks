package kotlinx.serialization.json.internal;

import defpackage.c74;
import defpackage.fl1;
import defpackage.y45;
import java.util.Map;
import org.mozilla.javascript.ES6Iterator;

public final class a {
    public final Map a = fl1.a(16);

    public static final class C0420a {
    }

    public final Object a(kotlinx.serialization.descriptors.a aVar, C0420a c0420a) {
        y45.j(aVar, "descriptor");
        y45.j(c0420a, "key");
        Map map = (Map) this.a.get(aVar);
        Object obj = map != null ? map.get(c0420a) : null;
        if (obj == null) {
            return null;
        }
        return obj;
    }

    public final Object b(kotlinx.serialization.descriptors.a aVar, C0420a c0420a, c74 c74Var) {
        y45.j(aVar, "descriptor");
        y45.j(c0420a, "key");
        y45.j(c74Var, "defaultValue");
        Object objA = a(aVar, c0420a);
        if (objA != null) {
            return objA;
        }
        Object objInvoke = c74Var.invoke();
        c(aVar, c0420a, objInvoke);
        return objInvoke;
    }

    public final void c(kotlinx.serialization.descriptors.a aVar, C0420a c0420a, Object obj) {
        y45.j(aVar, "descriptor");
        y45.j(c0420a, "key");
        y45.j(obj, ES6Iterator.VALUE_PROPERTY);
        Map map = this.a;
        Object objA = map.get(aVar);
        if (objA == null) {
            objA = fl1.a(2);
            map.put(aVar, objA);
        }
        ((Map) objA).put(c0420a, obj);
    }
}
