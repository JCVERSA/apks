package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class y06 extends hb0 {
    public static void b(String str, String str2, int i, String str3, String str4) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("videonum", i);
        trackData.add("videonum", i);
        bundle.putString("videoID", str2);
        trackData.add("videoID", str2);
        bundle.putString("sourceId", str);
        trackData.add("sourceId", str);
        bundle.putString("ispay", str3);
        trackData.add("ispay", str3);
        bundle.putString("relatedvideoid", str4);
        trackData.add("relatedvideoid", str4);
        p06.q0(trackData, bundle, "vd_ott_detail_related_cl", 9324L);
    }
}
