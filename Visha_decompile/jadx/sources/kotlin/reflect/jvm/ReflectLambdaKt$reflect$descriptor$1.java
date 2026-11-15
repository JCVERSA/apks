package kotlin.reflect.jvm;

import defpackage.ke5;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReference;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
public class ReflectLambdaKt$reflect$descriptor$1 extends FunctionReference implements s74 {
    public static final ReflectLambdaKt$reflect$descriptor$1 INSTANCE = new ReflectLambdaKt$reflect$descriptor$1();

    public ReflectLambdaKt$reflect$descriptor$1() {
        super(2);
    }

    @Override
    public final String getName() {
        return "loadFunction";
    }

    @Override
    public final ke5 getOwner() {
        return xq8.b(MemberDeserializer.class);
    }

    @Override
    public final String getSignature() {
        return "loadFunction(Lorg/jetbrains/kotlin/metadata/ProtoBuf$Function;)Lorg/jetbrains/kotlin/descriptors/SimpleFunctionDescriptor;";
    }

    @Override
    public final g invoke(MemberDeserializer memberDeserializer, ProtoBuf$Function protoBuf$Function) {
        y45.j(memberDeserializer, "p0");
        y45.j(protoBuf$Function, "p1");
        return memberDeserializer.j(protoBuf$Function);
    }
}
