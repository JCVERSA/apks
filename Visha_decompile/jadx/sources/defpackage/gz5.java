package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class gz5 extends hb0 {
    public static void b(boolean z, int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("duration", i);
        trackData.add("duration", i);
        p06.q0(trackData, bundle, z ? "vd_ott_player_gesture_doubletap_forward" : "vd_ott_player_gesture_doubletap_retreat", 9324L);
    }
}
