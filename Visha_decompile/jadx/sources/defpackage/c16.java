package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public abstract class c16 extends hb0 {
    public static void b() {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("name", hb0.name);
        trackData.add("name", hb0.name);
        p06.q0(trackData, bundle, "skin_preview_slip", 9324L);
    }
}
