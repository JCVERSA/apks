package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class j16 extends hb0 {
    public static String b(int i) {
        if (i != 3) {
            return i != 4 ? "fit" : "crop";
        }
        return "stretch";
    }

    public static void c(boolean z, long j, String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("play_type", z ? 1 : 0);
        bundle.putLong("org_duration", j);
        bundle.putString("name", str);
        trackData.add("play_type", z ? 1 : 0);
        trackData.add("org_duration", j);
        trackData.add("name", str);
        p06.q0(trackData, bundle, "vd_cp_setting_background_cl", 9324L);
    }

    public static void d(boolean z, boolean z2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("status", z ? 1 : 0);
        trackData.add("status", z ? 1 : 0);
        bundle.putInt("play_type", z2 ? 1 : 0);
        trackData.add("play_type", z2 ? 1 : 0);
        p06.q0(trackData, bundle, "vd_cp_setting_favorite_cl", 9324L);
    }

    public static void e(int i, String str) {
        hb0.markTrackTwo("vd_cp_playsize_fit_cl", "fit_status", b(i), "asp_ratio", str);
    }

    public static void f(int i) {
        hb0.markTrackTwo("vd_cp_speed_cl", "rotate_status", Integer.valueOf(i), hb0.KEY_NAME_BTN, "speedcl");
    }

    public static void g(int i, int i2) {
        hb0.markTrackTwo("vd_cp_speed_cl", "rotate_status", Integer.valueOf(i), "vd_speed", Integer.valueOf(i2));
    }
}
