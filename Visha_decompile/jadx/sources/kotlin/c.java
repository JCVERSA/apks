package kotlin;

import defpackage.y45;

public abstract class c {
    public static final Object a(Throwable th) {
        y45.j(th, "exception");
        return new Result.Failure(th);
    }

    public static final void b(Object obj) {
        if (obj instanceof Result.Failure) {
            throw ((Result.Failure) obj).exception;
        }
    }
}
