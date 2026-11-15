package defpackage;

import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.b;

public abstract class cu0 {
    public static final ps0 a(int i, BufferOverflow bufferOverflow, e74 e74Var) {
        ps0 bufferedChannel;
        if (i == -2) {
            bufferedChannel = bufferOverflow == BufferOverflow.SUSPEND ? new BufferedChannel(ps0.v1.a(), e74Var) : new b(1, bufferOverflow, e74Var);
        } else {
            if (i == -1) {
                if (bufferOverflow == BufferOverflow.SUSPEND) {
                    return new b(1, BufferOverflow.DROP_OLDEST, e74Var);
                }
                throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow");
            }
            if (i != 0) {
                if (i != Integer.MAX_VALUE) {
                    return bufferOverflow == BufferOverflow.SUSPEND ? new BufferedChannel(i, e74Var) : new b(i, bufferOverflow, e74Var);
                }
                return new BufferedChannel(Integer.MAX_VALUE, e74Var);
            }
            bufferedChannel = bufferOverflow == BufferOverflow.SUSPEND ? new BufferedChannel(0, e74Var) : new b(1, bufferOverflow, e74Var);
        }
        return bufferedChannel;
    }

    public static ps0 b(int i, BufferOverflow bufferOverflow, e74 e74Var, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        if ((i2 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        if ((i2 & 4) != 0) {
            e74Var = null;
        }
        return a(i, bufferOverflow, e74Var);
    }
}
