package com.yandex.mobile.ads.impl;

import java.util.HashMap;
import java.util.Map;

public final class c8 {
    private final ya a = new ya();
    private final jj1 b = new jj1();

    public final pp1 a(v7 v7Var) {
        pp1 pp1Var = new pp1((Map) null, 3);
        if (v7Var != null) {
            Map<String, String> mapH = v7Var.h();
            this.a.getClass();
            pp1 pp1Var2 = new pp1(new HashMap(), 2);
            if (mapH != null) {
                Object obj = (String) mapH.get("adapter_network_name");
                Object obj2 = (String) mapH.get("adapter_version");
                Object obj3 = (String) mapH.get("adapter_network_sdk_version");
                pp1Var2.a(obj, "adapter_network_name");
                pp1Var2.a(obj2, "adapter_version");
                pp1Var2.a(obj3, "adapter_network_sdk_version");
            }
            Map<String, Object> mapB = pp1Var2.b();
            this.b.getClass();
            pp1 pp1Var3 = new pp1(new HashMap(), 2);
            if (mapH != null) {
                Object obj4 = (String) mapH.get("plugin_type");
                Object obj5 = (String) mapH.get("plugin_version");
                pp1Var3.a(obj4, "plugin_type");
                pp1Var3.a(obj5, "plugin_version");
            }
            Map<String, Object> mapB2 = pp1Var3.b();
            String strJ = v7Var.j();
            pp1Var.a((Map<String, ? extends Object>) mapB);
            pp1Var.a((Map<String, ? extends Object>) mapB2);
            pp1Var.a(strJ, "preload_type");
        }
        String strG = v7Var != null ? v7Var.g() : null;
        boolean z = strG == null || strG.length() == 0;
        pp1Var.b(Boolean.valueOf(!z), "open_bidding");
        if (!z) {
            pp1Var.a("openbidding", "integration_type");
        }
        return pp1Var;
    }
}
