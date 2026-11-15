package mh;

import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    public static final d f66407a = new d();

    private static String[] f66408b = new String[0];

    private static String[] f66409c = new String[0];

    private static String[] f66410d = new String[0];

    private d() {
    }

    public static final boolean a(String host) {
        Intrinsics.h(host, "host");
        return ArraysKt.L(f66410d, host);
    }

    public static final boolean b(String host) {
        Intrinsics.h(host, "host");
        return ArraysKt.L(f66408b, host);
    }

    public static final boolean c(String host) {
        Intrinsics.h(host, "host");
        return ArraysKt.L(f66409c, host);
    }

    public static final boolean d() {
        return f66410d.length == 0;
    }

    public final void e(String[] hosts) {
        Intrinsics.h(hosts, "hosts");
        f66410d = hosts;
    }
}
