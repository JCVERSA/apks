package kotlinx.serialization.internal;

import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;

public final class ObjectSerializer implements kotlinx.serialization.b {

    private final Object f65113a;

    private List f65114b;

    private final Lazy f65115c;

    public ObjectSerializer(final String serialName, Object objectInstance) {
        Intrinsics.h(serialName, "serialName");
        Intrinsics.h(objectInstance, "objectInstance");
        this.f65113a = objectInstance;
        this.f65114b = CollectionsKt.l();
        this.f65115c = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new Function0<kotlinx.serialization.descriptors.f>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final kotlinx.serialization.descriptors.f invoke() {
                final ObjectSerializer objectSerializer = this;
                return SerialDescriptorsKt.c(serialName, kotlinx.serialization.descriptors.i.d.f65104a, new kotlinx.serialization.descriptors.f[0], new Function1<kotlinx.serialization.descriptors.a, Unit>() {
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        invoke((kotlinx.serialization.descriptors.a) obj);
                        return Unit.f64096a;
                    }

                    public final void invoke(kotlinx.serialization.descriptors.a buildSerialDescriptor) {
                        Intrinsics.h(buildSerialDescriptor, "$this$buildSerialDescriptor");
                        buildSerialDescriptor.h(objectSerializer.f65114b);
                    }
                });
            }
        });
    }

    @Override
    public Object deserialize(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        kotlinx.serialization.descriptors.f descriptor = getDescriptor();
        sy.c cVarB = decoder.b(descriptor);
        int iO = cVarB.o(getDescriptor());
        if (iO == -1) {
            Unit unit = Unit.f64096a;
            cVarB.c(descriptor);
            return this.f65113a;
        }
        throw new SerializationException("Unexpected index " + iO);
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return (kotlinx.serialization.descriptors.f) this.f65115c.getValue();
    }

    @Override
    public void serialize(sy.f encoder, Object value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        encoder.b(getDescriptor()).c(getDescriptor());
    }
}
