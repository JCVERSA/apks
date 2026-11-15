package com.google.android.exoplayer2;

import java.util.HashSet;

public abstract class n1 {

    private static final HashSet f24833a = new HashSet();

    private static String f24834b = "goog.exo.core";

    public static synchronized void a(String str) {
        if (f24833a.add(str)) {
            f24834b += ", " + str;
        }
    }

    public static synchronized String b() {
        return f24834b;
    }
}
