package kotlinx.serialization.json.internal;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

public final class j0 implements ty.e {

    private final boolean f65346a;

    private final String f65347b;

    public j0(boolean z10, String discriminator) {
        Intrinsics.h(discriminator, "discriminator");
        this.f65346a = z10;
        this.f65347b = discriminator;
    }

    private final void d(kotlinx.serialization.descriptors.f fVar, KClass kClass) {
        int iE = fVar.e();
        for (int i10 = 0; i10 < iE; i10++) {
            String strF = fVar.f(i10);
            if (Intrinsics.c(strF, this.f65347b)) {
                throw new IllegalArgumentException("Polymorphic serializer for " + kClass + " has property '" + strF + "' that conflicts with JSON class discriminator. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism");
            }
        }
    }

    private final void e(kotlinx.serialization.descriptors.f fVar, KClass kClass) {
        kotlinx.serialization.descriptors.h hVarD = fVar.d();
        if ((hVarD instanceof kotlinx.serialization.descriptors.d) || Intrinsics.c(hVarD, kotlinx.serialization.descriptors.h.a.f65099a)) {
            throw new IllegalArgumentException("Serializer for " + kClass.g() + " can't be registered as a subclass for polymorphic serialization because its kind " + hVarD + " is not concrete. To work with multiple hierarchies, register it as a base class.");
        }
        if (this.f65346a) {
            return;
        }
        if (Intrinsics.c(hVarD, kotlinx.serialization.descriptors.i.b.f65102a) || Intrinsics.c(hVarD, kotlinx.serialization.descriptors.i.c.f65103a) || (hVarD instanceof kotlinx.serialization.descriptors.e) || (hVarD instanceof kotlinx.serialization.descriptors.h.b)) {
            throw new IllegalArgumentException("Serializer for " + kClass.g() + " of kind " + hVarD + " cannot be serialized polymorphically with class discriminator.");
        }
    }

    @Override
    public void a(KClass baseClass, KClass actualClass, kotlinx.serialization.b actualSerializer) {
        Intrinsics.h(baseClass, "baseClass");
        Intrinsics.h(actualClass, "actualClass");
        Intrinsics.h(actualSerializer, "actualSerializer");
        kotlinx.serialization.descriptors.f descriptor = actualSerializer.getDescriptor();
        e(descriptor, actualClass);
        if (this.f65346a) {
            return;
        }
        d(descriptor, actualClass);
    }

    @Override
    public void b(KClass baseClass, Function1 defaultDeserializerProvider) {
        Intrinsics.h(baseClass, "baseClass");
        Intrinsics.h(defaultDeserializerProvider, "defaultDeserializerProvider");
    }

    @Override
    public void c(KClass baseClass, Function1 defaultSerializerProvider) {
        Intrinsics.h(baseClass, "baseClass");
        Intrinsics.h(defaultSerializerProvider, "defaultSerializerProvider");
    }
}
