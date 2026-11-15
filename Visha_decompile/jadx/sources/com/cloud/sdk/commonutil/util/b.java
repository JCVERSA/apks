package com.cloud.sdk.commonutil.util;

import com.cloud.sdk.commonutil.util.b;

public abstract class b {
    public static void b(final String str, final int i) {
        Preconditions.d(new Preconditions.a() {
            @Override
            public final void onRun() {
                b.c(str, i);
            }
        });
    }

    public static void c(String str, int i) {
    }
}
