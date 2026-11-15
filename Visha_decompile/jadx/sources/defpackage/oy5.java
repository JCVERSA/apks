package defpackage;

import android.util.Log;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public final class oy5 {
    public static final oy5 a = new oy5();

    public static final void a(String str, String str2) {
        y45.j(str, "launchType");
        String str3 = (str2 == null || j1a.o0(str2)) ? "sw_rule" : str2;
        Log.d("MarkAppLaunch", "markAppLaunch " + str + StringUtils.COMMA + str2);
        hb0.markTrackTwo("visha_launch", "launch_type", str, "intercept_type", str3);
    }
}
