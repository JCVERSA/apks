package defpackage;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.d;
import kotlinx.coroutines.channels.BufferOverflow;

public interface i94 extends nz3 {

    public static final class a {
        public static nz3 a(i94 i94Var, d dVar, int i, BufferOverflow bufferOverflow, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fuse");
            }
            if ((i2 & 1) != 0) {
                dVar = EmptyCoroutineContext.INSTANCE;
            }
            if ((i2 & 2) != 0) {
                i = -3;
            }
            if ((i2 & 4) != 0) {
                bufferOverflow = BufferOverflow.SUSPEND;
            }
            return i94Var.d(dVar, i, bufferOverflow);
        }
    }

    nz3 d(d dVar, int i, BufferOverflow bufferOverflow);
}
