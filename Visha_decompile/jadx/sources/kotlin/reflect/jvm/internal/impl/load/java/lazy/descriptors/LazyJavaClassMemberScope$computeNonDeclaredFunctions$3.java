package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import defpackage.by6;
import defpackage.e74;
import defpackage.ke5;
import defpackage.xq8;
import defpackage.y45;
import java.util.Collection;
import kotlin.jvm.internal.FunctionReference;
import kotlin.reflect.jvm.internal.impl.descriptors.g;

public class LazyJavaClassMemberScope$computeNonDeclaredFunctions$3 extends FunctionReference implements e74 {
    public LazyJavaClassMemberScope$computeNonDeclaredFunctions$3(Object obj) {
        super(1, obj);
    }

    @Override
    public final String getName() {
        return "searchMethodsByNameWithoutBuiltinMagic";
    }

    @Override
    public final ke5 getOwner() {
        return xq8.b(LazyJavaClassMemberScope.class);
    }

    @Override
    public final String getSignature() {
        return "searchMethodsByNameWithoutBuiltinMagic(Lorg/jetbrains/kotlin/name/Name;)Ljava/util/Collection;";
    }

    @Override
    public final Collection<g> invoke(by6 by6Var) {
        y45.j(by6Var, "p0");
        return ((LazyJavaClassMemberScope) this.receiver).J0(by6Var);
    }
}
