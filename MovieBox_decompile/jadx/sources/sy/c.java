package sy;

import kotlin.jvm.internal.Intrinsics;

public interface c {

    public static final class a {
        public static int a(c cVar, kotlinx.serialization.descriptors.f descriptor) {
            Intrinsics.h(descriptor, "descriptor");
            return -1;
        }

        public static boolean b(c cVar) {
            return false;
        }

        public static Object c(c cVar, kotlinx.serialization.descriptors.f fVar, int i10, kotlinx.serialization.a aVar, Object obj, int i11, Object obj2) {
            if (obj2 != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decodeSerializableElement");
            }
            if ((i11 & 8) != 0) {
                obj = null;
            }
            return cVar.y(fVar, i10, aVar, obj);
        }
    }

    char A(kotlinx.serialization.descriptors.f fVar, int i10);

    byte B(kotlinx.serialization.descriptors.f fVar, int i10);

    boolean C(kotlinx.serialization.descriptors.f fVar, int i10);

    short E(kotlinx.serialization.descriptors.f fVar, int i10);

    double F(kotlinx.serialization.descriptors.f fVar, int i10);

    ty.c a();

    void c(kotlinx.serialization.descriptors.f fVar);

    long f(kotlinx.serialization.descriptors.f fVar, int i10);

    int i(kotlinx.serialization.descriptors.f fVar, int i10);

    int k(kotlinx.serialization.descriptors.f fVar);

    String m(kotlinx.serialization.descriptors.f fVar, int i10);

    Object n(kotlinx.serialization.descriptors.f fVar, int i10, kotlinx.serialization.a aVar, Object obj);

    int o(kotlinx.serialization.descriptors.f fVar);

    boolean p();

    e r(kotlinx.serialization.descriptors.f fVar, int i10);

    float u(kotlinx.serialization.descriptors.f fVar, int i10);

    Object y(kotlinx.serialization.descriptors.f fVar, int i10, kotlinx.serialization.a aVar, Object obj);
}
