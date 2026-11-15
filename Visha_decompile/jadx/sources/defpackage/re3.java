package defpackage;

import io.reactivex.internal.util.ExceptionHelper;

public abstract class re3 {
    public static RuntimeException a(Throwable th) {
        throw ExceptionHelper.d(th);
    }

    public static void b(Throwable th) {
        if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        }
        if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        }
        if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }
}
