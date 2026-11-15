package defpackage;

import java.util.concurrent.CancellationException;

public abstract class uu0 {
    public static final void a(qo8 qo8Var, Throwable th) {
        CancellationException cancellationExceptionA = null;
        if (th != null) {
            cancellationExceptionA = th instanceof CancellationException ? (CancellationException) th : null;
            if (cancellationExceptionA == null) {
                cancellationExceptionA = se3.a("Channel was consumed, consumer had failed", th);
            }
        }
        qo8Var.cancel(cancellationExceptionA);
    }
}
