package androidx.window.core;

import kotlin.jvm.internal.Intrinsics;

public final class a implements e {

    public static final a f14959a = new a();

    private a() {
    }

    @Override
    public void debug(String tag, String message) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(message, "message");
    }
}
