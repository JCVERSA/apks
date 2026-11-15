package defpackage;

import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.SharedFlowImpl;

public final class g2a extends SharedFlowImpl implements gx9 {
    public g2a(int i) {
        super(1, Integer.MAX_VALUE, BufferOverflow.DROP_OLDEST);
        c(Integer.valueOf(i));
    }

    @Override
    public Integer getValue() {
        Integer numValueOf;
        synchronized (this) {
            numValueOf = Integer.valueOf(((Number) L()).intValue());
        }
        return numValueOf;
    }

    public final boolean Z(int i) {
        boolean zC;
        synchronized (this) {
            zC = c(Integer.valueOf(((Number) L()).intValue() + i));
        }
        return zC;
    }
}
