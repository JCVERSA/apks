package kotlinx.serialization.internal;

import kotlin.Triple;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;

public final class TripleSerializer implements kotlinx.serialization.b {

    private final kotlinx.serialization.b f65131a;

    private final kotlinx.serialization.b f65132b;

    private final kotlinx.serialization.b f65133c;

    private final kotlinx.serialization.descriptors.f f65134d;

    public TripleSerializer(kotlinx.serialization.b aSerializer, kotlinx.serialization.b bSerializer, kotlinx.serialization.b cSerializer) {
        Intrinsics.h(aSerializer, "aSerializer");
        Intrinsics.h(bSerializer, "bSerializer");
        Intrinsics.h(cSerializer, "cSerializer");
        this.f65131a = aSerializer;
        this.f65132b = bSerializer;
        this.f65133c = cSerializer;
        this.f65134d = SerialDescriptorsKt.b("kotlin.Triple", new kotlinx.serialization.descriptors.f[0], new Function1<kotlinx.serialization.descriptors.a, Unit>() {
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
                kotlinx.serialization.descriptors.a.b(buildClassSerialDescriptor, "first", this.this$0.f65131a.getDescriptor(), null, false, 12, null);
                kotlinx.serialization.descriptors.a.b(buildClassSerialDescriptor, "second", this.this$0.f65132b.getDescriptor(), null, false, 12, null);
                kotlinx.serialization.descriptors.a.b(buildClassSerialDescriptor, "third", this.this$0.f65133c.getDescriptor(), null, false, 12, null);
            }
        });
    }

    private final Triple d(sy.c cVar) {
        Object objC = sy.c.a.c(cVar, getDescriptor(), 0, this.f65131a, null, 8, null);
        Object objC2 = sy.c.a.c(cVar, getDescriptor(), 1, this.f65132b, null, 8, null);
        Object objC3 = sy.c.a.c(cVar, getDescriptor(), 2, this.f65133c, null, 8, null);
        cVar.c(getDescriptor());
        return new Triple(objC, objC2, objC3);
    }

    private final Triple e(sy.c cVar) {
        Object objC = d2.f65156a;
        Object objC2 = d2.f65156a;
        Object objC3 = d2.f65156a;
        while (true) {
            int iO = cVar.o(getDescriptor());
            if (iO == -1) {
                cVar.c(getDescriptor());
                if (objC == d2.f65156a) {
                    throw new SerializationException("Element 'first' is missing");
                }
                if (objC2 == d2.f65156a) {
                    throw new SerializationException("Element 'second' is missing");
                }
                if (objC3 != d2.f65156a) {
                    return new Triple(objC, objC2, objC3);
                }
                throw new SerializationException("Element 'third' is missing");
            }
            if (iO == 0) {
                objC = sy.c.a.c(cVar, getDescriptor(), 0, this.f65131a, null, 8, null);
            } else if (iO == 1) {
                objC2 = sy.c.a.c(cVar, getDescriptor(), 1, this.f65132b, null, 8, null);
            } else {
                if (iO != 2) {
                    throw new SerializationException("Unexpected index " + iO);
                }
                objC3 = sy.c.a.c(cVar, getDescriptor(), 2, this.f65133c, null, 8, null);
            }
        }
    }

    @Override
    public Triple deserialize(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        sy.c cVarB = decoder.b(getDescriptor());
        return cVarB.p() ? d(cVarB) : e(cVarB);
    }

    @Override
    public void serialize(sy.f encoder, Triple value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        sy.d dVarB = encoder.b(getDescriptor());
        dVarB.C(getDescriptor(), 0, this.f65131a, value.getFirst());
        dVarB.C(getDescriptor(), 1, this.f65132b, value.getSecond());
        dVarB.C(getDescriptor(), 2, this.f65133c, value.getThird());
        dVarB.c(getDescriptor());
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return this.f65134d;
    }
}
