package com.google.android.exoplayer2.offline;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.g;
import com.google.android.exoplayer2.util.RunnableFutureTask;
import defpackage.cq0;
import defpackage.d23;
import defpackage.kv3;
import defpackage.ubc;
import java.io.IOException;

public abstract class SegmentDownloader implements d23 {

    class AnonymousClass1 extends RunnableFutureTask<kv3, IOException> {
        final SegmentDownloader this$0;
        final com.google.android.exoplayer2.upstream.a val$dataSource;
        final com.google.android.exoplayer2.upstream.b val$dataSpec;

        public AnonymousClass1(SegmentDownloader segmentDownloader, com.google.android.exoplayer2.upstream.a aVar, com.google.android.exoplayer2.upstream.b bVar) {
            this.val$dataSource = aVar;
            this.val$dataSpec = bVar;
        }

        @Override
        public kv3 doWork() throws Exception {
            doWork();
            return null;
        }

        @Override
        public kv3 doWork() throws IOException {
            com.google.android.exoplayer2.upstream.a aVar = this.val$dataSource;
            SegmentDownloader.a(null);
            ubc.a(g.b(aVar, null, this.val$dataSpec, 4));
            return null;
        }
    }

    public static final class SegmentDownloadRunnable extends RunnableFutureTask<Void, IOException> {
        private final cq0 cacheWriter;
        public final com.google.android.exoplayer2.upstream.cache.a dataSource;

        @Nullable
        private final a progressNotifier;
        public final b segment;
        public final byte[] temporaryBuffer;

        public SegmentDownloadRunnable(b bVar, com.google.android.exoplayer2.upstream.cache.a aVar, @Nullable a aVar2, byte[] bArr) {
            this.dataSource = aVar;
            this.temporaryBuffer = bArr;
            throw null;
        }

        @Override
        public void cancelWork() {
            this.cacheWriter.b();
        }

        @Override
        public Void doWork() throws IOException {
            this.cacheWriter.a();
            return null;
        }
    }

    public static final class a {
    }

    public static class b implements Comparable {
    }

    public static g.a a(SegmentDownloader segmentDownloader) {
        throw null;
    }
}
