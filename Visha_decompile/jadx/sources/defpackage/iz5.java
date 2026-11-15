package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class iz5 extends hb0 {
    public static void b(boolean z, int i) {
        String str = z ? "success" : "fail";
        Bundle bundle = new Bundle();
        bundle.putString("status", str);
        bundle.putInt("try_count", i);
        TrackData trackData = new TrackData();
        trackData.add("status", str);
        trackData.add("try_count", i);
        hb0.markDirect("vd_ip_request_status", trackData, bundle);
    }
}
