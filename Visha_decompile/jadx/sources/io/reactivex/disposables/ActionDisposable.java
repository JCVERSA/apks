package io.reactivex.disposables;

import defpackage.d5;
import io.reactivex.internal.util.ExceptionHelper;

final class ActionDisposable extends ReferenceDisposable<d5> {
    private static final long serialVersionUID = -8219729196779211169L;

    public ActionDisposable(d5 d5Var) {
        super(d5Var);
    }

    @Override
    public void onDisposed(d5 d5Var) {
        try {
            d5Var.run();
        } catch (Throwable th) {
            throw ExceptionHelper.d(th);
        }
    }
}
