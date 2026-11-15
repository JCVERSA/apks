package defpackage;

import java.lang.reflect.InvocationTargetException;
import kotlin.coroutines.d;
import kotlinx.coroutines.internal.UndeliveredElementException;

public abstract class qf7 {
    public static final void a(e74 e74Var, Object obj, d dVar) throws IllegalAccessException, InvocationTargetException {
        UndeliveredElementException undeliveredElementExceptionB = b(e74Var, obj, null);
        if (undeliveredElementExceptionB != null) {
            kk1.a(dVar, undeliveredElementExceptionB);
        }
    }

    public static final UndeliveredElementException b(e74 e74Var, Object obj, UndeliveredElementException undeliveredElementException) throws IllegalAccessException, InvocationTargetException {
        try {
            e74Var.invoke(obj);
        } catch (Throwable th) {
            if (undeliveredElementException == null || undeliveredElementException.getCause() == th) {
                return new UndeliveredElementException("Exception in undelivered element handler for " + obj, th);
            }
            ue3.a(undeliveredElementException, th);
        }
        return undeliveredElementException;
    }

    public static UndeliveredElementException c(e74 e74Var, Object obj, UndeliveredElementException undeliveredElementException, int i, Object obj2) {
        if ((i & 2) != 0) {
            undeliveredElementException = null;
        }
        return b(e74Var, obj, undeliveredElementException);
    }
}
