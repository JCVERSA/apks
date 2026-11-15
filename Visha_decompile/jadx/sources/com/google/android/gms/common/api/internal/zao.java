package com.google.android.gms.common.api.internal;

import android.app.Dialog;
import android.app.PendingIntent;
import androidx.annotation.MainThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiActivity;
import defpackage.b2e;
import defpackage.wd8;

final class zao implements Runnable {
    final t zaa;
    private final b2e zab;

    public zao(t tVar, b2e b2eVar) {
        this.zaa = tVar;
        this.zab = b2eVar;
    }

    @Override
    @MainThread
    public final void run() {
        if (this.zaa.c) {
            ConnectionResult connectionResultB = this.zab.b();
            if (connectionResultB.hasResolution()) {
                t tVar = this.zaa;
                tVar.b.startActivityForResult(GoogleApiActivity.a(tVar.b(), (PendingIntent) wd8.l(connectionResultB.getResolution()), this.zab.a(), false), 1);
                return;
            }
            t tVar2 = this.zaa;
            if (tVar2.f.c(tVar2.b(), connectionResultB.getErrorCode(), null) != null) {
                t tVar3 = this.zaa;
                tVar3.f.x(tVar3.b(), tVar3.b, connectionResultB.getErrorCode(), 2, this.zaa);
                return;
            }
            if (connectionResultB.getErrorCode() != 18) {
                this.zaa.l(connectionResultB, this.zab.a());
                return;
            }
            t tVar4 = this.zaa;
            Dialog dialogS = tVar4.f.s(tVar4.b(), tVar4);
            t tVar5 = this.zaa;
            tVar5.f.t(tVar5.b().getApplicationContext(), new s(this, dialogS));
        }
    }
}
