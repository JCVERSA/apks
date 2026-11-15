package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import defpackage.c74;
import defpackage.cx7;
import java.io.ByteArrayInputStream;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.protobuf.g;

public final class DeserializedMemberScope$OptimizedImplementation$computeDescriptors$1$1 extends Lambda implements c74 {
    final ByteArrayInputStream $inputStream;
    final cx7 $parser;
    final DeserializedMemberScope this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedMemberScope$OptimizedImplementation$computeDescriptors$1$1(cx7 cx7Var, ByteArrayInputStream byteArrayInputStream, DeserializedMemberScope deserializedMemberScope) {
        super(0);
        this.$parser = cx7Var;
        this.$inputStream = byteArrayInputStream;
        this.this$0 = deserializedMemberScope;
    }

    @Override
    public final g invoke() {
        return (g) this.$parser.a(this.$inputStream, this.this$0.p().c().j());
    }
}
