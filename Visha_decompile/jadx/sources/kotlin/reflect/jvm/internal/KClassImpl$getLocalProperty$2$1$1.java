package kotlin.reflect.jvm.internal;

import defpackage.ke5;
import defpackage.s74;
import defpackage.ti8;
import defpackage.xq8;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReference;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
public class KClassImpl$getLocalProperty$2$1$1 extends FunctionReference implements s74 {
    public static final KClassImpl$getLocalProperty$2$1$1 INSTANCE = new KClassImpl$getLocalProperty$2$1$1();

    public KClassImpl$getLocalProperty$2$1$1() {
        super(2);
    }

    @Override
    public final String getName() {
        return "loadProperty";
    }

    @Override
    public final ke5 getOwner() {
        return xq8.b(MemberDeserializer.class);
    }

    @Override
    public final String getSignature() {
        return "loadProperty(Lorg/jetbrains/kotlin/metadata/ProtoBuf$Property;)Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;";
    }

    @Override
    public final ti8 invoke(MemberDeserializer memberDeserializer, ProtoBuf$Property protoBuf$Property) {
        y45.j(memberDeserializer, "p0");
        y45.j(protoBuf$Property, "p1");
        return memberDeserializer.l(protoBuf$Property);
    }
}
