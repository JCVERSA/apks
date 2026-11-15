package defpackage;

import java.util.HashMap;

public abstract class qy5 extends hb0 {
    public static String a = "manualedit";

    public static void b(String str, String str2, String str3, String str4) {
        HashMap map = new HashMap();
        map.put("songname", str);
        map.put("singer", str2);
        map.put("album", str3);
        map.put("from", str4);
        map.put("savefrom", a);
        hb0.markTrackMap("vd_vmore_edit_pop_save", map);
    }
}
