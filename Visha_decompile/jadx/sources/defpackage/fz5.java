package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class fz5 extends hb0 {
    public static void b(boolean z, int i, int i2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("duration", i);
        bundle.putInt("from", i2);
        trackData.add("duration", i);
        trackData.add("from", i2);
        p06.q0(trackData, bundle, z ? "vd_video_play_gesture_doubletap_forwardtime" : "vd_video_play_gesture_doubletap_retreattime", 9324L);
    }

    public static void c(float f, float f2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        float f3 = f * 100.0f;
        bundle.putFloat("volume0", f3);
        float f4 = f2 * 100.0f;
        bundle.putFloat("volume1", f4);
        trackData.add("volume0", f3);
        trackData.add("volume1", f4);
        p06.q0(trackData, bundle, "vd_video_play_gesture_volume", 9324L);
    }
}
