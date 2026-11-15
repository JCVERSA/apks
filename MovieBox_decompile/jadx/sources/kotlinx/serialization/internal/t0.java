package kotlinx.serialization.internal;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.SerializationException;

public abstract class t0 implements kotlinx.serialization.b {

    private final kotlinx.serialization.b f65231a;

    private final kotlinx.serialization.b f65232b;

    public t0(kotlinx.serialization.b bVar, kotlinx.serialization.b bVar2, DefaultConstructorMarker defaultConstructorMarker) {
        this(bVar, bVar2);
    }

    protected abstract Object a(Object obj);

    protected abstract Object b(Object obj);

    protected abstract Object c(Object obj, Object obj2);

    @Override
    public Object deserialize(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        sy.c cVarB = decoder.b(getDescriptor());
        if (cVarB.p()) {
            return c(sy.c.a.c(cVarB, getDescriptor(), 0, this.f65231a, null, 8, null), sy.c.a.c(cVarB, getDescriptor(), 1, this.f65232b, null, 8, null));
        }
        Object objC = d2.f65156a;
        Object objC2 = d2.f65156a;
        while (true) {
            int iO = cVarB.o(getDescriptor());
            if (iO == -1) {
                cVarB.c(getDescriptor());
                if (objC == d2.f65156a) {
                    throw new SerializationException("Element 'key' is missing");
                }
                if (objC2 != d2.f65156a) {
                    return c(objC, objC2);
                }
                throw new SerializationException("Element 'value' is missing");
            }
            if (iO == 0) {
                objC = sy.c.a.c(cVarB, getDescriptor(), 0, this.f65231a, null, 8, null);
            } else {
                if (iO != 1) {
                    throw new SerializationException("Invalid index: " + iO);
                }
                objC2 = sy.c.a.c(cVarB, getDescriptor(), 1, this.f65232b, null, 8, null);
            }
        }
    }

    @Override
    public void serialize(sy.f encoder, Object obj) {
        Intrinsics.h(encoder, "encoder");
        sy.d dVarB = encoder.b(getDescriptor());
        dVarB.C(getDescriptor(), 0, this.f65231a, a(obj));
        dVarB.C(getDescriptor(), 1, this.f65232b, b(obj));
        dVarB.c(getDescriptor());
    }

    private t0(kotlinx.serialization.b bVar, kotlinx.serialization.b bVar2) {
        this.f65231a = bVar;
        this.f65232b = bVar2;
    }
}
