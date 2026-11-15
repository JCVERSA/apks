package kotlinx.coroutines;

import defpackage.e74;
import defpackage.pc9;
import defpackage.s74;
import defpackage.sa9;
import defpackage.uc2;
import defpackage.vv0;
import defpackage.wh1;
import defpackage.xv0;
import java.util.concurrent.CancellationException;

public interface j extends kotlin.coroutines.d.b {
    public static final b B6 = b.b;

    public static final class a {
        public static void b(j jVar, CancellationException cancellationException, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i & 1) != 0) {
                cancellationException = null;
            }
            jVar.cancel(cancellationException);
        }

        public static Object c(j jVar, Object obj, s74 s74Var) {
            return kotlin.coroutines.d.b.a.a(jVar, obj, s74Var);
        }

        public static kotlin.coroutines.d.b d(j jVar, kotlin.coroutines.d.c cVar) {
            return kotlin.coroutines.d.b.a.b(jVar, cVar);
        }

        public static kotlin.coroutines.d e(j jVar, kotlin.coroutines.d.c cVar) {
            return kotlin.coroutines.d.b.a.c(jVar, cVar);
        }

        public static kotlin.coroutines.d f(j jVar, kotlin.coroutines.d dVar) {
            return kotlin.coroutines.d.b.a.d(jVar, dVar);
        }

        public static j g(j jVar, j jVar2) {
            return jVar2;
        }
    }

    public static final class b implements kotlin.coroutines.d.c {
        public static final b b = new b();
    }

    vv0 attachChild(xv0 xv0Var);

    void cancel(CancellationException cancellationException);

    CancellationException getCancellationException();

    pc9 getChildren();

    sa9 getOnJoin();

    uc2 invokeOnCompletion(e74 e74Var);

    uc2 invokeOnCompletion(boolean z, boolean z2, e74 e74Var);

    boolean isActive();

    boolean isCompleted();

    Object join(wh1 wh1Var);

    boolean start();
}
