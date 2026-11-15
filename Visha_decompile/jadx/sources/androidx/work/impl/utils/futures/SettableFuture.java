package androidx.work.impl.utils.futures;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import defpackage.im5;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class SettableFuture<V> extends AbstractFuture<V> {
    private SettableFuture() {
    }

    public static <V> SettableFuture<V> create() {
        return new SettableFuture<>();
    }

    @Override
    public boolean set(@Nullable V v) {
        return super.set(v);
    }

    @Override
    public boolean setException(Throwable th) {
        return super.setException(th);
    }

    @Override
    public boolean setFuture(im5 im5Var) {
        return super.setFuture(im5Var);
    }
}
