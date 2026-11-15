package defpackage;

import kotlinx.coroutines.c;

public interface cr0 extends wh1 {
    boolean cancel(Throwable th);

    void completeResume(Object obj);

    void invokeOnCancellation(e74 e74Var);

    boolean isActive();

    boolean isCompleted();

    void resume(Object obj, u74 u74Var);

    void resumeUndispatched(c cVar, Object obj);

    Object tryResume(Object obj, Object obj2, u74 u74Var);

    Object tryResumeWithException(Throwable th);
}
