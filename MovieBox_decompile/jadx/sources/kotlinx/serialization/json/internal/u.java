package kotlinx.serialization.json.internal;

import java.util.Map;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class u {

    private final Map f65374a = t.a(1);

    public static final class a {
    }

    public final Object a(kotlinx.serialization.descriptors.f descriptor, a key) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(key, "key");
        Map map = (Map) this.f65374a.get(descriptor);
        Object obj = map != null ? map.get(key) : null;
        if (obj == null) {
            return null;
        }
        return obj;
    }

    public final Object b(kotlinx.serialization.descriptors.f descriptor, a key, Function0 defaultValue) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(key, "key");
        Intrinsics.h(defaultValue, "defaultValue");
        Object objA = a(descriptor, key);
        if (objA != null) {
            return objA;
        }
        Object objInvoke = defaultValue.invoke();
        c(descriptor, key, objInvoke);
        return objInvoke;
    }

    public final void c(kotlinx.serialization.descriptors.f descriptor, a key, Object value) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(key, "key");
        Intrinsics.h(value, "value");
        Map map = this.f65374a;
        Object objA = map.get(descriptor);
        if (objA == null) {
            objA = t.a(1);
            map.put(descriptor, objA);
        }
        ((Map) objA).put(key, value);
    }
}
