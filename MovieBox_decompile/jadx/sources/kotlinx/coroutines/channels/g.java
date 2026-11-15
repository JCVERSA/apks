package kotlinx.coroutines.channels;

import kotlin.jvm.functions.Function1;

public abstract class g {
    public static final d a(int i10, BufferOverflow bufferOverflow, Function1 function1) {
        d bufferedChannel;
        if (i10 == -2) {
            bufferedChannel = bufferOverflow == BufferOverflow.SUSPEND ? new BufferedChannel(d.f64720n1.a(), function1) : new m(1, bufferOverflow, function1);
        } else {
            if (i10 == -1) {
                if (bufferOverflow == BufferOverflow.SUSPEND) {
                    return new m(1, BufferOverflow.DROP_OLDEST, function1);
                }
                throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow");
            }
            if (i10 != 0) {
                if (i10 != Integer.MAX_VALUE) {
                    return bufferOverflow == BufferOverflow.SUSPEND ? new BufferedChannel(i10, function1) : new m(i10, bufferOverflow, function1);
                }
                return new BufferedChannel(Integer.MAX_VALUE, function1);
            }
            bufferedChannel = bufferOverflow == BufferOverflow.SUSPEND ? new BufferedChannel(0, function1) : new m(1, bufferOverflow, function1);
        }
        return bufferedChannel;
    }

    public static d b(int i10, BufferOverflow bufferOverflow, Function1 function1, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        if ((i11 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        if ((i11 & 4) != 0) {
            function1 = null;
        }
        return a(i10, bufferOverflow, function1);
    }
}
