package defpackage;

import java.util.HashMap;

public abstract class kz5 extends hb0 {
    public static void b(String str, boolean z, int i) {
        HashMap map = new HashMap();
        map.put("type", z ? "videolist" : "audiolist");
        map.put(hb0.KEY_NAME_NUM, Integer.valueOf(i));
        p06.b0(str, map);
    }

    public static void c(boolean z) {
        HashMap map = new HashMap();
        map.put("type", "audiolist");
        map.put(hb0.KEY_NAME_FILE_TYPE, z ? "mv" : "audio");
        p06.b0("vd_playpage_delete_cl", map);
    }

    public static void d(boolean z) {
        HashMap map = new HashMap();
        map.put("type", z ? "videolist" : "audiolist");
        p06.b0("vd_playpage_delete_cl", map);
    }

    public static void e(boolean z, int i) {
        HashMap map = new HashMap();
        map.put(z ? "video_amount" : "audio_amount", Integer.valueOf(i));
        p06.b0(z ? "vd_nplaylist_recentlyadded_show_p" : "recentlyadded_list_show_p", map);
    }

    public static void f(String str, boolean z) {
        HashMap map = new HashMap();
        map.put("type", "audiolist");
        map.put(hb0.KEY_NAME_FILE_TYPE, z ? "mv" : "audio");
        p06.b0(str, map);
    }

    public static void g(String str, boolean z) {
        HashMap map = new HashMap();
        map.put("type", z ? "videolist" : "audiolist");
        p06.b0(str, map);
    }
}
