package defpackage;

import com.google.android.gms.internal.measurement.b;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

public final class ndg implements ThreadFactory {
    public final ThreadFactory b = Executors.defaultThreadFactory();

    public ndg(b bVar) {
    }

    @Override
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.b.newThread(runnable);
        threadNewThread.setName("ScionFrontendApi");
        return threadNewThread;
    }
}
