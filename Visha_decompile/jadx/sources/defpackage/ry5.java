package defpackage;

import android.os.Bundle;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.transsion.athena.data.TrackData;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.HashMap;

public abstract class ry5 extends hb0 {
    public static String a = "minibar";

    public static void b(boolean z, int i, short[] sArr, int i2, int i3, int i4) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt(ClientABTestDTOKt.SWITCH, z ? 1 : 0);
        trackData.add(ClientABTestDTOKt.SWITCH, z ? 1 : 0);
        bundle.putInt("Soundeffect", i);
        trackData.add("Soundeffect", i);
        if (i == 0 && sArr != null) {
            String str = null;
            for (int i5 = 0; i5 < sArr.length; i5++) {
                str = str + " 频段" + i5 + StringUtils.PROCESS_POSTFIX_DELIMITER + (sArr[i5] / 100) + " ";
            }
            bundle.putString(MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD, str);
            trackData.add(MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD, str);
        }
        int i6 = i2 / 10;
        bundle.putInt("Bass", i6);
        trackData.add("Bass", i6);
        int i7 = i3 / 10;
        bundle.putInt("Surround", i7);
        trackData.add("Surround", i7);
        bundle.putInt("reverb", i4);
        trackData.add("reverb", i4);
        p06.q0(trackData, bundle, "vd_audio_equalizer_pop_status", 9324L);
    }

    public static void c(boolean z) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("statue0", !z ? 1 : 0);
        trackData.add("statue0", !z ? 1 : 0);
        bundle.putInt("statue1", z ? 1 : 0);
        trackData.add("statue1", z ? 1 : 0);
        p06.q0(trackData, bundle, "vd_audio_equalizer_pop_cl", 9324L);
    }

    public static void d(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt(hb0.KEY_NAME_BTN, i);
        trackData.add(hb0.KEY_NAME_BTN, i);
        p06.q0(trackData, bundle, "vd_audio_equalizer_pop_cl", 9324L);
    }

    public static void e() {
        TrackData trackData = new TrackData();
        Bundle bundle = new Bundle();
        bundle.putString(hb0.KEY_NAME_BTN, "eq_reverb");
        trackData.add(hb0.KEY_NAME_BTN, "eq_reverb");
        p06.q0(trackData, bundle, "vd_audio_equalizer_pop_cl", 9324L);
    }

    public static void f(int i, String str) {
        HashMap map = new HashMap();
        map.put("from", Integer.valueOf(i));
        p06.b0(str, map);
    }

    public static void g(String str) {
        a = str;
    }

    public static void h(int i, int i2) {
        HashMap map = new HashMap();
        map.put("type", Integer.valueOf(i));
        map.put("from", Integer.valueOf(i2));
        p06.b0("vd_widget_add_show_addcl", map);
    }

    public static void i(int i) {
        HashMap map = new HashMap();
        map.put("type", Integer.valueOf(i));
        p06.b0("vd_widget_add_show_checkpop_okcl", map);
    }

    public static void j(int i) {
        HashMap map = new HashMap();
        map.put("statue", Integer.valueOf(i));
        p06.b0("vd_widget_audioplay_favorite", map);
    }

    public static void k(int i) {
        HashMap map = new HashMap();
        map.put("type", Integer.valueOf(i));
        p06.b0("vd_widget_audioplay_cl", map);
    }

    public static void l(int i) {
        HashMap map = new HashMap();
        map.put("type", Integer.valueOf(i));
        p06.b0("vd_widget_delect", map);
    }

    public static void m(int i) {
        HashMap map = new HashMap();
        map.put("from", Integer.valueOf(i));
        p06.b0("vd_widget_add_show", map);
    }

    public static void n(int i, int i2) {
        HashMap map = new HashMap();
        map.put("type", Integer.valueOf(i));
        map.put("from", Integer.valueOf(i2));
        p06.b0("vd_widget_add_dwidget_show", map);
    }

    public static void o(String str) {
        HashMap map = new HashMap();
        map.put(hb0.KEY_NAME_BTN, str);
        p06.b0("vd_widget_audioplay_switch", map);
    }
}
