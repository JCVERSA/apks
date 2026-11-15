package com.google.android.gms.common.images;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.base.zam;
import defpackage.aj;
import defpackage.r1e;
import defpackage.s2e;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ExecutorService;

public abstract class ImageManager {
    public static final Object a = new Object();
    public static final HashSet b = new HashSet();

    @KeepName
    public final class ImageReceiver extends ResultReceiver {
        final ImageManager zaa;
        private final Uri zab;
        private final ArrayList zac;

        public ImageReceiver(ImageManager imageManager, Uri uri) {
            super(new s2e(Looper.getMainLooper()));
            this.zab = uri;
            this.zac = new ArrayList();
        }

        @Override
        public final void onReceiveResult(int i, Bundle bundle) {
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor");
            ImageManager.i(null).execute(new zaa(null, this.zab, parcelFileDescriptor));
        }

        public final void zab(r1e r1eVar) {
            aj.a("ImageReceiver.addImageRequest() must be called in the main thread");
            this.zac.add(r1eVar);
        }

        public final void zac(r1e r1eVar) {
            aj.a("ImageReceiver.removeImageRequest() must be called in the main thread");
            this.zac.remove(r1eVar);
        }

        public final void zad() {
            Intent intent = new Intent("com.google.android.gms.common.images.LOAD_IMAGE");
            intent.setPackage("com.google.android.gms");
            intent.putExtra("com.google.android.gms.extras.uri", this.zab);
            intent.putExtra("com.google.android.gms.extras.resultReceiver", this);
            intent.putExtra("com.google.android.gms.extras.priority", 3);
            ImageManager.a(null).sendBroadcast(intent);
        }
    }

    public static Context a(ImageManager imageManager) {
        throw null;
    }

    public static Handler b(ImageManager imageManager) {
        throw null;
    }

    public static zam c(ImageManager imageManager) {
        throw null;
    }

    public static Map f(ImageManager imageManager) {
        throw null;
    }

    public static Map g(ImageManager imageManager) {
        throw null;
    }

    public static Map h(ImageManager imageManager) {
        throw null;
    }

    public static ExecutorService i(ImageManager imageManager) {
        throw null;
    }
}
