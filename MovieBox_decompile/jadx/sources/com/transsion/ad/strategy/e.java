package com.transsion.ad.strategy;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    public static final e f41179a = new e();

    private static final Lazy f41180b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return e.d();
        }
    });

    private e() {
    }

    public static final MMKV d() {
        MMKV mmkvI = MMKV.I("one_room_advertising");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final MMKV b() {
        return c();
    }

    public final MMKV c() {
        return (MMKV) f41180b.getValue();
    }
}
