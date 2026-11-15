package com.bykv.vk.openvk.preload.geckox.g;

import com.bykv.vk.openvk.preload.geckox.utils.FileLock;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class a {

    private static final Map<String, Lock> f20077a = new HashMap();

    private FileLock f20078b;

    private String f20079c;

    private a(String str, FileLock fileLock) {
        this.f20079c = str;
        this.f20078b = fileLock;
    }

    public static a a(String str) throws Exception {
        Map<String, Lock> map = f20077a;
        synchronized (map) {
            try {
                Lock reentrantLock = map.get(str);
                if (reentrantLock == null) {
                    reentrantLock = new ReentrantLock();
                    map.put(str, reentrantLock);
                }
                if (!reentrantLock.tryLock()) {
                    return null;
                }
                try {
                    FileLock fileLockC = FileLock.c(str);
                    if (fileLockC == null) {
                        reentrantLock.unlock();
                        return null;
                    }
                    return new a(str, fileLockC);
                } catch (Exception e10) {
                    reentrantLock.lock();
                    com.bykv.vk.openvk.preload.geckox.utils.a.a(new RuntimeException(e10));
                    return null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void a() {
        Map<String, Lock> map = f20077a;
        synchronized (map) {
            try {
                try {
                    this.f20078b.a();
                    this.f20078b.b();
                    map.get(this.f20079c).unlock();
                } catch (Throwable th2) {
                    f20077a.get(this.f20079c).unlock();
                    throw th2;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }
}
