package com.bykv.vk.openvk.preload.geckox.utils;

import java.util.concurrent.Executor;

public class c implements Executor {

    private static volatile c f20142a;

    public static c a() {
        if (f20142a == null) {
            synchronized (c.class) {
                try {
                    if (f20142a == null) {
                        f20142a = new c();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f20142a;
    }

    @Override
    public void execute(Runnable runnable) {
        com.bykv.vk.openvk.preload.geckox.b.t().execute(runnable);
    }
}
