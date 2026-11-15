package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class uz5 extends hb0 {
    public static void b(int i, long j, String str, long j2, String str2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("historysort", i);
        trackData.add("historysort", i);
        bundle.putLong("videoID", j);
        trackData.add("videoID", j);
        bundle.putLong(hb0.KEY_NAME_SERIALSID, j2);
        trackData.add(hb0.KEY_NAME_SERIALSID, j2);
        bundle.putString("ispay", str2);
        trackData.add("ispay", str2);
        p06.q0(trackData, bundle, str, 9324L);
    }

    public static void c(long j, long j2, String str, String str2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putLong("videoID", j2);
        trackData.add("videoID", j2);
        bundle.putLong(hb0.KEY_NAME_SERIALSID, j);
        trackData.add(hb0.KEY_NAME_SERIALSID, j);
        bundle.putString("ispay", str2);
        trackData.add("ispay", str2);
        p06.q0(trackData, bundle, str, 9324L);
    }

    public static void d(long j, String str, int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putLong("videoID", j);
        bundle.putString("from", str);
        bundle.putInt("isvip", i);
        trackData.add("isvip", i);
        trackData.add("videoID", j);
        trackData.add("from", str);
        p06.q0(trackData, bundle, "vd_ott_video_cl", 9324L);
    }
}
