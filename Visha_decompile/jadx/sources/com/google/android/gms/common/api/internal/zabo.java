package com.google.android.gms.common.api.internal;

final class zabo implements Runnable {
    final l zaa;

    public zabo(l lVar) {
        this.zaa = lVar;
    }

    @Override
    public final void run() {
        m mVar = this.zaa.a;
        mVar.c.disconnect(mVar.c.getClass().getName().concat(" disconnecting because it was signed out."));
    }
}
