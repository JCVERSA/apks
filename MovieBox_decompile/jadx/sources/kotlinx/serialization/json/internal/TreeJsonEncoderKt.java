package kotlinx.serialization.json.internal;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

public abstract class TreeJsonEncoderKt {
    public static final boolean b(kotlinx.serialization.descriptors.f fVar) {
        return (fVar.d() instanceof kotlinx.serialization.descriptors.e) || fVar.d() == kotlinx.serialization.descriptors.h.b.f65100a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final kotlinx.serialization.json.h c(kotlinx.serialization.json.a aVar, Object obj, kotlinx.serialization.g serializer) {
        Intrinsics.h(aVar, "<this>");
        Intrinsics.h(serializer, "serializer");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        new c0(aVar, new Function1<kotlinx.serialization.json.h, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj2) {
                invoke((kotlinx.serialization.json.h) obj2);
                return Unit.f64096a;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public final void invoke(kotlinx.serialization.json.h it) {
                Intrinsics.h(it, "it");
                objectRef.element = it;
            }
        }).e(serializer, obj);
        T t10 = objectRef.element;
        if (t10 != 0) {
            return (kotlinx.serialization.json.h) t10;
        }
        Intrinsics.y("result");
        return null;
    }
}
