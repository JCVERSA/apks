package kotlinx.coroutines.flow;

import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.t1;

abstract class q {
    public static final a a(a aVar, int i10, BufferOverflow bufferOverflow) {
        if (i10 < 0 && i10 != -2 && i10 != -1) {
            throw new IllegalArgumentException(("Buffer size should be non-negative, BUFFERED, or CONFLATED, but was " + i10).toString());
        }
        if (i10 == -1 && bufferOverflow != BufferOverflow.SUSPEND) {
            throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow");
        }
        if (i10 == -1) {
            bufferOverflow = BufferOverflow.DROP_OLDEST;
            i10 = 0;
        }
        int i11 = i10;
        BufferOverflow bufferOverflow2 = bufferOverflow;
        if (aVar instanceof kotlinx.coroutines.flow.internal.j) {
            return kotlinx.coroutines.flow.internal.j.a.a((kotlinx.coroutines.flow.internal.j) aVar, null, i11, bufferOverflow2, 1, null);
        }
        return new kotlinx.coroutines.flow.internal.e(aVar, null, i11, bufferOverflow2, 2, null);
    }

    public static a b(a aVar, int i10, BufferOverflow bufferOverflow, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = -2;
        }
        if ((i11 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        return c.c(aVar, i10, bufferOverflow);
    }

    private static final void c(CoroutineContext coroutineContext) {
        if (coroutineContext.get(t1.f65027m1) == null) {
            return;
        }
        throw new IllegalArgumentException(("Flow context cannot contain job in it. Had " + coroutineContext).toString());
    }

    public static final a d(a aVar) {
        return b(aVar, -1, null, 2, null);
    }

    public static final a e(a aVar, CoroutineContext coroutineContext) {
        c(coroutineContext);
        if (Intrinsics.c(coroutineContext, EmptyCoroutineContext.INSTANCE)) {
            return aVar;
        }
        if (aVar instanceof kotlinx.coroutines.flow.internal.j) {
            return kotlinx.coroutines.flow.internal.j.a.a((kotlinx.coroutines.flow.internal.j) aVar, coroutineContext, 0, null, 6, null);
        }
        return new kotlinx.coroutines.flow.internal.e(aVar, coroutineContext, 0, null, 12, null);
    }
}
