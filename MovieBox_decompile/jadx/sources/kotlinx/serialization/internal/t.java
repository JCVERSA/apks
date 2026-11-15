package kotlinx.serialization.internal;

import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

final class t implements x1 {

    private final Function1 f65228a;

    private final a f65229b;

    public static final class a extends ClassValue {
        a() {
        }

        @Override
        public m computeValue(Class type) {
            Intrinsics.h(type, "type");
            return new m((kotlinx.serialization.b) t.this.f65228a.invoke(JvmClassMappingKt.c(type)));
        }
    }

    public t(Function1 compute) {
        Intrinsics.h(compute, "compute");
        this.f65228a = compute;
        this.f65229b = c();
    }

    private final a c() {
        return new a();
    }

    @Override
    public kotlinx.serialization.b a(KClass key) {
        Intrinsics.h(key, "key");
        return ((m) this.f65229b.get(JvmClassMappingKt.a(key))).f65199a;
    }
}
