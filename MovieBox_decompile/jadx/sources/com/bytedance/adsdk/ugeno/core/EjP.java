package com.bytedance.adsdk.ugeno.core;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class EjP {
    private static Map<String, sP> Sj = new HashMap();

    public static void Sj(List<sP> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (sP sPVar : list) {
            if (sPVar != null) {
                Sj.put(sPVar.Sj(), sPVar);
            }
        }
    }

    public static sP Sj(String str) {
        return Sj.get(str);
    }
}
