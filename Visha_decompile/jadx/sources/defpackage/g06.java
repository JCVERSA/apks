package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class g06 extends hb0 {
    public static void b(String str, int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("from", str);
        bundle.putInt("type", i);
        trackData.add("from", str);
        trackData.add("type", i);
        p06.q0(trackData, bundle, "all_login", 9324L);
    }

    public static void c(boolean z, String str, int i, String str2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("from", str);
        bundle.putString("message", str2);
        bundle.putInt("type", i);
        bundle.putInt("status", z ? 1 : 0);
        trackData.add("from", str);
        trackData.add("type", i);
        trackData.add("status", z ? 1 : 0);
        trackData.add("message", str2);
        p06.q0(trackData, bundle, "vd_all_login_cb", 9324L);
    }
}
