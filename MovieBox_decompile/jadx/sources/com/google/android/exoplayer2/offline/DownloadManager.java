package com.google.android.exoplayer2.offline;

import android.os.Handler;
import androidx.annotation.Nullable;
import java.io.IOException;

public abstract class DownloadManager {

    private static class Task extends Thread implements com.google.android.exoplayer2.offline.b.a {
        private long contentLength;
        private final com.google.android.exoplayer2.offline.a downloadProgress;
        private final com.google.android.exoplayer2.offline.b downloader;

        @Nullable
        private Exception finalException;

        @Nullable
        private volatile b internalHandler;
        private volatile boolean isCanceled;
        private final boolean isRemove;
        private final int minRetryCount;
        private final DownloadRequest request;

        private static int getRetryDelayMillis(int i10) {
            return Math.min((i10 - 1) * 1000, 5000);
        }

        public void cancel(boolean z10) {
            if (this.isCanceled) {
                return;
            }
            this.isCanceled = true;
            this.downloader.cancel();
            interrupt();
        }

        @Override
        public void onProgress(long j10, long j11, float f10) {
            this.downloadProgress.f24876a = j11;
            this.downloadProgress.f24877b = f10;
            if (j10 != this.contentLength) {
                this.contentLength = j10;
            }
        }

        @Override
        public void run() {
            try {
                if (this.isRemove) {
                    this.downloader.remove();
                    return;
                }
                long j10 = -1;
                int i10 = 0;
                while (!this.isCanceled) {
                    try {
                        this.downloader.a(this);
                        return;
                    } catch (IOException e10) {
                        if (!this.isCanceled) {
                            long j11 = this.downloadProgress.f24876a;
                            if (j11 != j10) {
                                i10 = 0;
                                j10 = j11;
                            }
                            i10++;
                            if (i10 > this.minRetryCount) {
                                throw e10;
                            }
                            Thread.sleep(getRetryDelayMillis(i10));
                        }
                    }
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (Exception e11) {
                this.finalException = e11;
            }
        }

        private Task(DownloadRequest downloadRequest, com.google.android.exoplayer2.offline.b bVar, com.google.android.exoplayer2.offline.a aVar, boolean z10, int i10, b bVar2) {
            this.request = downloadRequest;
            this.downloader = bVar;
            this.downloadProgress = aVar;
            this.isRemove = z10;
            this.minRetryCount = i10;
            this.contentLength = -1L;
        }
    }

    private static final class b extends Handler {
    }
}
