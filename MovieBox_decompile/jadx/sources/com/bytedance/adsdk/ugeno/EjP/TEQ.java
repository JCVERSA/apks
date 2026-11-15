package com.bytedance.adsdk.ugeno.EjP;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TEQ {
    private static Map<String, Jcg> Sj = new HashMap();

    public static void Sj(List<Jcg> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (Jcg jcg : list) {
            if (jcg != null) {
                Sj.put(jcg.Sj(), jcg);
            }
        }
    }

    public static Jcg Sj(String str) {
        return Sj.get(str);
    }
}
