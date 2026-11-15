package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlinx.coroutines.i1;

abstract class l {
    public static final void a(r rVar, Throwable th2) {
        CancellationException cancellationExceptionA = null;
        if (th2 != null) {
            cancellationExceptionA = th2 instanceof CancellationException ? (CancellationException) th2 : null;
            if (cancellationExceptionA == null) {
                cancellationExceptionA = i1.a("Channel was consumed, consumer had failed", th2);
            }
        }
        rVar.cancel(cancellationExceptionA);
    }
}
