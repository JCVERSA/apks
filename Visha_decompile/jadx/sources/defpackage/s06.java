package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class s06 {
    public static void a(String str, long j) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("video_name", str);
        trackData.add("video_name", str);
        bundle.putLong("org_duration", j);
        trackData.add("org_duration", j);
        p06.q0(trackData, bundle, "vd_video_play_addmusic_cl", 9324L);
    }

    public static void b(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("mv_amount", i);
        trackData.add("mv_amount", i);
        p06.q0(trackData, bundle, "vd_musicvideo_file", 9324L);
    }

    public static void c() {
        p06.q0(null, null, "vd_mv_guide_show", 9324L);
    }

    public static void d() {
        p06.q0(null, null, "vd_audio_mv_show", 9324L);
    }
}
