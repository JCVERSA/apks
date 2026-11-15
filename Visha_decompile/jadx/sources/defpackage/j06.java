package defpackage;

public abstract class j06 extends hb0 {
    public static void b(String str) {
        hb0.markTrackSingle("vd_video_playqueue_cl", "from", str);
    }

    public static void c(String str) {
        hb0.markTrackSingle("vd_video_playqueue_delete", "from", str);
    }

    public static void d(String str) {
        hb0.markTrackSingle("vd_video_playlist_show", "from", str);
    }

    public static void e(String str) {
        hb0.markTrackSingle("vd_video_playqueue_subdrag", "from", str);
    }

    public static void f(int i, String str) {
        String str2;
        if (i == 0) {
            str2 = "autoplay off";
        } else {
            str2 = i == 2 ? "repeat one" : "repeat all";
        }
        hb0.markTrackTwo("vd_video_playqueue_loop", "loop", str2, "from", str);
    }
}
