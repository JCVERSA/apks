package com.transsion.shorttv.utils;

import androidx.p009lifecycle.b0;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.tencent.mmkv.MMKV;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class h {

    public static final h f51644a = new h();

    private static final Lazy f51645b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return h.g();
        }
    });

    private static final Lazy f51646c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return h.h();
        }
    });

    private static final int f51647d = 20;

    private static final int f51648e = 3;

    private static CopyOnWriteArrayList f51649f = new CopyOnWriteArrayList();

    private static final b0 f51650g = new b0();

    private h() {
    }

    public static final MMKV g() {
        MMKV mmkvI = MMKV.I("short_tv");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public static final MMKV h() {
        MMKV mmkvI = MMKV.I("kv_app");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final boolean c() {
        return System.currentTimeMillis() - d().getLong("k_download_guide_bubble_last_show_time", 0L) >= TmcConstants.MINIAPP_TIME_DIFF;
    }

    public final MMKV d() {
        return (MMKV) f51645b.getValue();
    }

    public final MMKV e() {
        return (MMKV) f51646c.getValue();
    }

    public final void f() {
        d().putLong("k_download_guide_bubble_last_show_time", System.currentTimeMillis());
    }
}
