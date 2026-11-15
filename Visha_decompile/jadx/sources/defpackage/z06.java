package defpackage;

import android.os.Bundle;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.lzy.okgo.model.HttpHeaders;
import com.transsion.athena.data.TrackData;

public abstract class z06 extends hb0 {
    public static void b(boolean z) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("data_play", z ? 1 : 0);
        trackData.add("data_play", z ? 1 : 0);
        p06.q0(trackData, bundle, "setup_setuppage_dataplay_cl", 9324L);
    }

    public static void c(int i) {
        String str;
        if (i == 1) {
            str = "open";
        } else {
            str = i == 2 ? HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE : "cancel";
        }
        hb0.markTrackSingle("vd_more_setting_cardset_cl", ClientABTestDTOKt.SWITCH, str);
    }
}
