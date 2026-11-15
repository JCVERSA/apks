package kotlinx.serialization.json;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class c implements kotlinx.serialization.b {

    public static final c f65268a = new c();

    private static final kotlinx.serialization.descriptors.f f65269b = a.f65270b;

    private static final class a implements kotlinx.serialization.descriptors.f {

        public static final a f65270b = new a();

        private static final String f65271c = "kotlinx.serialization.json.JsonArray";

        private final kotlinx.serialization.descriptors.f f65272a = ry.a.h(JsonElementSerializer.f65255a).getDescriptor();

        private a() {
        }

        @Override
        public boolean b() {
            return this.f65272a.b();
        }

        @Override
        public int c(String name) {
            Intrinsics.h(name, "name");
            return this.f65272a.c(name);
        }

        @Override
        public kotlinx.serialization.descriptors.h d() {
            return this.f65272a.d();
        }

        @Override
        public int e() {
            return this.f65272a.e();
        }

        @Override
        public String f(int i10) {
            return this.f65272a.f(i10);
        }

        @Override
        public List g(int i10) {
            return this.f65272a.g(i10);
        }

        @Override
        public List getAnnotations() {
            return this.f65272a.getAnnotations();
        }

        @Override
        public kotlinx.serialization.descriptors.f h(int i10) {
            return this.f65272a.h(i10);
        }

        @Override
        public String i() {
            return f65271c;
        }

        @Override
        public boolean isInline() {
            return this.f65272a.isInline();
        }

        @Override
        public boolean j(int i10) {
            return this.f65272a.j(i10);
        }
    }

    private c() {
    }

    @Override
    public b deserialize(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        k.g(decoder);
        return new b((List) ry.a.h(JsonElementSerializer.f65255a).deserialize(decoder));
    }

    @Override
    public void serialize(sy.f encoder, b value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        k.h(encoder);
        ry.a.h(JsonElementSerializer.f65255a).serialize(encoder, value);
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f65269b;
    }
}
