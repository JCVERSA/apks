package defpackage;

import java.util.Iterator;
import kotlin.coroutines.d;
import kotlinx.coroutines.internal.DiagnosticCoroutineContextException;
import kotlinx.coroutines.internal.ExceptionSuccessfullyProcessed;

public abstract class jk1 {
    public static final void a(d dVar, Throwable th) {
        Iterator it = ik1.a().iterator();
        while (it.hasNext()) {
            try {
                ((hk1) it.next()).handleException(dVar, th);
            } catch (ExceptionSuccessfullyProcessed unused) {
                return;
            } catch (Throwable th2) {
                ik1.b(kk1.b(th, th2));
            }
        }
        try {
            ue3.a(th, new DiagnosticCoroutineContextException(dVar));
        } catch (Throwable unused2) {
        }
        ik1.b(th);
    }
}
