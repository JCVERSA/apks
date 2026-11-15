package kotlinx.serialization.json;

import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

public final class t implements kotlinx.serialization.b {

    public static final t f65391a = new t();

    private static final kotlinx.serialization.descriptors.f f65392b = a.f65393b;

    private static final class a implements kotlinx.serialization.descriptors.f {

        public static final a f65393b = new a();

        private static final String f65394c = "kotlinx.serialization.json.JsonObject";

        private final kotlinx.serialization.descriptors.f f65395a = ry.a.k(ry.a.G(StringCompanionObject.f64324a), JsonElementSerializer.f65255a).getDescriptor();

        private a() {
        }

        @Override
        public boolean b() {
            return this.f65395a.b();
        }

        @Override
        public int c(String name) {
            Intrinsics.h(name, "name");
            return this.f65395a.c(name);
        }

        @Override
        public kotlinx.serialization.descriptors.h d() {
            return this.f65395a.d();
        }

        @Override
        public int e() {
            return this.f65395a.e();
        }

        @Override
        public String f(int i10) {
            return this.f65395a.f(i10);
        }

        @Override
        public List g(int i10) {
            return this.f65395a.g(i10);
        }

        @Override
        public List getAnnotations() {
            return this.f65395a.getAnnotations();
        }

        @Override
        public kotlinx.serialization.descriptors.f h(int i10) {
            return this.f65395a.h(i10);
        }

        @Override
        public String i() {
            return f65394c;
        }

        @Override
        public boolean isInline() {
            return this.f65395a.isInline();
        }

        @Override
        public boolean j(int i10) {
            return this.f65395a.j(i10);
        }
    }

    private t() {
    }

    @Override
    public JsonObject deserialize(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        k.g(decoder);
        return new JsonObject((Map) ry.a.k(ry.a.G(StringCompanionObject.f64324a), JsonElementSerializer.f65255a).deserialize(decoder));
    }

    @Override
    public void serialize(sy.f encoder, JsonObject value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        k.h(encoder);
        ry.a.k(ry.a.G(StringCompanionObject.f64324a), JsonElementSerializer.f65255a).serialize(encoder, value);
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f65392b;
    }
}
