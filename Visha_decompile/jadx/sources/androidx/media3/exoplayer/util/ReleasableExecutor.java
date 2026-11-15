package androidx.media3.exoplayer.util;

import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.UnstableApi;
import java.util.concurrent.Executor;

@UnstableApi
public interface ReleasableExecutor extends Executor {
    static <T extends Executor> ReleasableExecutor from(final T t, final Consumer<T> consumer) {
        return new ReleasableExecutor() {
            @Override
            public void execute(Runnable runnable) {
                t.execute(runnable);
            }

            @Override
            public void release() {
                consumer.accept(t);
            }
        };
    }

    void release();
}
