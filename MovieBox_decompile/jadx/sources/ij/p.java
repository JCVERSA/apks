package ij;

import java.util.HashMap;

public abstract class p {
    public static final void a(String str, String str2, String str3, Float f10) {
        HashMap map = new HashMap();
        map.put("module_name", "long_pressed");
        map.put("subject_id", str2);
        map.put("ops", str3);
        map.put("speed", String.valueOf(f10));
        qi.h hVar = qi.h.f69682a;
        if (str == null) {
            return;
        }
        hVar.o(str, map);
    }

    public static final void b(String str, long j10, String str2, String str3, Float f10) {
        HashMap map = new HashMap();
        map.put("module_name", "long_pressed");
        map.put("subject_id", str2);
        map.put("ops", str3);
        map.put("speed", String.valueOf(f10));
        map.put("duration", String.valueOf(j10));
        qi.h hVar = qi.h.f69682a;
        if (str == null) {
            return;
        }
        hVar.z(str, map);
    }
}
