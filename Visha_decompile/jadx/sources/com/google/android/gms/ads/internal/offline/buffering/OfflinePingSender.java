package com.google.android.gms.ads.internal.offline.buffering;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.internal.ads.zzbou;
import com.google.android.gms.internal.ads.zzbsr;

public class OfflinePingSender extends Worker {
    public final zzbsr b;

    public OfflinePingSender(@NonNull Context context, @NonNull WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.b = zzbb.zza().zzo(context, new zzbou());
    }

    @Override
    @NonNull
    public final ListenableWorker.Result doWork() {
        try {
            this.b.zzh();
            return ListenableWorker.Result.success();
        } catch (RemoteException unused) {
            return ListenableWorker.Result.failure();
        }
    }
}
