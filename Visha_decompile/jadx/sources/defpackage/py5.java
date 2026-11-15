package defpackage;

import android.text.TextUtils;
import com.transsion.livecaption.constant.ICode;
import java.util.HashMap;

public abstract class py5 extends hb0 {
    public static void b(int i, String str) {
        HashMap map = new HashMap();
        map.put(hb0.KEY_NAME_NUM, Integer.valueOf(i));
        map.put("from", str);
        p06.b0("pop_comment_close", map);
    }

    public static void c(int i, float f, String str) {
        HashMap map = new HashMap();
        map.put(hb0.KEY_NAME_NUM, Integer.valueOf(i));
        map.put("num_1", Float.valueOf(f));
        map.put("from", str);
        p06.b0("pop_comment_ok", map);
    }

    public static void d(int i, float f, String str, String str2) {
        HashMap map = new HashMap();
        map.put(hb0.KEY_NAME_NUM, Integer.valueOf(i));
        map.put("num_1", Float.valueOf(f));
        if (!TextUtils.isEmpty(str)) {
            map.put(ICode.CALL.CALL_KEY_CONTENT, str);
        }
        map.put("from", str2);
        p06.b0("pop_comment_ok", map);
    }

    public static void e(int i, String str) {
        HashMap map = new HashMap();
        map.put(hb0.KEY_NAME_NUM, Integer.valueOf(i));
        map.put("from", str);
        p06.b0("pop_comment_show", map);
    }

    public static void f(int i) {
        HashMap map = new HashMap();
        map.put("loop", Integer.valueOf(i));
        p06.b0("vd_audio_playqueue_loop", map);
    }
}
