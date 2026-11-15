package kotlin.reflect.jvm.internal.impl.descriptors;

import defpackage.e74;
import defpackage.ke5;
import defpackage.xq8;
import defpackage.xw0;
import defpackage.y45;
import kotlin.jvm.internal.FunctionReference;

public class FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$1 extends FunctionReference implements e74 {
    public static final FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$1 INSTANCE = new FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$1();

    public FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$1() {
        super(1);
    }

    @Override
    public final String getName() {
        return "getOuterClassId";
    }

    @Override
    public final ke5 getOwner() {
        return xq8.b(xw0.class);
    }

    @Override
    public final String getSignature() {
        return "getOuterClassId()Lorg/jetbrains/kotlin/name/ClassId;";
    }

    @Override
    public final xw0 invoke(xw0 xw0Var) {
        y45.j(xw0Var, "p0");
        return xw0Var.g();
    }
}
