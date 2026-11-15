package com.google.android.play.core.review;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.RemoteException;
import defpackage.n1j;
import defpackage.o1j;
import defpackage.zda;

final class zzh extends zzg {
    public zzh(n1j n1jVar, zda zdaVar, String str) {
        super(n1jVar, new o1j("OnRequestInstallCallback"), zdaVar);
    }

    @Override
    public final void zzb(Bundle bundle) throws RemoteException {
        super.zzb(bundle);
        this.zzb.e(new zza((PendingIntent) bundle.get("confirmation_intent"), bundle.getBoolean("is_review_no_op")));
    }
}
