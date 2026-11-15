package androidx.work.impl;

import kotlin.jvm.internal.Intrinsics;

public abstract class a0 {

    private static final String f15176a;

    private static final String[] f15177b;

    static {
        String strI = androidx.work.j.i("WrkDbPathHelper");
        Intrinsics.g(strI, "tagWithPrefix(\"WrkDbPathHelper\")");
        f15176a = strI;
        f15177b = new String[]{"-journal", "-shm", "-wal"};
    }
}
