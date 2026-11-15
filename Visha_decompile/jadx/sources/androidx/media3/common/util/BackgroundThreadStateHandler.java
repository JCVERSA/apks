package androidx.media3.common.util;

import android.os.Looper;
import defpackage.o74;

@UnstableApi
public final class BackgroundThreadStateHandler<T> {
    private final HandlerWrapper backgroundHandler;
    private T backgroundState;
    private final HandlerWrapper foregroundHandler;
    private T foregroundState;
    private final StateChangeListener<T> onStateChanged;
    private int pendingOperations;

    public interface StateChangeListener<T> {
        void onStateChanged(T t, T t2);
    }

    public BackgroundThreadStateHandler(T t, Looper looper, Looper looper2, Clock clock, StateChangeListener<T> stateChangeListener) {
        this.backgroundHandler = clock.createHandler(looper, null);
        this.foregroundHandler = clock.createHandler(looper2, null);
        this.foregroundState = t;
        this.backgroundState = t;
        this.onStateChanged = stateChangeListener;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void lambda$setStateInBackground$2(Object obj) {
        if (this.pendingOperations == 0) {
            updateStateInForeground(obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void lambda$updateStateAsync$0(Object obj) {
        int i = this.pendingOperations - 1;
        this.pendingOperations = i;
        if (i == 0) {
            updateStateInForeground(obj);
        }
    }

    public void lambda$updateStateAsync$1(o74 o74Var) {
        final T t = (T) o74Var.apply(this.backgroundState);
        this.backgroundState = t;
        this.foregroundHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$updateStateAsync$0(t);
            }
        });
    }

    private void updateStateInForeground(T t) {
        T t2 = this.foregroundState;
        this.foregroundState = t;
        if (t2.equals(t)) {
            return;
        }
        this.onStateChanged.onStateChanged(t2, t);
    }

    public T get() {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper == this.foregroundHandler.getLooper()) {
            return this.foregroundState;
        }
        Assertions.checkState(looperMyLooper == this.backgroundHandler.getLooper());
        return this.backgroundState;
    }

    public void runInBackground(Runnable runnable) {
        this.backgroundHandler.post(runnable);
    }

    public void setStateInBackground(final T t) {
        this.backgroundState = t;
        this.foregroundHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$setStateInBackground$2(t);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void updateStateAsync(o74 o74Var, final o74 o74Var2) {
        Assertions.checkState(Looper.myLooper() == this.foregroundHandler.getLooper());
        this.pendingOperations++;
        this.backgroundHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$updateStateAsync$1(o74Var2);
            }
        });
        updateStateInForeground(o74Var.apply(this.foregroundState));
    }
}
