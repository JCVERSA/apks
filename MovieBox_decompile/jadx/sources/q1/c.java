package q1;

import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.w0;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

public final class c implements v0.c {

    public static final c f69323a = new c();

    private c() {
    }

    @Override
    public t0 create(Class cls) {
        return w0.a(this, cls);
    }

    @Override
    public t0 create(Class cls, p1.a aVar) {
        return w0.b(this, cls, aVar);
    }

    @Override
    public t0 create(KClass modelClass, p1.a extras) {
        Intrinsics.h(modelClass, "modelClass");
        Intrinsics.h(extras, "extras");
        return d.f69324a.a(JvmClassMappingKt.a(modelClass));
    }
}
