package kotlin.reflect.jvm.internal.impl.protobuf;

import defpackage.un6;

public interface g extends un6 {

    public interface a extends Cloneable, un6 {
        a b(c cVar, d dVar);

        g build();
    }

    int getSerializedSize();

    a newBuilderForType();

    a toBuilder();

    void writeTo(CodedOutputStream codedOutputStream);
}
