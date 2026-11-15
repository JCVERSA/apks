package kotlin.reflect.jvm.internal.impl.load.kotlin;

import defpackage.cj8;
import defpackage.cy6;
import defpackage.id5;
import defpackage.od5;
import defpackage.xcb;
import defpackage.y45;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;

public abstract class a {
    public static final d a(ProtoBuf$Property protoBuf$Property, cy6 cy6Var, xcb xcbVar, boolean z, boolean z2, boolean z3) {
        y45.j(protoBuf$Property, "proto");
        y45.j(cy6Var, "nameResolver");
        y45.j(xcbVar, "typeTable");
        GeneratedMessageLite.e eVar = JvmProtoBuf.d;
        y45.i(eVar, "propertySignature");
        JvmProtoBuf.JvmPropertySignature jvmPropertySignature = (JvmProtoBuf.JvmPropertySignature) cj8.a(protoBuf$Property, eVar);
        if (jvmPropertySignature == null) {
            return null;
        }
        if (z) {
            id5.a aVarC = od5.a.c(protoBuf$Property, cy6Var, xcbVar, z3);
            if (aVarC == null) {
                return null;
            }
            return d.b.b(aVarC);
        }
        if (!z2 || !jvmPropertySignature.hasSyntheticMethod()) {
            return null;
        }
        d.a aVar = d.b;
        JvmProtoBuf.JvmMethodSignature syntheticMethod = jvmPropertySignature.getSyntheticMethod();
        y45.i(syntheticMethod, "signature.syntheticMethod");
        return aVar.c(cy6Var, syntheticMethod);
    }

    public static d b(ProtoBuf$Property protoBuf$Property, cy6 cy6Var, xcb xcbVar, boolean z, boolean z2, boolean z3, int i, Object obj) {
        boolean z4 = (i & 8) != 0 ? false : z;
        boolean z5 = (i & 16) != 0 ? false : z2;
        if ((i & 32) != 0) {
            z3 = true;
        }
        return a(protoBuf$Property, cy6Var, xcbVar, z4, z5, z3);
    }
}
