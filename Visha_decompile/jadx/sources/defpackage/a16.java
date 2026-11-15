package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class a16 extends hb0 {
    public static long a;

    public static void b(String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("from", str);
        trackData.add("from", str);
        p06.q0(trackData, bundle, "all_sharetovisha_2", 9324L);
    }

    public static void c(String str, long j, String str2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        long jCurrentTimeMillis = System.currentTimeMillis() - a;
        bundle.putString("name", str);
        int i = ((int) jCurrentTimeMillis) / 1000;
        bundle.putInt("duration", i);
        int i2 = ((int) j) / 1000;
        bundle.putInt("org_duration", i2);
        trackData.add("name", str);
        trackData.add("duration", i);
        trackData.add("org_duration", i2);
        p06.q0(trackData, bundle, str2, 9324L);
    }
}
