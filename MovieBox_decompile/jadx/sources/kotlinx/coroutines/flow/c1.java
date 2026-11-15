package kotlinx.coroutines.flow;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;

public abstract class c1 {

    public static final kotlinx.coroutines.internal.z f64806a = new kotlinx.coroutines.internal.z("NO_VALUE");

    public static final w0 a(int i10, int i11, BufferOverflow bufferOverflow) {
        if (i10 < 0) {
            throw new IllegalArgumentException(("replay cannot be negative, but was " + i10).toString());
        }
        if (i11 < 0) {
            throw new IllegalArgumentException(("extraBufferCapacity cannot be negative, but was " + i11).toString());
        }
        if (i10 > 0 || i11 > 0 || bufferOverflow == BufferOverflow.SUSPEND) {
            int i12 = i11 + i10;
            if (i12 < 0) {
                i12 = Integer.MAX_VALUE;
            }
            return new SharedFlowImpl(i10, i12, bufferOverflow);
        }
        throw new IllegalArgumentException(("replay or extraBufferCapacity must be positive with non-default onBufferOverflow strategy " + bufferOverflow).toString());
    }

    public static w0 b(int i10, int i11, BufferOverflow bufferOverflow, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        if ((i12 & 4) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        return a(i10, i11, bufferOverflow);
    }

    public static final a e(b1 b1Var, CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow) {
        return ((i10 == 0 || i10 == -3) && bufferOverflow == BufferOverflow.SUSPEND) ? b1Var : new kotlinx.coroutines.flow.internal.e(b1Var, coroutineContext, i10, bufferOverflow);
    }

    public static final Object f(Object[] objArr, long j10) {
        return objArr[((int) j10) & (objArr.length - 1)];
    }

    public static final void g(Object[] objArr, long j10, Object obj) {
        objArr[((int) j10) & (objArr.length - 1)] = obj;
    }
}
