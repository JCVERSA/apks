package com.transsion.baselib.report.launch;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    public static final b f42221a = new b();

    private static final Lazy f42222b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return b.c();
        }
    });

    private b() {
    }

    public static final MMKV c() {
        MMKV mmkvI = MMKV.I("kv_app");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final MMKV b() {
        return (MMKV) f42222b.getValue();
    }
}
