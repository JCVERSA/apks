package defpackage;

import android.os.Bundle;
import com.lzy.okgo.model.Progress;
import com.transsion.athena.data.TrackData;

public abstract class k16 {
    public static void a(int i, String str) {
        TrackData trackData = new TrackData();
        trackData.add(hb0.KEY_NAME_NUM, i);
        Bundle bundle = new Bundle();
        bundle.putString(hb0.KEY_NAME_NUM, i + "");
        p06.q0(trackData, bundle, str, 9324L);
    }

    public static void b(boolean z) {
        TrackData trackData = new TrackData();
        trackData.add(hb0.KEY_NAME_BTN, z ? "check" : "sure");
        Bundle bundle = new Bundle();
        bundle.putString(hb0.KEY_NAME_BTN, z ? "check" : "sure");
        p06.q0(trackData, bundle, "vd_vmore_tomp3_pop2_cl", 9324L);
    }

    public static void c(int i, boolean z) {
        String str;
        if (i == 9) {
            str = "allvideo";
        } else if (i != 10) {
            str = i != 37 ? "search" : "playlist";
        } else {
            str = Progress.FOLDER;
        }
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("from", str);
        trackData.add("from", str);
        bundle.putInt("status", z ? 1 : 0);
        trackData.add("status", z ? "1" : "0");
        p06.q0(trackData, bundle, "moretab_tomp3_add_cl", 9324L);
    }
}
