package com.google.android.gms.common.images;

import defpackage.aj;
import defpackage.r1e;

final class zab implements Runnable {
    final ImageManager zaa;
    private final r1e zab;

    public zab(ImageManager imageManager, r1e r1eVar) {
    }

    @Override
    public final void run() {
        aj.a("LoadImageRunnable must be executed on the main thread");
        ImageManager.ImageReceiver imageReceiver = (ImageManager.ImageReceiver) ImageManager.g(null).get(null);
        if (imageReceiver == null) {
            throw null;
        }
        ImageManager.g(null).remove(null);
        imageReceiver.zac(null);
        throw null;
    }
}
