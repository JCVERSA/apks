package io.reactivex.rxjava3.internal.util;

import androidx.compose.animation.core.j0;
import io.reactivex.rxjava3.exceptions.CompositeException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public abstract class ExceptionHelper {

    public static final Throwable f62550a = new Termination();

    static final class Termination extends Throwable {
        private static final long serialVersionUID = -4649703670690200604L;

        Termination() {
            super("No further exceptions");
        }

        @Override
        public Throwable fillInStackTrace() {
            return this;
        }
    }

    public static boolean a(AtomicReference atomicReference, Throwable th2) {
        Throwable th3;
        do {
            th3 = (Throwable) atomicReference.get();
            if (th3 == f62550a) {
                return false;
            }
        } while (!j0.a(atomicReference, th3, th3 == null ? th2 : new CompositeException(th3, th2)));
        return true;
    }

    public static NullPointerException b(String str) {
        return new NullPointerException(d(str));
    }

    public static Object c(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw b(str);
    }

    public static String d(String str) {
        return str + " Null values are generally not allowed in 3.x operators and sources.";
    }

    public static Throwable e(AtomicReference atomicReference) {
        Throwable th2 = (Throwable) atomicReference.get();
        Throwable th3 = f62550a;
        return th2 != th3 ? (Throwable) atomicReference.getAndSet(th3) : th2;
    }

    public static String f(long j10, TimeUnit timeUnit) {
        return "The source did not signal an event for " + j10 + " " + timeUnit.toString().toLowerCase() + " and has been terminated.";
    }

    public static RuntimeException g(Throwable th2) {
        if (th2 instanceof Error) {
            throw ((Error) th2);
        }
        return th2 instanceof RuntimeException ? (RuntimeException) th2 : new RuntimeException(th2);
    }
}
