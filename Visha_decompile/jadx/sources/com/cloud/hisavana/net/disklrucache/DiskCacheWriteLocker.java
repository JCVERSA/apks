package com.cloud.hisavana.net.disklrucache;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class DiskCacheWriteLocker {
    public final Map a = new HashMap();
    public final WriteLockPool b = new WriteLockPool();

    public static class WriteLock {
        public final Lock a;
        public int b;

        private WriteLock() {
            this.a = new ReentrantLock();
        }
    }

    public static class WriteLockPool {
        public final Queue a;

        private WriteLockPool() {
            this.a = new ArrayDeque();
        }

        public WriteLock a() {
            WriteLock writeLock;
            synchronized (this.a) {
                writeLock = (WriteLock) this.a.poll();
            }
            return writeLock == null ? new WriteLock() : writeLock;
        }

        public void b(WriteLock writeLock) {
            synchronized (this.a) {
                try {
                    if (this.a.size() < 10) {
                        this.a.offer(writeLock);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void a(ImageCacheURL imageCacheURL) {
        WriteLock writeLockA;
        synchronized (this) {
            try {
                writeLockA = (WriteLock) this.a.get(imageCacheURL);
                if (writeLockA == null) {
                    writeLockA = this.b.a();
                    this.a.put(imageCacheURL, writeLockA);
                }
                writeLockA.b++;
            } catch (Throwable th) {
                throw th;
            }
        }
        writeLockA.a.lock();
    }

    public void b(ImageCacheURL imageCacheURL) {
        WriteLock writeLock;
        synchronized (this) {
            try {
                writeLock = (WriteLock) this.a.get(imageCacheURL);
                int i = writeLock.b;
                if (i < 1) {
                    throw new IllegalStateException("Cannot release a lock that is not held, key: " + imageCacheURL + ", interestedThreads: " + writeLock.b);
                }
                int i2 = i - 1;
                writeLock.b = i2;
                if (i2 == 0) {
                    WriteLock writeLock2 = (WriteLock) this.a.remove(imageCacheURL);
                    if (!writeLock2.equals(writeLock)) {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + writeLock + ", but actually removed: " + writeLock2 + ", key: " + imageCacheURL);
                    }
                    this.b.b(writeLock2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        writeLock.a.unlock();
    }
}
