package defpackage;

import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;

public final class n75 implements gy3 {
    public static final n75 a = new n75();

    @Override
    public eh5 a(ProtoBuf$Type protoBuf$Type, String str, sm9 sm9Var, sm9 sm9Var2) {
        y45.j(protoBuf$Type, "proto");
        y45.j(str, "flexibleId");
        y45.j(sm9Var, "lowerBound");
        y45.j(sm9Var2, "upperBound");
        if (y45.e(str, "kotlin.jvm.PlatformType")) {
            return protoBuf$Type.hasExtension(JvmProtoBuf.g) ? new RawTypeImpl(sm9Var, sm9Var2) : KotlinTypeFactory.d(sm9Var, sm9Var2);
        }
        return id3.d(ErrorTypeKind.ERROR_FLEXIBLE_TYPE, str, sm9Var.toString(), sm9Var2.toString());
    }
}
