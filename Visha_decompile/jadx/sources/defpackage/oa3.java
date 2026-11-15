package defpackage;

import io.reactivex.exceptions.ProtocolViolationException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

public abstract class oa3 {
    public static String a(String str) {
        return "It is not allowed to subscribe with a(n) " + str + " multiple times. Please create a fresh instance of " + str + " and subscribe that to the target source instead.";
    }

    public static void b(Class cls) {
        yw8.s(new ProtocolViolationException(a(cls.getName())));
    }

    public static boolean c(AtomicReference atomicReference, rc2 rc2Var, Class cls) {
        ac7.d(rc2Var, "next is null");
        if (wk5.a(atomicReference, null, rc2Var)) {
            return true;
        }
        rc2Var.dispose();
        if (atomicReference.get() == DisposableHelper.DISPOSED) {
            return false;
        }
        b(cls);
        return false;
    }

    public static boolean d(AtomicReference atomicReference, f2a f2aVar, Class cls) {
        ac7.d(f2aVar, "next is null");
        if (wk5.a(atomicReference, null, f2aVar)) {
            return true;
        }
        f2aVar.cancel();
        if (atomicReference.get() == SubscriptionHelper.CANCELLED) {
            return false;
        }
        b(cls);
        return false;
    }
}
