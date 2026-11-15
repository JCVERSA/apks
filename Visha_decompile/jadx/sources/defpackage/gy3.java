package defpackage;

import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;

public interface gy3 {

    public static final class a implements gy3 {
        public static final a a = new a();

        @Override
        public eh5 a(ProtoBuf$Type protoBuf$Type, String str, sm9 sm9Var, sm9 sm9Var2) {
            y45.j(protoBuf$Type, "proto");
            y45.j(str, "flexibleId");
            y45.j(sm9Var, "lowerBound");
            y45.j(sm9Var2, "upperBound");
            throw new IllegalArgumentException("This method should not be used.");
        }
    }

    eh5 a(ProtoBuf$Type protoBuf$Type, String str, sm9 sm9Var, sm9 sm9Var2);
}
