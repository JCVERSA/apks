package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class t06 {
    public static void a(String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("type", str);
        trackData.add("type", str);
        p06.q0(trackData, bundle, "vd_all_shuffle_cl", 9324L);
    }

    public static void b(String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("type", str);
        trackData.add("type", str);
        p06.q0(trackData, bundle, "vd_all_shuffle_show", 9324L);
    }
}
