package com.transsnet.downloader.util;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class c0 {

    public static final c0 f57710a = new c0();

    private static final Lazy f57711b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return c0.d();
        }
    });

    private c0() {
    }

    private final MMKV b() {
        return (MMKV) f57711b.getValue();
    }

    public static final MMKV d() {
        MMKV mmkvI = MMKV.I("transfer_tips");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final boolean c() {
        return b().getBoolean("key_transfer_tips_dialog_show", false);
    }

    public final void e(boolean z10) {
        b().putBoolean("key_transfer_tips_dialog_show", z10);
    }
}
