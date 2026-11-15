package defpackage;

public interface ca3 {

    public static final class a {
        public static id1 a(ca3 ca3Var, kotlinx.serialization.descriptors.a aVar, int i) {
            y45.j(aVar, "descriptor");
            return ca3Var.b(aVar);
        }

        public static void b(ca3 ca3Var) {
        }

        public static void c(ca3 ca3Var, nd9 nd9Var, Object obj) {
            y45.j(nd9Var, "serializer");
            if (nd9Var.getDescriptor().b()) {
                ca3Var.C(nd9Var, obj);
            } else if (obj == null) {
                ca3Var.A();
            } else {
                ca3Var.E();
                ca3Var.C(nd9Var, obj);
            }
        }

        public static void d(ca3 ca3Var, nd9 nd9Var, Object obj) {
            y45.j(nd9Var, "serializer");
            nd9Var.serialize(ca3Var, obj);
        }
    }

    void A();

    void C(nd9 nd9Var, Object obj);

    void D(char c);

    void E();

    td9 a();

    id1 b(kotlinx.serialization.descriptors.a aVar);

    void e(byte b);

    void f(kotlinx.serialization.descriptors.a aVar, int i);

    ca3 g(kotlinx.serialization.descriptors.a aVar);

    void k(short s);

    void l(boolean z);

    void m(float f);

    void s(int i);

    void v(String str);

    void x(double d);

    id1 y(kotlinx.serialization.descriptors.a aVar, int i);

    void z(long j);
}
