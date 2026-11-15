package defpackage;

import kotlinx.coroutines.flow.internal.AbortFlowException;

public abstract class rz3 {
    public static final void a(AbortFlowException abortFlowException, Object obj) {
        if (abortFlowException.owner != obj) {
            throw abortFlowException;
        }
    }
}
