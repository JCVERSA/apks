package androidx.media3.exoplayer.util;

import androidx.media3.common.util.m;
import java.util.concurrent.Executor;

public abstract class b {

    class a implements c {

        final Executor f12725a;

        final m f12726b;

        a(Executor executor, m mVar) {
            this.f12725a = executor;
            this.f12726b = mVar;
        }

        @Override
        public void execute(Runnable runnable) {
            this.f12725a.execute(runnable);
        }

        @Override
        public void release() {
            this.f12726b.accept(this.f12725a);
        }
    }

    public static c a(Executor executor, m mVar) {
        return new a(executor, mVar);
    }
}
