package defpackage;

import android.os.Bundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.transsion.athena.data.TrackData;

public abstract class vy5 extends hb0 {
    public static final String[] a = {"off", "15min", "30min", "45min", "60min", TypedValues.Custom.NAME};

    public static void b(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("duration", i);
        trackData.add("duration", i);
        p06.q0(trackData, bundle, "vd_audio_timer_pop_custom_ok_cl", 9324L);
    }

    public static void c(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("duration", i);
        trackData.add("duration", i);
        p06.q0(trackData, bundle, "vd_audio_timer_finish", 9324L);
    }

    public static void d(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        String[] strArr = a;
        bundle.putString(hb0.KEY_NAME_BTN, strArr[i]);
        trackData.add(hb0.KEY_NAME_BTN, strArr[i]);
        p06.q0(trackData, bundle, "vd_audio_timer_pop_option_cl", 9324L);
    }

    public static void e(int i, int i2) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        String[] strArr = a;
        bundle.putString(hb0.KEY_NAME_BTN, strArr[i]);
        bundle.putInt("status", i2);
        trackData.add(hb0.KEY_NAME_BTN, strArr[i]);
        trackData.add("status", i2);
        p06.q0(trackData, bundle, "vd_audio_timer_pop_show", 9324L);
    }

    public static void f(int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("status", i);
        trackData.add("status", i);
        p06.q0(trackData, bundle, "vd_audio_timer_pop_switch_cl", 9324L);
    }
}
