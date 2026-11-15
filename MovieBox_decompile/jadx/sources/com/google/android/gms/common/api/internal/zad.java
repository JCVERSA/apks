package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

abstract class zad extends zac {
    protected final TaskCompletionSource zaa;

    public zad(int i10, TaskCompletionSource taskCompletionSource) {
        super(i10);
        this.zaa = taskCompletionSource;
    }

    protected abstract void zac(zabq zabqVar) throws RemoteException;

    @Override
    public final void zad(@NonNull Status status) {
        this.zaa.trySetException(new ApiException(status));
    }

    @Override
    public final void zae(@NonNull Exception exc) {
        this.zaa.trySetException(exc);
    }

    @Override
    public final void zaf(zabq zabqVar) throws DeadObjectException {
        try {
            zac(zabqVar);
        } catch (DeadObjectException e10) {
            zad(zai.zah(e10));
            throw e10;
        } catch (RemoteException e11) {
            zad(zai.zah(e11));
        } catch (RuntimeException e12) {
            this.zaa.trySetException(e12);
        }
    }

    @Override
    public void zag(@NonNull zaad zaadVar, boolean z10) {
    }
}
