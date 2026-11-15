package kotlinx.serialization.internal;

import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;

public final class PairSerializer extends t0 {

    private final kotlinx.serialization.descriptors.f f65116c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PairSerializer(final kotlinx.serialization.b keySerializer, final kotlinx.serialization.b valueSerializer) {
        super(keySerializer, valueSerializer, null);
        Intrinsics.h(keySerializer, "keySerializer");
        Intrinsics.h(valueSerializer, "valueSerializer");
        this.f65116c = SerialDescriptorsKt.b("kotlin.Pair", new kotlinx.serialization.descriptors.f[0], new Function1<kotlinx.serialization.descriptors.a, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((kotlinx.serialization.descriptors.a) obj);
                return Unit.f64096a;
            }

            public final void invoke(kotlinx.serialization.descriptors.a buildClassSerialDescriptor) {
                Intrinsics.h(buildClassSerialDescriptor, "$this$buildClassSerialDescriptor");
                kotlinx.serialization.descriptors.a.b(buildClassSerialDescriptor, "first", keySerializer.getDescriptor(), null, false, 12, null);
                kotlinx.serialization.descriptors.a.b(buildClassSerialDescriptor, "second", valueSerializer.getDescriptor(), null, false, 12, null);
            }
        });
    }

    @Override
    public Object a(Pair pair) {
        Intrinsics.h(pair, "<this>");
        return pair.getFirst();
    }

    @Override
    public Object b(Pair pair) {
        Intrinsics.h(pair, "<this>");
        return pair.getSecond();
    }

    @Override
    public Pair c(Object obj, Object obj2) {
        return TuplesKt.a(obj, obj2);
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return this.f65116c;
    }
}
