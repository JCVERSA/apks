package com.cloud.sdk.commonutil.util;

public class q {
    public static void b(final String str, final int i10) {
        Preconditions.d(new Preconditions.a() {
            @Override
            public final void onRun() {
                q.c(str, i10);
            }
        });
    }

    public static void c(String str, int i10) {
    }
}
