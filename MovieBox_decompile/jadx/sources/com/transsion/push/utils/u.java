package com.transsion.push.utils;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class u {

    public static final u f48941a = new u();

    private static final Lazy f48942b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return u.c();
        }
    });

    private u() {
    }

    public static final MMKV c() {
        MMKV mmkvI = MMKV.I("notification");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final MMKV b() {
        return (MMKV) f48942b.getValue();
    }
}
