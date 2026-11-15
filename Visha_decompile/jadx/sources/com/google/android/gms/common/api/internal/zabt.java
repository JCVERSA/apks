package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

final class zabt implements Runnable {
    final ConnectionResult zaa;
    final n zab;

    public zabt(n nVar, ConnectionResult connectionResult) {
        this.zab = nVar;
        this.zaa = connectionResult;
    }

    @Override
    public final void run() {
        n nVar = this.zab;
        m mVar = (m) nVar.f.k.get(nVar.b);
        if (mVar == null) {
            return;
        }
        if (!this.zaa.isSuccess()) {
            mVar.E(this.zaa, null);
            return;
        }
        this.zab.e = true;
        if (this.zab.a.requiresSignIn()) {
            this.zab.i();
            return;
        }
        try {
            n nVar2 = this.zab;
            nVar2.a.getRemoteService(null, nVar2.a.a());
        } catch (SecurityException e) {
            Log.e("GoogleApiManager", "Failed to get service from broker. ", e);
            this.zab.a.disconnect("Failed to get service from broker.");
            mVar.E(new ConnectionResult(10), null);
        }
    }
}
