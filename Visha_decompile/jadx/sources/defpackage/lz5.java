package defpackage;

import androidx.core.app.NotificationCompat;
import java.util.HashMap;

public abstract class lz5 extends hb0 {
    public static void b(boolean z, String str) {
        HashMap map = new HashMap();
        map.put("duration", str);
        p06.b0(!z ? "vd_cp_timer_pop_custom_cancel_cl" : "vd_cp_timer_pop_custom_ok_cl", map);
    }

    public static void c() {
        hb0.markDirect("vd_audio_playpage_show");
    }

    public static void d(String str, String str2) {
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_MESSAGE, str);
        map.put("type", str2);
        p06.b0("all_sharetovisha", map);
    }

    public static void e() {
        hb0.markDirect("vd_cp_timer_finish");
    }

    public static void f(String str, int i, int i2) {
        HashMap map = new HashMap();
        map.put("from", p06.e(i));
        map.put(hb0.KEY_NAME_NUM, Integer.valueOf(i2));
        p06.b0(str, map);
    }

    public static void g() {
        hb0.markDirect("vd_video_playpage_show");
    }

    public static void h(int i) {
        HashMap map = new HashMap();
        map.put("status", Integer.valueOf(i));
        p06.b0("vd_video_play_favorite_cl", map);
    }
}
