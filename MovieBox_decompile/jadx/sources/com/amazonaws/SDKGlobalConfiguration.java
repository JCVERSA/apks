package com.amazonaws;

import java.util.concurrent.atomic.AtomicInteger;

public class SDKGlobalConfiguration {

    private static final AtomicInteger f17703a = new AtomicInteger(0);

    public static int a() {
        return f17703a.get();
    }

    public static void b(int i10) {
        f17703a.set(i10);
    }
}
