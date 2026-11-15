package com.cloud.hisavana.net.disklrucache;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class DiskCacheWriteLocker {

    private final Map f20733a = new HashMap();

    private final WriteLockPool f20734b = new WriteLockPool();

    private static class WriteLock {

        final Lock f20735a;

        int f20736b;

        private WriteLock() {
            this.f20735a = new ReentrantLock();
        }
    }

    private static class WriteLockPool {

        private final Queue f20737a;

        private WriteLockPool() {
            this.f20737a = new ArrayDeque();
        }

        WriteLock a() {
            WriteLock writeLock;
            synchronized (this.f20737a) {
                writeLock = (WriteLock) this.f20737a.poll();
            }
            return writeLock == null ? new WriteLock() : writeLock;
        }

        void b(WriteLock writeLock) {
            synchronized (this.f20737a) {
                try {
                    if (this.f20737a.size() < 10) {
                        this.f20737a.offer(writeLock);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void a(ImageCacheURL imageCacheURL) {
        WriteLock writeLockA;
        synchronized (this) {
            try {
                writeLockA = (WriteLock) this.f20733a.get(imageCacheURL);
                if (writeLockA == null) {
                    writeLockA = this.f20734b.a();
                    this.f20733a.put(imageCacheURL, writeLockA);
                }
                writeLockA.f20736b++;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        writeLockA.f20735a.lock();
    }

    public void b(ImageCacheURL imageCacheURL) {
        WriteLock writeLock;
        synchronized (this) {
            try {
                writeLock = (WriteLock) this.f20733a.get(imageCacheURL);
                int i10 = writeLock.f20736b;
                if (i10 < 1) {
                    throw new IllegalStateException("Cannot release a lock that is not held, key: " + imageCacheURL + ", interestedThreads: " + writeLock.f20736b);
                }
                int i11 = i10 - 1;
                writeLock.f20736b = i11;
                if (i11 == 0) {
                    WriteLock writeLock2 = (WriteLock) this.f20733a.remove(imageCacheURL);
                    if (!writeLock2.equals(writeLock)) {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + writeLock + ", but actually removed: " + writeLock2 + ", key: " + imageCacheURL);
                    }
                    this.f20734b.b(writeLock2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        writeLock.f20735a.unlock();
    }
}
