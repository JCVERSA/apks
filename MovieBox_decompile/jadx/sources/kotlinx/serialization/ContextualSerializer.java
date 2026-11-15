package kotlinx.serialization;

import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.internal.l1;

public final class ContextualSerializer implements b {

    private final KClass f65049a;

    private final b f65050b;

    private final List f65051c;

    private final kotlinx.serialization.descriptors.f f65052d;

    public ContextualSerializer(KClass serializableClass, b bVar, b[] typeArgumentsSerializers) {
        Intrinsics.h(serializableClass, "serializableClass");
        Intrinsics.h(typeArgumentsSerializers, "typeArgumentsSerializers");
        this.f65049a = serializableClass;
        this.f65050b = bVar;
        this.f65051c = ArraysKt.g(typeArgumentsSerializers);
        this.f65052d = kotlinx.serialization.descriptors.b.c(SerialDescriptorsKt.c("kotlinx.serialization.ContextualSerializer", kotlinx.serialization.descriptors.h.a.f65099a, new kotlinx.serialization.descriptors.f[0], new Function1<kotlinx.serialization.descriptors.a, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((kotlinx.serialization.descriptors.a) obj);
                return Unit.f64096a;
            }

            public final void invoke(kotlinx.serialization.descriptors.a buildSerialDescriptor) {
                kotlinx.serialization.descriptors.f descriptor;
                Intrinsics.h(buildSerialDescriptor, "$this$buildSerialDescriptor");
                b bVar2 = this.this$0.f65050b;
                List annotations = (bVar2 == null || (descriptor = bVar2.getDescriptor()) == null) ? null : descriptor.getAnnotations();
                if (annotations == null) {
                    annotations = CollectionsKt.l();
                }
                buildSerialDescriptor.h(annotations);
            }
        }), serializableClass);
    }

    private final b b(ty.c cVar) {
        b bVarB = cVar.b(this.f65049a, this.f65051c);
        if (bVarB != null || (bVarB = this.f65050b) != null) {
            return bVarB;
        }
        l1.d(this.f65049a);
        throw new KotlinNothingValueException();
    }

    @Override
    public Object deserialize(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return decoder.G(b(decoder.a()));
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return this.f65052d;
    }

    @Override
    public void serialize(sy.f encoder, Object value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        encoder.e(b(encoder.a()), value);
    }
}
