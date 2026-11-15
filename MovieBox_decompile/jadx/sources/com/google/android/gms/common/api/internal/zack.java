package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zack extends RegisterListenerMethod {
    final RegistrationMethods.Builder zaa;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zack(RegistrationMethods.Builder builder, ListenerHolder listenerHolder, Feature[] featureArr, boolean z10, int i10) {
        super(listenerHolder, featureArr, z10, i10);
        this.zaa = builder;
    }

    @Override
    protected final void registerListener(Api.AnyClient anyClient, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException {
        this.zaa.zaa.accept(anyClient, taskCompletionSource);
    }
}
