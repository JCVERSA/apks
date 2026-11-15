package defpackage;

public abstract class mz5 extends hb0 {
    public static void b(String str) {
        hb0.markTrackSingle("vd_audio_locmusic_cl", "play_control", str);
    }

    public static void c(int i) {
        String str;
        if (i != 2) {
            str = i != 3 ? "loop list" : "random play";
        } else {
            str = "loop one";
        }
        hb0.markTrackSingle("vd_audio_locmusic_cl", "play_loop", str);
    }
}
