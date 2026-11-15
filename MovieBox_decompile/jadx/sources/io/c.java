package io;

import kotlin.jvm.functions.Function0;

public interface c {

    public static final class a {
        public static void a(c cVar, Function0 function0, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: doRefresh");
            }
            if ((i10 & 1) != 0) {
                function0 = null;
            }
            cVar.doRefresh(function0);
        }
    }

    void doRefresh(Function0 function0);
}
