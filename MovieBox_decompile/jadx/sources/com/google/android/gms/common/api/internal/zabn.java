package com.google.android.gms.common.api.internal;

final class zabn implements Runnable {
    final int zaa;
    final zabq zab;

    zabn(zabq zabqVar, int i10) {
        this.zab = zabqVar;
        this.zaa = i10;
    }

    @Override
    public final void run() {
        this.zab.zaI(this.zaa);
    }
}
