package j4;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public interface j {

    public static final class a {
        public static i a(j jVar, m id2) {
            Intrinsics.h(id2, "id");
            return jVar.d(id2.b(), id2.a());
        }

        public static void b(j jVar, m id2) {
            Intrinsics.h(id2, "id");
            jVar.f(id2.b(), id2.a());
        }
    }

    i a(m mVar);

    void b(i iVar);

    void c(m mVar);

    i d(String str, int i10);

    List e();

    void f(String str, int i10);

    void g(String str);
}
