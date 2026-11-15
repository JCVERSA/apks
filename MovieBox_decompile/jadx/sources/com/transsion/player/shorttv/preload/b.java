package com.transsion.player.shorttv.preload;

import androidx.media3.common.t;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.offline.DownloadRequest;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;

public final class b extends androidx.media3.exoplayer.offline.b {

    private final androidx.media3.datasource.cache.a.c f46516d;

    private final Executor f46517e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(androidx.media3.datasource.cache.a.c cacheDataSourceFactory, Executor executor) {
        super(cacheDataSourceFactory, executor);
        Intrinsics.h(cacheDataSourceFactory, "cacheDataSourceFactory");
        Intrinsics.h(executor, "executor");
        this.f46516d = cacheDataSourceFactory;
        this.f46517e = executor;
    }

    @Override
    public androidx.media3.exoplayer.offline.o a(DownloadRequest request) {
        Intrinsics.h(request, "request");
        int iA0 = a1.A0(request.uri, request.mimeType);
        if (iA0 == 0 || iA0 == 1 || iA0 == 2) {
            androidx.media3.exoplayer.offline.o oVarA = super.a(request);
            Intrinsics.g(oVarA, "createDownloader(...)");
            return oVarA;
        }
        if (iA0 == 4) {
            return new VideoProgressiveDownloader(new t.c().i(request.uri).b(request.customCacheKey).a(), this.f46516d, this.f46517e);
        }
        throw new IllegalArgumentException("Unsupported type: " + iA0);
    }
}
