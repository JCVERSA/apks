package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import defpackage.cy6;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.protobuf.g;

public interface c {
    List a(d dVar, g gVar, AnnotatedCallableKind annotatedCallableKind, int i, ProtoBuf$ValueParameter protoBuf$ValueParameter);

    List b(d.a aVar);

    List c(d dVar, ProtoBuf$EnumEntry protoBuf$EnumEntry);

    List e(ProtoBuf$TypeParameter protoBuf$TypeParameter, cy6 cy6Var);

    List f(d dVar, ProtoBuf$Property protoBuf$Property);

    List g(d dVar, g gVar, AnnotatedCallableKind annotatedCallableKind);

    List h(ProtoBuf$Type protoBuf$Type, cy6 cy6Var);

    List i(d dVar, g gVar, AnnotatedCallableKind annotatedCallableKind);

    List k(d dVar, ProtoBuf$Property protoBuf$Property);
}
