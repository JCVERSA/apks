package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import defpackage.by6;
import defpackage.e74;
import defpackage.ke5;
import defpackage.sm9;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.FunctionReference;

public class DeserializedClassDescriptor$computeValueClassRepresentation$2 extends FunctionReference implements e74 {
    public DeserializedClassDescriptor$computeValueClassRepresentation$2(Object obj) {
        super(1, obj);
    }

    @Override
    public final String getName() {
        return "getValueClassPropertyType";
    }

    @Override
    public final ke5 getOwner() {
        return xq8.b(DeserializedClassDescriptor.class);
    }

    @Override
    public final String getSignature() {
        return "getValueClassPropertyType(Lorg/jetbrains/kotlin/name/Name;)Lorg/jetbrains/kotlin/types/SimpleType;";
    }

    @Override
    public final sm9 invoke(by6 by6Var) {
        y45.j(by6Var, "p0");
        return ((DeserializedClassDescriptor) this.receiver).a1(by6Var);
    }
}
