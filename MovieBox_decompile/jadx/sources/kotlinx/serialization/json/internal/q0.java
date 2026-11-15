package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.Intrinsics;

public abstract class q0 {
    public static final kotlinx.serialization.descriptors.f a(kotlinx.serialization.descriptors.f fVar, ty.c module) {
        kotlinx.serialization.descriptors.f fVarA;
        Intrinsics.h(fVar, "<this>");
        Intrinsics.h(module, "module");
        if (!Intrinsics.c(fVar.d(), kotlinx.serialization.descriptors.h.a.f65099a)) {
            return fVar.isInline() ? a(fVar.h(0), module) : fVar;
        }
        kotlinx.serialization.descriptors.f fVarB = kotlinx.serialization.descriptors.b.b(module, fVar);
        return (fVarB == null || (fVarA = a(fVarB, module)) == null) ? fVar : fVarA;
    }

    public static final WriteMode b(kotlinx.serialization.json.a aVar, kotlinx.serialization.descriptors.f desc) {
        Intrinsics.h(aVar, "<this>");
        Intrinsics.h(desc, "desc");
        kotlinx.serialization.descriptors.h hVarD = desc.d();
        if (hVarD instanceof kotlinx.serialization.descriptors.d) {
            return WriteMode.POLY_OBJ;
        }
        if (Intrinsics.c(hVarD, kotlinx.serialization.descriptors.i.b.f65102a)) {
            return WriteMode.LIST;
        }
        if (!Intrinsics.c(hVarD, kotlinx.serialization.descriptors.i.c.f65103a)) {
            return WriteMode.OBJ;
        }
        kotlinx.serialization.descriptors.f fVarA = a(desc.h(0), aVar.a());
        kotlinx.serialization.descriptors.h hVarD2 = fVarA.d();
        if ((hVarD2 instanceof kotlinx.serialization.descriptors.e) || Intrinsics.c(hVarD2, kotlinx.serialization.descriptors.h.b.f65100a)) {
            return WriteMode.MAP;
        }
        if (aVar.e().b()) {
            return WriteMode.LIST;
        }
        throw w.d(fVarA);
    }
}
