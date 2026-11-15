package kotlin.reflect.jvm.internal;

import defpackage.by6;
import defpackage.ti8;
import defpackage.y45;
import java.util.Collection;

public final class a extends KDeclarationContainerImpl {
    public static final a e = new a();

    @Override
    public Collection A(by6 by6Var) {
        y45.j(by6Var, "name");
        L();
        throw null;
    }

    @Override
    public ti8 B(int i) {
        return null;
    }

    @Override
    public Collection E(by6 by6Var) {
        y45.j(by6Var, "name");
        L();
        throw null;
    }

    public final Void L() {
        throw new KotlinReflectionInternalError("Introspecting local functions, lambdas, anonymous functions, local variables and typealiases is not yet fully supported in Kotlin reflection");
    }

    @Override
    public Class d() {
        L();
        throw null;
    }

    @Override
    public Collection z() {
        L();
        throw null;
    }
}
