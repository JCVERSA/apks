package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;

public interface j extends kotlinx.coroutines.flow.a {

    public static final class a {
        public static kotlinx.coroutines.flow.a a(j jVar, CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fuse");
            }
            if ((i11 & 1) != 0) {
                coroutineContext = EmptyCoroutineContext.INSTANCE;
            }
            if ((i11 & 2) != 0) {
                i10 = -3;
            }
            if ((i11 & 4) != 0) {
                bufferOverflow = BufferOverflow.SUSPEND;
            }
            return jVar.d(coroutineContext, i10, bufferOverflow);
        }
    }

    kotlinx.coroutines.flow.a d(CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow);
}
