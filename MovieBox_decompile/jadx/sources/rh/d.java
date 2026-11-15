package rh;

import kotlin.jvm.internal.Intrinsics;

public final class d {

    public static final d f71232a = new d();

    private static String f71233b = "";

    private d() {
    }

    public final String a() {
        return f71233b;
    }

    public final void b(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        f71233b = sceneId;
    }
}
