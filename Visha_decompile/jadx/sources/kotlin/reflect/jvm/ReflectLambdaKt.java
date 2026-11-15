package kotlin.reflect.jvm;

import defpackage.clb;
import defpackage.jd5;
import defpackage.kd5;
import defpackage.le5;
import defpackage.od5;
import defpackage.x74;
import defpackage.xcb;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.KFunctionImpl;
import kotlin.reflect.jvm.internal.a;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;

public abstract class ReflectLambdaKt {
    public static final le5 a(x74 x74Var) {
        y45.j(x74Var, "<this>");
        Metadata metadata = (Metadata) x74Var.getClass().getAnnotation(Metadata.class);
        if (metadata == null) {
            return null;
        }
        String[] strArrD1 = metadata.d1();
        if (strArrD1.length == 0) {
            strArrD1 = null;
        }
        if (strArrD1 == null) {
            return null;
        }
        Pair pairJ = od5.j(strArrD1, metadata.d2());
        kd5 kd5Var = (kd5) pairJ.component1();
        ProtoBuf$Function protoBuf$Function = (ProtoBuf$Function) pairJ.component2();
        jd5 jd5Var = new jd5(metadata.mv(), (metadata.xi() & 8) != 0);
        Class<?> cls = x74Var.getClass();
        ProtoBuf$TypeTable typeTable = protoBuf$Function.getTypeTable();
        y45.i(typeTable, "proto.typeTable");
        return new KFunctionImpl(a.e, (g) clb.h(cls, protoBuf$Function, kd5Var, new xcb(typeTable), jd5Var, ReflectLambdaKt$reflect$descriptor$1.INSTANCE));
    }
}
