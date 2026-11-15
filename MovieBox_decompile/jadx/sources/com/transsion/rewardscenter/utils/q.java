package com.transsion.rewardscenter.utils;

import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

public abstract class q {
    public static final void a(String module, Map map) {
        Intrinsics.h(module, "module");
        HashMap map2 = new HashMap();
        map2.put("module_name", module);
        if (map != null) {
            map2.putAll(map);
        }
        qi.h.f69682a.o("rewards_center", map2);
    }

    public static final void b(String module) {
        Intrinsics.h(module, "module");
        HashMap map = new HashMap();
        map.put("module_name", module);
        qi.h.f69682a.z("rewards_center", map);
    }
}
