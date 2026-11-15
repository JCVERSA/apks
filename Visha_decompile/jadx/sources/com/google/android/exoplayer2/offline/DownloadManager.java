package com.google.android.exoplayer2.offline;

import android.os.Handler;
import androidx.annotation.Nullable;
import defpackage.d23;
import defpackage.v03;

public abstract class DownloadManager {

    public static class Task extends Thread {
        private long contentLength;
        private final v03 downloadProgress;
        private final d23 downloader;

        @Nullable
        private Exception finalException;

        @Nullable
        private volatile b internalHandler;
        private volatile boolean isCanceled;
        private final boolean isRemove;
        private final int minRetryCount;
        private final DownloadRequest request;

        private static int getRetryDelayMillis(int i) {
            return Math.min((i - 1) * 1000, 5000);
        }

        public void cancel(boolean z) {
            if (this.isCanceled) {
                return;
            }
            this.isCanceled = true;
            throw null;
        }

        public void onProgress(long j, long j2, float f) {
            throw null;
        }

        @Override
        public void run() {
            try {
                try {
                    if (this.isRemove || !this.isCanceled) {
                        throw null;
                    }
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            } catch (Exception e) {
                this.finalException = e;
            }
        }

        private Task(DownloadRequest downloadRequest, d23 d23Var, v03 v03Var, boolean z, int i, b bVar) {
            this.request = downloadRequest;
            this.isRemove = z;
            this.minRetryCount = i;
            this.contentLength = -1L;
        }
    }

    public static final class b extends Handler {
    }
}
