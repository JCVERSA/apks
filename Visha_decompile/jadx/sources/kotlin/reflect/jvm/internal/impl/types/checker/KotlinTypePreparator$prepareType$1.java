package kotlin.reflect.jvm.internal.impl.types.checker;

import defpackage.e74;
import defpackage.gh5;
import defpackage.ke5;
import defpackage.mgb;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.FunctionReference;

public class KotlinTypePreparator$prepareType$1 extends FunctionReference implements e74 {
    public KotlinTypePreparator$prepareType$1(Object obj) {
        super(1, obj);
    }

    @Override
    public final String getName() {
        return "prepareType";
    }

    @Override
    public final ke5 getOwner() {
        return xq8.b(KotlinTypePreparator.class);
    }

    @Override
    public final String getSignature() {
        return "prepareType(Lorg/jetbrains/kotlin/types/model/KotlinTypeMarker;)Lorg/jetbrains/kotlin/types/UnwrappedType;";
    }

    @Override
    public final mgb invoke(gh5 gh5Var) {
        y45.j(gh5Var, "p0");
        return ((KotlinTypePreparator) this.receiver).a(gh5Var);
    }
}
