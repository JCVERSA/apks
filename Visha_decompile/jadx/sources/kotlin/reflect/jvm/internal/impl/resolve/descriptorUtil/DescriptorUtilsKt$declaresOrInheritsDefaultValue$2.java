package kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil;

import defpackage.e74;
import defpackage.ke5;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.FunctionReference;
import kotlin.reflect.jvm.internal.impl.descriptors.h;

public class DescriptorUtilsKt$declaresOrInheritsDefaultValue$2 extends FunctionReference implements e74 {
    public static final DescriptorUtilsKt$declaresOrInheritsDefaultValue$2 INSTANCE = new DescriptorUtilsKt$declaresOrInheritsDefaultValue$2();

    public DescriptorUtilsKt$declaresOrInheritsDefaultValue$2() {
        super(1);
    }

    @Override
    public final String getName() {
        return "declaresDefaultValue";
    }

    @Override
    public final ke5 getOwner() {
        return xq8.b(h.class);
    }

    @Override
    public final String getSignature() {
        return "declaresDefaultValue()Z";
    }

    @Override
    public final Boolean invoke(h hVar) {
        y45.j(hVar, "p0");
        return Boolean.valueOf(hVar.N());
    }
}
