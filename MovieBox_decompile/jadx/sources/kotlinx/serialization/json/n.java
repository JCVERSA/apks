package kotlinx.serialization.json;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class n {
    public static final a a(a from, Function1 builderAction) {
        Intrinsics.h(from, "from");
        Intrinsics.h(builderAction, "builderAction");
        d dVar = new d(from);
        builderAction.invoke(dVar);
        return new m(dVar.a(), dVar.b());
    }

    public static a b(a aVar, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            aVar = a.f65262d;
        }
        return a(aVar, function1);
    }
}
