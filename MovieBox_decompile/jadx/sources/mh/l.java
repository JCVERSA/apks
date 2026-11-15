package mh;

import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

public final class l {

    public static final l f66473a = new l();

    private static String[] f66474b = new String[0];

    private static String[] f66475c = new String[0];

    private l() {
    }

    public static final boolean a(String path) {
        Intrinsics.h(path, "path");
        return ArraysKt.L(f66474b, path);
    }

    public static final boolean b(String path) {
        Intrinsics.h(path, "path");
        return ArraysKt.L(f66475c, path);
    }
}
