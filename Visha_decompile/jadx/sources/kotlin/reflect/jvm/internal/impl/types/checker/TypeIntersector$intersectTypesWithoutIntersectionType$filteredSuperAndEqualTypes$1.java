package kotlin.reflect.jvm.internal.impl.types.checker;

import defpackage.eh5;
import defpackage.ke5;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.FunctionReference;

public class TypeIntersector$intersectTypesWithoutIntersectionType$filteredSuperAndEqualTypes$1 extends FunctionReference implements s74 {
    public TypeIntersector$intersectTypesWithoutIntersectionType$filteredSuperAndEqualTypes$1(Object obj) {
        super(2, obj);
    }

    @Override
    public final String getName() {
        return "equalTypes";
    }

    @Override
    public final ke5 getOwner() {
        return xq8.b(f.class);
    }

    @Override
    public final String getSignature() {
        return "equalTypes(Lorg/jetbrains/kotlin/types/KotlinType;Lorg/jetbrains/kotlin/types/KotlinType;)Z";
    }

    @Override
    public final Boolean invoke(eh5 eh5Var, eh5 eh5Var2) {
        y45.j(eh5Var, "p0");
        y45.j(eh5Var2, "p1");
        return Boolean.valueOf(((f) this.receiver).b(eh5Var, eh5Var2));
    }
}
