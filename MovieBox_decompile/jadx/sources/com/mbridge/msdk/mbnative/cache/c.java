package com.mbridge.msdk.mbnative.cache;

import com.mbridge.msdk.out.Campaign;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class c {

    public static Map<Integer, b<String, List<Campaign>>> f35404a = new HashMap();

    public static b<String, List<Campaign>> a(int i10) {
        if (f35404a.containsKey(Integer.valueOf(i10))) {
            return f35404a.get(Integer.valueOf(i10));
        }
        a aVar = new a(i10);
        f35404a.put(Integer.valueOf(i10), aVar);
        return aVar;
    }
}
