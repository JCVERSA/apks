package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class l06 extends hb0 {
    public static int a;

    public static void b(String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("from", a);
        bundle.putString("name", str);
        trackData.add("from", a);
        trackData.add("name", str);
        p06.q0(trackData, bundle, "vd_cp_adpopup_close_cl", 9324L);
    }

    public static void c(String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("from", a);
        bundle.putString("name", str);
        trackData.add("from", a);
        trackData.add("name", str);
        p06.q0(trackData, bundle, "vd_cp_adpopup_go_cl", 9324L);
    }

    public static void d(String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("status", hb0.status);
        bundle.putInt("from", a);
        bundle.putString("name", str);
        trackData.add("status", hb0.status);
        trackData.add("from", a);
        trackData.add("name", str);
        p06.q0(trackData, bundle, "vd_cp_adpopup_show", 9324L);
    }
}
