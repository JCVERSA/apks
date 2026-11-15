package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class vz5 extends hb0 {
    public static void b() {
        p06.q0(null, null, "vd_ott_nodata_show", 9324L);
    }

    public static void c(boolean z) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("result", z ? "success" : "fail");
        trackData.add("result", z ? "success" : "fail");
        p06.q0(trackData, bundle, "vd_ott_nodata_retry_cl", 9324L);
    }
}
