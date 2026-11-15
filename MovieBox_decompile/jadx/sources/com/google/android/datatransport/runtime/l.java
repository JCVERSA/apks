package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Priority;

public abstract class l {
    public static void a(t8.h hVar, Priority priority) {
        if (!(hVar instanceof r)) {
            y8.a.g("ForcedSender", "Expected instance of `TransportImpl`, got `%s`.", hVar);
        } else {
            t.c().e().u(((r) hVar).d().f(priority), 1);
        }
    }
}
