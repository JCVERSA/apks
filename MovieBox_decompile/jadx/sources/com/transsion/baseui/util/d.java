package com.transsion.baseui.util;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public abstract class d {

    private static long f42336a;

    public static final void a(long j10, Function0 clickInvoke) {
        Intrinsics.h(clickInvoke, "clickInvoke");
        if (System.nanoTime() - f42336a > j10) {
            f42336a = System.nanoTime();
            clickInvoke.invoke();
        }
    }

    public static void b(long j10, Function0 function0, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = 600;
        }
        a(j10, function0);
    }
}
