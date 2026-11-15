package kotlin.reflect.jvm.internal.calls;

import defpackage.wq0;
import defpackage.y45;
import java.lang.reflect.Member;
import java.lang.reflect.Type;
import java.util.List;

public interface a {

    public static final class C0371a {
        public static void a(a aVar, Object[] objArr) {
            y45.j(objArr, "args");
            if (wq0.a(aVar) == objArr.length) {
                return;
            }
            throw new IllegalArgumentException("Callable expects " + wq0.a(aVar) + " arguments, but " + objArr.length + " were provided.");
        }
    }

    List a();

    Member b();

    Object call(Object[] objArr);

    Type getReturnType();
}
