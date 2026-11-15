package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class qz5 extends hb0 {
    public static void b(String str, String str2, int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString(hb0.KEY_NAME_BTN, str);
        trackData.add(hb0.KEY_NAME_BTN, str);
        bundle.putString("type", str2);
        trackData.add("type", str2);
        bundle.putInt(hb0.KEY_NAME_NUM, i);
        trackData.add(hb0.KEY_NAME_NUM, i);
        hb0.markDirect("vd_vmore_del_cl_check", trackData, bundle);
    }

    public static void c(String str, String str2, int i) {
        Bundle bundle = new Bundle();
        bundle.putString(hb0.KEY_NAME_BTN, str);
        TrackData trackData = new TrackData();
        trackData.add(hb0.KEY_NAME_BTN, str);
        bundle.putString("type", str2);
        trackData.add("type", str2);
        bundle.putInt(hb0.KEY_NAME_NUM, i);
        trackData.add(hb0.KEY_NAME_NUM, i);
        hb0.markDirect("vd_vmore_del_cl_doublecheck", trackData, bundle);
    }
}
