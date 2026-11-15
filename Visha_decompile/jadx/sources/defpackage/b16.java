package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class b16 extends hb0 {
    public static void b(int i, int i2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("type", i);
        trackData.add("type", i);
        bundle.putInt(hb0.KEY_NAME_NUM, i2);
        trackData.add(hb0.KEY_NAME_NUM, i2);
        p06.q0(trackData, bundle, "pop_stdesktop_show", 9324L);
    }

    public static void c(int i, int i2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("type", i);
        trackData.add("type", i);
        bundle.putInt(hb0.KEY_NAME_NUM, i2);
        trackData.add(hb0.KEY_NAME_NUM, i2);
        p06.q0(trackData, bundle, "pop_stdesktop_ok", 9324L);
    }
}
