package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class l16 extends hb0 {
    public static void b(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt(hb0.KEY_NAME_BTN, i);
        trackData.add(hb0.KEY_NAME_BTN, i);
        p06.q0(trackData, bundle, "vd_cp_equalizer_pop_cl", 9324L);
    }
}
