package io;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    public static final d f62274a = new d();

    private static final Map f62275b = new LinkedHashMap();

    private d() {
    }

    public final void a() {
        f62275b.clear();
    }

    public final Long b(String postId) {
        Intrinsics.h(postId, "postId");
        return (Long) f62275b.remove(postId);
    }

    public final void c(String postId, long j10) {
        Intrinsics.h(postId, "postId");
        f62275b.put(postId, Long.valueOf(j10));
    }
}
