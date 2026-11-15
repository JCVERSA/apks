package kotlin.reflect.jvm.internal.impl.util;

import defpackage.eh5;
import defpackage.y45;
import kotlin.reflect.jvm.internal.impl.builtins.ReflectionTypes;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

public final class d implements b {
    public static final d a = new d();
    public static final String b = "second parameter must be of type KProperty<*> or its supertype";

    @Override
    public String a(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
        return b.a.a(this, eVar);
    }

    @Override
    public boolean b(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
        y45.j(eVar, "functionDescriptor");
        h hVar = (h) eVar.f().get(1);
        ReflectionTypes.b bVar = ReflectionTypes.k;
        y45.i(hVar, "secondParameter");
        eh5 eh5VarA = bVar.a(DescriptorUtilsKt.p(hVar));
        if (eh5VarA == null) {
            return false;
        }
        eh5 type = hVar.getType();
        y45.i(type, "secondParameter.type");
        return TypeUtilsKt.r(eh5VarA, TypeUtilsKt.v(type));
    }

    @Override
    public String getDescription() {
        return b;
    }
}
