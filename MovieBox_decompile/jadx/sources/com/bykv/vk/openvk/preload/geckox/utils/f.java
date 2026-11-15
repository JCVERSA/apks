package com.bykv.vk.openvk.preload.geckox.utils;

import java.util.concurrent.Executor;

public class f implements Executor {

    private static volatile f f20144a;

    public static f a() {
        if (f20144a == null) {
            synchronized (f.class) {
                try {
                    if (f20144a == null) {
                        f20144a = new f();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f20144a;
    }

    @Override
    public void execute(Runnable runnable) {
        com.bykv.vk.openvk.preload.geckox.b.t().execute(runnable);
    }
}
