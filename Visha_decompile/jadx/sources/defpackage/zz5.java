package defpackage;

import java.util.HashMap;
import org.mozilla.javascript.ES6Iterator;

public abstract class zz5 extends hb0 {
    public static volatile long a;

    public static void b() {
        if (System.currentTimeMillis() - a < 1000) {
            a = System.currentTimeMillis();
        } else {
            a = System.currentTimeMillis();
            hb0.markDirect("vd_ott_allvideo_show");
        }
    }

    public static void c(long j, String str) {
        HashMap map = new HashMap();
        map.put("videoID", Long.valueOf(j));
        map.put("source", str);
        p06.b0("vd_ott_allvideo_video_cl", map);
    }

    public static void d(String str, boolean z) {
        HashMap map = new HashMap();
        map.put(ES6Iterator.VALUE_PROPERTY, str);
        p06.b0(z ? "vd_ott_vip_pop_show" : "vd_ott_vip_pop_cl", map);
    }

    public static void e(long j) {
        HashMap map = new HashMap();
        map.put("labelid", Long.valueOf(j));
        p06.b0("vd_ott_allvideo_label_cl", map);
    }
}
