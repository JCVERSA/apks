package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class e06 extends hb0 {
    public static void b(String str, long j, String str2, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putString("videoname", str);
        bundle.putLong("videoID", j);
        bundle.putString("serialsname", str2);
        bundle.putString("playermode", z ? "horizontal" : "vertical");
        TrackData trackData = new TrackData();
        trackData.add("videoname", str);
        trackData.add("videoID", j);
        trackData.add("serialsname", str2);
        trackData.add("playermode", z ? "horizontal" : "vertical");
        hb0.markDirect("vd_ott_detail_tryplay_cl", trackData, bundle);
    }

    public static void c(String str, long j, String str2, long j2) {
        Bundle bundle = new Bundle();
        bundle.putString("videoname", str);
        bundle.putLong("videoID", j);
        bundle.putString("serialsname", str2);
        bundle.putLong("duration", j2);
        TrackData trackData = new TrackData();
        trackData.add("videoname", str);
        trackData.add("videoID", j);
        trackData.add("serialsname", str2);
        trackData.add("duration", j2);
        hb0.markDirect("vd_ott_detail_tryplay_duration", trackData, bundle);
    }
}
