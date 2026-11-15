package kotlinx.coroutines.channels;

import kotlin.coroutines.Continuation;

public interface s {

    public static final class a {
        public static boolean a(s sVar, Throwable th2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: close");
            }
            if ((i10 & 1) != 0) {
                th2 = null;
            }
            return sVar.i(th2);
        }
    }

    Object a(Object obj);

    boolean i(Throwable th2);

    Object n(Object obj, Continuation continuation);
}
