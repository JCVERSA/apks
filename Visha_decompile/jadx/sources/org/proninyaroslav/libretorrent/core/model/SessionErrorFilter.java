package org.proninyaroslav.libretorrent.core.model;

import java.util.HashSet;

public class SessionErrorFilter {
    public static final HashSet a;

    static {
        HashSet hashSet = new HashSet();
        a = hashSet;
        hashSet.add("Operation not supported on transport endpoint, code 95");
    }

    public boolean a(String str) {
        return a.contains(str);
    }
}
