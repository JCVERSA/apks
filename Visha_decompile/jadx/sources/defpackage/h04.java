package defpackage;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.d;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.j;

public abstract class h04 {
    public static final nz3 a(nz3 nz3Var, int i, BufferOverflow bufferOverflow) {
        if (i < 0 && i != -2 && i != -1) {
            throw new IllegalArgumentException(("Buffer size should be non-negative, BUFFERED, or CONFLATED, but was " + i).toString());
        }
        if (i == -1 && bufferOverflow != BufferOverflow.SUSPEND) {
            throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow");
        }
        if (i == -1) {
            bufferOverflow = BufferOverflow.DROP_OLDEST;
            i = 0;
        }
        int i2 = i;
        BufferOverflow bufferOverflow2 = bufferOverflow;
        if (nz3Var instanceof i94) {
            return i94.a.a((i94) nz3Var, null, i2, bufferOverflow2, 1, null);
        }
        return new xs0(nz3Var, null, i2, bufferOverflow2, 2, null);
    }

    public static nz3 b(nz3 nz3Var, int i, BufferOverflow bufferOverflow, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = -2;
        }
        if ((i2 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        return sz3.b(nz3Var, i, bufferOverflow);
    }

    public static final void c(d dVar) {
        if (dVar.get(j.B6) == null) {
            return;
        }
        throw new IllegalArgumentException(("Flow context cannot contain job in it. Had " + dVar).toString());
    }

    public static final nz3 d(nz3 nz3Var) {
        return b(nz3Var, -1, null, 2, null);
    }

    public static final nz3 e(nz3 nz3Var, d dVar) {
        c(dVar);
        if (y45.e(dVar, EmptyCoroutineContext.INSTANCE)) {
            return nz3Var;
        }
        if (nz3Var instanceof i94) {
            return i94.a.a((i94) nz3Var, dVar, 0, null, 6, null);
        }
        return new xs0(nz3Var, dVar, 0, null, 12, null);
    }
}
