package com.google.android.gms.common.api.internal;

import defpackage.izd;

final class zav implements Runnable {
    final izd zaa;

    public zav(izd izdVar) {
    }

    @Override
    public final void run() {
        izd.a(null).lock();
        try {
            izd.b(null);
        } finally {
            izd.a(null).unlock();
        }
    }
}
