package com.google.android.gms.common.api.internal;

final class zabn implements Runnable {
    final int zaa;
    final m zab;

    public zabn(m mVar, int i) {
        this.zab = mVar;
        this.zaa = i;
    }

    @Override
    public final void run() {
        this.zab.i(this.zaa);
    }
}
