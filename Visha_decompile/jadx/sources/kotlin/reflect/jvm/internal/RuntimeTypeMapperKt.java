package kotlin.reflect.jvm.internal;

import defpackage.e74;
import defpackage.hi;
import defpackage.y45;
import java.lang.reflect.Method;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;

public abstract class RuntimeTypeMapperKt {
    public static final String b(Method method) {
        StringBuilder sb = new StringBuilder();
        sb.append(method.getName());
        Class<?>[] parameterTypes = method.getParameterTypes();
        y45.i(parameterTypes, "parameterTypes");
        sb.append(hi.s0(parameterTypes, "", "(", ")", 0, null, new e74() {
            @Override
            public final CharSequence invoke(Class<?> cls) {
                y45.i(cls, "it");
                return ReflectClassUtilKt.b(cls);
            }
        }, 24, null));
        Class<?> returnType = method.getReturnType();
        y45.i(returnType, "returnType");
        sb.append(ReflectClassUtilKt.b(returnType));
        return sb.toString();
    }
}
