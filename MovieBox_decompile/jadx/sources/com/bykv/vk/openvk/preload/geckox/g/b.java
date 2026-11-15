package com.bykv.vk.openvk.preload.geckox.g;

import com.bykv.vk.openvk.preload.geckox.utils.FileLock;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class b {

    private static final Map<String, Lock> f20080a = new HashMap();

    private static ReentrantLock f20081b = new ReentrantLock();

    private String f20082c;

    private FileLock f20083d;

    private b(String str, FileLock fileLock) {
        this.f20082c = str;
        this.f20083d = fileLock;
    }

    public static b a(String str) throws Exception {
        f20081b.lock();
        try {
            FileLock fileLockA = FileLock.a(str);
            Map<String, Lock> map = f20080a;
            Lock reentrantLock = map.get(str);
            if (reentrantLock == null) {
                reentrantLock = new ReentrantLock();
                map.put(str, reentrantLock);
            }
            reentrantLock.lock();
            return new b(str, fileLockA);
        } catch (Exception e10) {
            f20081b.unlock();
            throw e10;
        }
    }

    public final void a() {
        try {
            this.f20083d.a();
            this.f20083d.b();
            Lock lock = f20080a.get(this.f20082c);
            if (lock != null) {
                lock.unlock();
            }
        } finally {
            f20081b.unlock();
        }
    }
}
