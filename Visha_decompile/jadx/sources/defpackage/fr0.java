package defpackage;

import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.b;
import kotlinx.coroutines.internal.DispatchedContinuation;

public abstract class fr0 {
    public static final void a(cr0 cr0Var, uc2 uc2Var) {
        c(cr0Var, new xc2(uc2Var));
    }

    public static final CancellableContinuationImpl b(wh1 wh1Var) {
        if (!(wh1Var instanceof DispatchedContinuation)) {
            return new CancellableContinuationImpl(wh1Var, 1);
        }
        CancellableContinuationImpl cancellableContinuationImplClaimReusableCancellableContinuation$kotlinx_coroutines_core = ((DispatchedContinuation) wh1Var).claimReusableCancellableContinuation$kotlinx_coroutines_core();
        if (cancellableContinuationImplClaimReusableCancellableContinuation$kotlinx_coroutines_core != null) {
            if (!cancellableContinuationImplClaimReusableCancellableContinuation$kotlinx_coroutines_core.resetStateReusable()) {
                cancellableContinuationImplClaimReusableCancellableContinuation$kotlinx_coroutines_core = null;
            }
            if (cancellableContinuationImplClaimReusableCancellableContinuation$kotlinx_coroutines_core != null) {
                return cancellableContinuationImplClaimReusableCancellableContinuation$kotlinx_coroutines_core;
            }
        }
        return new CancellableContinuationImpl(wh1Var, 2);
    }

    public static final void c(cr0 cr0Var, b bVar) {
        if (!(cr0Var instanceof CancellableContinuationImpl)) {
            throw new UnsupportedOperationException("third-party implementation of CancellableContinuation is not supported");
        }
        ((CancellableContinuationImpl) cr0Var).invokeOnCancellationInternal$kotlinx_coroutines_core(bVar);
    }
}
