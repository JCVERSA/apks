package kotlin.reflect.jvm.internal.impl.util;

import defpackage.y45;

public interface b {

    public static final class a {
        public static String a(b bVar, kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
            y45.j(eVar, "functionDescriptor");
            if (bVar.b(eVar)) {
                return null;
            }
            return bVar.getDescription();
        }
    }

    String a(kotlin.reflect.jvm.internal.impl.descriptors.e eVar);

    boolean b(kotlin.reflect.jvm.internal.impl.descriptors.e eVar);

    String getDescription();
}
