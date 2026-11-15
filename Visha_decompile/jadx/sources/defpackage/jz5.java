package defpackage;

import java.util.HashMap;

public abstract class jz5 extends hb0 {
    public static String b(boolean z) {
        return z ? hb0.CLOUD : "";
    }

    public static void c(String str, long j) {
        HashMap map = new HashMap();
        map.put("file_size", cz5.a(j, true));
        map.put("file_name", str);
        p06.b0("cloud_video_save_cl", map);
    }

    public static void d(String str) {
        HashMap map = new HashMap();
        map.put("file_name", str);
        p06.b0("cloud_video_save_s", map);
    }
}
