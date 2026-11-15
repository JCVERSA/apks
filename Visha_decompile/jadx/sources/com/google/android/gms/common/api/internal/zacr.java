package com.google.android.gms.common.api.internal;

import com.google.android.gms.signin.internal.zak;

final class zacr implements Runnable {
    final zak zaa;
    final zact zab;

    public zacr(zact zactVar, zak zakVar) {
        this.zab = zactVar;
        this.zaa = zakVar;
    }

    @Override
    public final void run() {
        zact.zad(this.zab, this.zaa);
    }
}
