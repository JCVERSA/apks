package kotlinx.serialization.descriptors;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.internal.v1;

public abstract class b {
    public static final KClass a(f fVar) {
        Intrinsics.h(fVar, "<this>");
        if (fVar instanceof c) {
            return ((c) fVar).f65080b;
        }
        if (fVar instanceof v1) {
            return a(((v1) fVar).k());
        }
        return null;
    }

    public static final f b(ty.c cVar, f descriptor) {
        kotlinx.serialization.b bVarC;
        Intrinsics.h(cVar, "<this>");
        Intrinsics.h(descriptor, "descriptor");
        KClass kClassA = a(descriptor);
        if (kClassA == null || (bVarC = ty.c.c(cVar, kClassA, null, 2, null)) == null) {
            return null;
        }
        return bVarC.getDescriptor();
    }

    public static final f c(f fVar, KClass context) {
        Intrinsics.h(fVar, "<this>");
        Intrinsics.h(context, "context");
        return new c(fVar, context);
    }
}
