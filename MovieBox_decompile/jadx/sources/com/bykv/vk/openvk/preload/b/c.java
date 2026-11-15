package com.bykv.vk.openvk.preload.b;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class c {
    static <IN> b<IN> a(List<h> list, e eVar, d dVar) {
        if (list == null) {
            throw new IllegalArgumentException("interceptors == null !");
        }
        if (eVar == null) {
            eVar = new e.a();
        }
        return new i(Collections.unmodifiableList(new ArrayList(list)), 0, eVar, dVar);
    }

    public static <IN> b<IN> a(List<h> list, e eVar) {
        return a(list, eVar, null);
    }
}
