package defpackage;

public interface fd1 {

    public static final class a {
        public static int a(fd1 fd1Var, kotlinx.serialization.descriptors.a aVar) {
            y45.j(aVar, "descriptor");
            return -1;
        }

        public static boolean b(fd1 fd1Var) {
            return false;
        }

        public static Object c(fd1 fd1Var, kotlinx.serialization.descriptors.a aVar, int i, k92 k92Var, Object obj, int i2, Object obj2) {
            if (obj2 != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decodeSerializableElement");
            }
            if ((i2 & 8) != 0) {
                obj = null;
            }
            return fd1Var.A(aVar, i, k92Var, obj);
        }
    }

    Object A(kotlinx.serialization.descriptors.a aVar, int i, k92 k92Var, Object obj);

    byte C(kotlinx.serialization.descriptors.a aVar, int i);

    boolean D(kotlinx.serialization.descriptors.a aVar, int i);

    short F(kotlinx.serialization.descriptors.a aVar, int i);

    double G(kotlinx.serialization.descriptors.a aVar, int i);

    td9 a();

    void c(kotlinx.serialization.descriptors.a aVar);

    long e(kotlinx.serialization.descriptors.a aVar, int i);

    int f(kotlinx.serialization.descriptors.a aVar, int i);

    String i(kotlinx.serialization.descriptors.a aVar, int i);

    boolean j();

    hu1 k(kotlinx.serialization.descriptors.a aVar, int i);

    char p(kotlinx.serialization.descriptors.a aVar, int i);

    Object r(kotlinx.serialization.descriptors.a aVar, int i, k92 k92Var, Object obj);

    int u(kotlinx.serialization.descriptors.a aVar);

    int v(kotlinx.serialization.descriptors.a aVar);

    float y(kotlinx.serialization.descriptors.a aVar, int i);
}
