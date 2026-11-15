package io;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class f {

    public static final f f62276a = new f();

    private static final Lazy f62277b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return f.d();
        }
    });

    private f() {
    }

    private final MMKV b() {
        return (MMKV) f62277b.getValue();
    }

    public static final MMKV d() {
        MMKV mmkvI = MMKV.I("shorts_progress_cache");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final long c(String postId) {
        Intrinsics.h(postId, "postId");
        if (postId.length() == 0) {
            return 0L;
        }
        return b().h(postId, 0L);
    }

    public final void e(String postId, long j10) {
        Intrinsics.h(postId, "postId");
        if (postId.length() == 0) {
            return;
        }
        b().t(postId, j10);
    }
}
