package com.transsion.subtitle_download.utils;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    public static final d f53010a = new d();

    private static final Lazy f53011b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return d.c();
        }
    });

    private d() {
    }

    public static final MMKV c() {
        MMKV mmkvI = MMKV.I("kv_subtitle");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final MMKV b() {
        return (MMKV) f53011b.getValue();
    }
}
