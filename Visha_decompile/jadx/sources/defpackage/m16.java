package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class m16 extends hb0 {
    public static long a;

    public static void b() {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putLong("duration", hb0.duration);
        trackData.add("duration", hb0.duration);
        p06.q0(trackData, bundle, "vd_ld_dur", 9324L);
    }
}
