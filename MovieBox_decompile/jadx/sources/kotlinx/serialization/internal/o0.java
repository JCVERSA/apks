package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

public abstract class o0 {

    public static final class a implements i0 {

        final kotlinx.serialization.b f65207a;

        a(kotlinx.serialization.b bVar) {
            this.f65207a = bVar;
        }

        @Override
        public kotlinx.serialization.b[] childSerializers() {
            return new kotlinx.serialization.b[]{this.f65207a};
        }

        @Override
        public Object deserialize(sy.e decoder) {
            Intrinsics.h(decoder, "decoder");
            throw new IllegalStateException("unsupported");
        }

        @Override
        public kotlinx.serialization.descriptors.f getDescriptor() {
            throw new IllegalStateException("unsupported");
        }

        @Override
        public void serialize(sy.f encoder, Object obj) {
            Intrinsics.h(encoder, "encoder");
            throw new IllegalStateException("unsupported");
        }

        @Override
        public kotlinx.serialization.b[] typeParametersSerializers() {
            return i0.a.a(this);
        }
    }

    public static final kotlinx.serialization.descriptors.f a(String name, kotlinx.serialization.b primitiveSerializer) {
        Intrinsics.h(name, "name");
        Intrinsics.h(primitiveSerializer, "primitiveSerializer");
        return new n0(name, new a(primitiveSerializer));
    }
}
