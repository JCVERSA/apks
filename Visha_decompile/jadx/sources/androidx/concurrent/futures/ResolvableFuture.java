package androidx.concurrent.futures;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import defpackage.im5;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
public final class ResolvableFuture<V> extends AbstractResolvableFuture<V> {
    private ResolvableFuture() {
    }

    @NonNull
    public static <V> ResolvableFuture<V> create() {
        return new ResolvableFuture<>();
    }

    @Override
    public boolean set(@Nullable V v) {
        return super.set(v);
    }

    @Override
    public boolean setException(@NonNull Throwable th) {
        return super.setException(th);
    }

    @Override
    public boolean setFuture(@NonNull im5 im5Var) {
        return super.setFuture(im5Var);
    }
}
