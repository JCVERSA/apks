package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import defpackage.e74;
import defpackage.ke5;
import defpackage.sm9;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.FunctionReference;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer;

public class DeserializedClassDescriptor$computeValueClassRepresentation$1 extends FunctionReference implements e74 {
    public DeserializedClassDescriptor$computeValueClassRepresentation$1(Object obj) {
        super(1, obj);
    }

    @Override
    public final String getName() {
        return "simpleType";
    }

    @Override
    public final ke5 getOwner() {
        return xq8.b(y45.a.class);
    }

    @Override
    public final String getSignature() {
        return "computeValueClassRepresentation$simpleType(Lorg/jetbrains/kotlin/serialization/deserialization/TypeDeserializer;Lorg/jetbrains/kotlin/metadata/ProtoBuf$Type;)Lorg/jetbrains/kotlin/types/SimpleType;";
    }

    @Override
    public final sm9 invoke(ProtoBuf$Type protoBuf$Type) {
        y45.j(protoBuf$Type, "p0");
        return TypeDeserializer.n((TypeDeserializer) this.receiver, protoBuf$Type, false, 2, null);
    }
}
