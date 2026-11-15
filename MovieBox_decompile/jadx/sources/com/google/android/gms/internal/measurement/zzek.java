package com.google.android.gms.internal.measurement;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

final class zzek implements ThreadFactory {
    private ThreadFactory zza = Executors.defaultThreadFactory();

    zzek(zzdy zzdyVar) {
    }

    @Override
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.zza.newThread(runnable);
        threadNewThread.setName("ScionFrontendApi");
        return threadNewThread;
    }
}
