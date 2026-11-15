package kotlin.reflect.jvm.internal.impl.util;

import defpackage.y45;
import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

public final class f implements b {
    public static final f a = new f();
    public static final String b = "should not have varargs or parameters with default values";

    @Override
    public String a(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
        return b.a.a(this, eVar);
    }

    @Override
    public boolean b(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
        y45.j(eVar, "functionDescriptor");
        List listF = eVar.f();
        y45.i(listF, "functionDescriptor.valueParameters");
        List<h> list = listF;
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        for (h hVar : list) {
            y45.i(hVar, "it");
            if (DescriptorUtilsKt.c(hVar) || hVar.x0() != null) {
                return false;
            }
        }
        return true;
    }

    @Override
    public String getDescription() {
        return b;
    }
}
