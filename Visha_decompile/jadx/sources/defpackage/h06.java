package defpackage;

import android.os.Bundle;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.transsion.athena.data.TrackData;

public abstract class h06 extends hb0 {
    public static long a;

    public static void b() {
        a = System.currentTimeMillis();
    }

    public static void c(boolean z) {
        p06.o0("vd_more_pip_switch", ClientABTestDTOKt.SWITCH, z ? "on" : "off");
    }

    public static void d(boolean z) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString(hb0.KEY_NAME_MODE, z ? "localvideo" : "onlinevide");
        trackData.add(hb0.KEY_NAME_MODE, z ? "localvideo" : "onlinevide");
        p06.q0(trackData, bundle, "vd_pip_show", 9324L);
    }

    public static void e(String str) {
        p06.o0("vd_pip_gesture", hb0.KEY_NAME_MODE, str);
    }

    public static void f() {
        int iCurrentTimeMillis = (int) ((System.currentTimeMillis() - a) / 1000);
        if (iCurrentTimeMillis > 3600000) {
            return;
        }
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("duration", iCurrentTimeMillis);
        trackData.add("duration", iCurrentTimeMillis);
        p06.q0(trackData, bundle, "vd_ott_pip_duration", 9324L);
    }
}
