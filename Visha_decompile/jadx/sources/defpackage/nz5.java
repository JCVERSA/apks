package defpackage;

import com.blankj.utilcode.util.Utils;
import com.transsion.livecaption.constant.ICode;

public abstract class nz5 extends hb0 {
    public static void b(int i, int i2) {
        hb0.markTrackTwo("vd_audio_lyrics_search_result", "process", Integer.valueOf(i), ICode.CALL.CALL_KEY_STATE, Integer.valueOf(i2));
    }

    public static void c(String str, int i) {
        hb0.markTrackTwo(str, "statue", Integer.valueOf(i), "note", Integer.valueOf(w6c.c(Utils.a(), "show_lyric_guide", true) ? 1 : 2));
    }
}
