package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class k06 extends hb0 {
    public static void b(String str, boolean z) {
        TrackData trackData = new TrackData();
        trackData.add(hb0.KEY_NAME_BTN, str);
        trackData.add("is_video", z ? 1 : 0);
        Bundle bundle = new Bundle();
        bundle.putString(hb0.KEY_NAME_BTN, str);
        bundle.putInt("is_video", z ? 1 : 0);
        hb0.markDirect("vd_noti_cl", trackData, bundle);
    }
}
