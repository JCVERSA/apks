package sy;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.g;

public interface f {

    public static final class a {
        public static d a(f fVar, kotlinx.serialization.descriptors.f descriptor, int i10) {
            Intrinsics.h(descriptor, "descriptor");
            return fVar.b(descriptor);
        }

        public static void b(f fVar) {
        }

        public static void c(f fVar, g serializer, Object obj) {
            Intrinsics.h(serializer, "serializer");
            if (serializer.getDescriptor().b()) {
                fVar.e(serializer, obj);
            } else if (obj == null) {
                fVar.o();
            } else {
                fVar.v();
                fVar.e(serializer, obj);
            }
        }

        public static void d(f fVar, g serializer, Object obj) {
            Intrinsics.h(serializer, "serializer");
            serializer.serialize(fVar, obj);
        }
    }

    void B(int i10);

    void G(String str);

    ty.c a();

    d b(kotlinx.serialization.descriptors.f fVar);

    void e(g gVar, Object obj);

    void g(double d10);

    void h(byte b10);

    d j(kotlinx.serialization.descriptors.f fVar, int i10);

    void k(kotlinx.serialization.descriptors.f fVar, int i10);

    f l(kotlinx.serialization.descriptors.f fVar);

    void m(long j10);

    void o();

    void q(short s10);

    void r(boolean z10);

    void t(float f10);

    void u(char c10);

    void v();
}
