package com.transsion.version.update;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    public static final d f55366a = new d();

    private static final Lazy f55367b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return d.c();
        }
    });

    private d() {
    }

    public static final MMKV c() {
        MMKV mmkvI = MMKV.I("update_lib_mmkv");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final MMKV b() {
        return (MMKV) f55367b.getValue();
    }
}
