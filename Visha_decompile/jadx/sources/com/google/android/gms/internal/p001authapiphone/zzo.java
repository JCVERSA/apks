package com.google.android.gms.internal.p001authapiphone;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import defpackage.jea;
import defpackage.lij;
import defpackage.ud;
import defpackage.zda;

final class zzo extends IStatusCallback.Stub {
    final zda zza;

    public zzo(lij lijVar, zda zdaVar) {
        this.zza = zdaVar;
    }

    @Override
    public final void onResult(Status status) {
        if (status.getStatusCode() == 6) {
            this.zza.d(ud.a(status));
        } else {
            jea.a(status, this.zza);
        }
    }
}
