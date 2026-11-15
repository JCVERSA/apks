package androidx.work.impl.utils;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.work.WorkerParameters;
import androidx.work.impl.d0;

public class StartWorkRunnable implements Runnable {
    private WorkerParameters.a mRuntimeExtras;
    private d0 mWorkManagerImpl;
    private androidx.work.impl.u mWorkSpecId;

    public StartWorkRunnable(@NonNull d0 d0Var, @NonNull androidx.work.impl.u uVar, @Nullable WorkerParameters.a aVar) {
        this.mWorkManagerImpl = d0Var;
        this.mWorkSpecId = uVar;
        this.mRuntimeExtras = aVar;
    }

    @Override
    public void run() {
        this.mWorkManagerImpl.q().q(this.mWorkSpecId, this.mRuntimeExtras);
    }
}
