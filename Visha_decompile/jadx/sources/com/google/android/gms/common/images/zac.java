package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import defpackage.aj;
import defpackage.ubc;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;

final class zac implements Runnable {
    final ImageManager zaa;
    private final Uri zab;

    @Nullable
    private final Bitmap zac;
    private final CountDownLatch zad;

    public zac(ImageManager imageManager, @Nullable Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
        this.zab = uri;
        this.zac = bitmap;
        this.zad = countDownLatch;
    }

    @Override
    public final void run() {
        aj.a("OnBitmapLoadedRunnable must be executed in the main thread");
        ImageManager.ImageReceiver imageReceiver = (ImageManager.ImageReceiver) ImageManager.h(null).remove(this.zab);
        if (imageReceiver != null) {
            ArrayList arrayList = imageReceiver.zac;
            if (arrayList.size() > 0) {
                ubc.a(arrayList.get(0));
                if (this.zac != null) {
                    ImageManager.a(null);
                    throw null;
                }
                ImageManager.f(null).put(this.zab, Long.valueOf(SystemClock.elapsedRealtime()));
                ImageManager.a(null);
                ImageManager.c(null);
                throw null;
            }
        }
        this.zad.countDown();
        synchronized (ImageManager.a) {
            ImageManager.b.remove(this.zab);
        }
    }
}
