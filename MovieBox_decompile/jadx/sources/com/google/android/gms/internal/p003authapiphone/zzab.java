package com.google.android.gms.internal.p003authapiphone;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.phone.SmsRetrieverClient;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

public final class zzab extends SmsRetrieverClient {
    public zzab(Activity activity) {
        super(activity);
    }

    @Override
    public final Task<Void> startSmsRetriever() {
        return doWrite(TaskApiCall.builder().run(new RemoteCall() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) throws RemoteException {
                ((zzh) ((zzw) obj).getService()).zzg(new zzz(this.zza, (TaskCompletionSource) obj2));
            }
        }).setFeatures(zzac.zzc).setMethodKey(1567).build());
    }

    @Override
    public final Task<Void> startSmsUserConsent(@Nullable final String str) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) throws RemoteException {
                zzab zzabVar = this.zza;
                ((zzh) ((zzw) obj).getService()).zzh(str, new zzaa(zzabVar, (TaskCompletionSource) obj2));
            }
        }).setFeatures(zzac.zzd).setMethodKey(1568).build());
    }

    public zzab(Context context) {
        super(context);
    }
}
