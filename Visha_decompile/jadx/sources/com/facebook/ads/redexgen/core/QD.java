package com.facebook.ads.redexgen.core;

import android.database.Observable;

public class QD extends Observable<QE> {
    public final void A00() {
        for (int size = this.mObservers.size() - 1; size >= 0; size--) {
            ((QE) this.mObservers.get(size)).A00();
        }
    }
}
