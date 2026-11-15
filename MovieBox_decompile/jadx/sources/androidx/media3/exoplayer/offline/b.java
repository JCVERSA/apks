package androidx.media3.exoplayer.offline;

import android.util.SparseArray;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.dash.offline.DashDownloader;
import java.lang.reflect.Constructor;
import java.util.concurrent.Executor;

public abstract class b implements p {

    private static final SparseArray f12098c = c();

    private final androidx.media3.datasource.cache.a.c f12099a;

    private final Executor f12100b;

    public b(androidx.media3.datasource.cache.a.c cVar, Executor executor) {
        this.f12099a = (androidx.media3.datasource.cache.a.c) androidx.media3.common.util.a.e(cVar);
        this.f12100b = (Executor) androidx.media3.common.util.a.e(executor);
    }

    private o b(DownloadRequest downloadRequest, int i10) {
        Constructor constructor = (Constructor) f12098c.get(i10);
        if (constructor == null) {
            throw new IllegalStateException("Module missing for content type " + i10);
        }
        try {
            return (o) constructor.newInstance(new androidx.media3.common.t.c().i(downloadRequest.uri).f(downloadRequest.streamKeys).b(downloadRequest.customCacheKey).a(), this.f12099a, this.f12100b);
        } catch (Exception e10) {
            throw new IllegalStateException("Failed to instantiate downloader for content type " + i10, e10);
        }
    }

    private static SparseArray c() {
        SparseArray sparseArray = new SparseArray();
        try {
            sparseArray.put(0, d(DashDownloader.class));
        } catch (ClassNotFoundException unused) {
        }
        try {
            sparseArray.put(2, d(a2.a.class));
        } catch (ClassNotFoundException unused2) {
        }
        try {
            sparseArray.put(1, d(Class.forName("androidx.media3.exoplayer.smoothstreaming.offline.SsDownloader")));
        } catch (ClassNotFoundException unused3) {
        }
        return sparseArray;
    }

    private static Constructor d(Class cls) {
        try {
            return cls.asSubclass(o.class).getConstructor(androidx.media3.common.t.class, androidx.media3.datasource.cache.a.c.class, Executor.class);
        } catch (NoSuchMethodException e10) {
            throw new IllegalStateException("Downloader constructor missing", e10);
        }
    }

    @Override
    public o a(DownloadRequest downloadRequest) {
        int iA0 = a1.A0(downloadRequest.uri, downloadRequest.mimeType);
        if (iA0 == 0 || iA0 == 1 || iA0 == 2) {
            return b(downloadRequest, iA0);
        }
        if (iA0 == 4) {
            return new ProgressiveDownloader(new androidx.media3.common.t.c().i(downloadRequest.uri).b(downloadRequest.customCacheKey).a(), this.f12099a, this.f12100b);
        }
        throw new IllegalArgumentException("Unsupported type: " + iA0);
    }
}
