package kotlinx.coroutines.flow.internal;

import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.h1;

final class t extends SharedFlowImpl implements h1 {
    public t(int i10) {
        super(1, Integer.MAX_VALUE, BufferOverflow.DROP_OLDEST);
        b(Integer.valueOf(i10));
    }

    @Override
    public Integer getValue() {
        Integer numValueOf;
        synchronized (this) {
            numValueOf = Integer.valueOf(((Number) M()).intValue());
        }
        return numValueOf;
    }

    public final boolean a0(int i10) {
        boolean zB;
        synchronized (this) {
            zB = b(Integer.valueOf(((Number) M()).intValue() + i10));
        }
        return zB;
    }
}
