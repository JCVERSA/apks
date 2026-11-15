package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class s16 extends hb0 {
    public static String b(int i, int i2) {
        return "0:" + i + ", 1:" + i2;
    }

    public static void c(int i, String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt(hb0.KEY_NAME_NUM, i);
        trackData.add(hb0.KEY_NAME_NUM, i);
        bundle.putString("from", str);
        trackData.add("from", str);
        p06.q0(trackData, bundle, "dl_brower_rp_dl_cl", 9324L);
    }

    public static void d(int i, int i2, int i3) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("type", i);
        trackData.add("type", i);
        String strB = b(i2, i3);
        bundle.putString(hb0.KEY_NAME_NUM, strB);
        trackData.add(hb0.KEY_NAME_NUM, strB);
        p06.q0(trackData, bundle, "dl_wa_show", 9324L);
    }
}
