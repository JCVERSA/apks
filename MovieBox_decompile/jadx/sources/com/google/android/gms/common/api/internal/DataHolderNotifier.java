package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.data.DataHolder;

@KeepForSdk
public abstract class DataHolderNotifier<L> implements ListenerHolder.Notifier<L> {
    private final DataHolder zaa;

    @KeepForSdk
    protected DataHolderNotifier(@NonNull DataHolder dataHolder) {
        this.zaa = dataHolder;
    }

    @Override
    @KeepForSdk
    public final void notifyListener(@NonNull L l10) {
        notifyListener(l10, this.zaa);
    }

    @KeepForSdk
    protected abstract void notifyListener(@NonNull L l10, @NonNull DataHolder dataHolder);

    @Override
    @KeepForSdk
    public void onNotifyListenerFailed() {
        DataHolder dataHolder = this.zaa;
        if (dataHolder != null) {
            dataHolder.close();
        }
    }
}
