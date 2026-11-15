package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.reflect.KClass;
import kotlinx.serialization.SerializationException;

public abstract class b implements kotlinx.serialization.b {
    public final Object b(sy.c cVar) {
        return sy.c.a.c(cVar, getDescriptor(), 1, kotlinx.serialization.d.a(this, cVar, cVar.m(getDescriptor(), 0)), null, 8, null);
    }

    public kotlinx.serialization.a c(sy.c decoder, String str) {
        Intrinsics.h(decoder, "decoder");
        return decoder.a().d(e(), str);
    }

    public kotlinx.serialization.g d(sy.f encoder, Object value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        return encoder.a().e(e(), value);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v5, types: [T, java.lang.String] */
    @Override
    public final Object deserialize(sy.e decoder) {
        Object objC;
        Intrinsics.h(decoder, "decoder");
        kotlinx.serialization.descriptors.f descriptor = getDescriptor();
        sy.c cVarB = decoder.b(descriptor);
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        if (cVarB.p()) {
            objC = b(cVarB);
        } else {
            objC = null;
            while (true) {
                int iO = cVarB.o(getDescriptor());
                if (iO == -1) {
                    if (objC != null) {
                        Intrinsics.f(objC, "null cannot be cast to non-null type T of kotlinx.serialization.internal.AbstractPolymorphicSerializer.deserialize$lambda$3");
                        break;
                    }
                    throw new IllegalArgumentException(("Polymorphic value has not been read for class " + ((String) objectRef.element)).toString());
                }
                if (iO == 0) {
                    objectRef.element = cVarB.m(getDescriptor(), iO);
                } else {
                    if (iO != 1) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Invalid index in polymorphic deserialization of ");
                        String str = (String) objectRef.element;
                        if (str == null) {
                            str = "unknown class";
                        }
                        sb2.append(str);
                        sb2.append("\n Expected 0, 1 or DECODE_DONE(-1), but found ");
                        sb2.append(iO);
                        throw new SerializationException(sb2.toString());
                    }
                    T t10 = objectRef.element;
                    if (t10 == 0) {
                        throw new IllegalArgumentException("Cannot read polymorphic value before its type token");
                    }
                    objectRef.element = t10;
                    objC = sy.c.a.c(cVarB, getDescriptor(), iO, kotlinx.serialization.d.a(this, cVarB, (String) t10), null, 8, null);
                }
            }
        }
        cVarB.c(descriptor);
        return objC;
    }

    public abstract KClass e();

    @Override
    public final void serialize(sy.f encoder, Object value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        kotlinx.serialization.g gVarB = kotlinx.serialization.d.b(this, encoder, value);
        kotlinx.serialization.descriptors.f descriptor = getDescriptor();
        sy.d dVarB = encoder.b(descriptor);
        dVarB.y(getDescriptor(), 0, gVarB.getDescriptor().i());
        kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
        Intrinsics.f(gVarB, "null cannot be cast to non-null type kotlinx.serialization.SerializationStrategy<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
        dVarB.C(descriptor2, 1, gVarB, value);
        dVarB.c(descriptor);
    }
}
