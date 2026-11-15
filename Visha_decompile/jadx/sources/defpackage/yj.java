package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.transsion.athena.data.TrackData;
import com.transsion.ga.AthenaAnalytics;

public class yj {
    public static final String b = "yj";
    public int a;

    public yj(int i) {
        this.a = i;
    }

    public void a() {
        try {
            AthenaAnalytics.C(false);
        } catch (Exception e) {
            Log.e(b, "set Athena enable failed : " + e);
        }
    }

    public void b(boolean z) {
        AthenaAnalytics.Z(z);
    }

    public void c(boolean z) {
        try {
            AthenaAnalytics.C(z);
        } catch (Exception e) {
            Log.e(b, "set Athena enable failed : " + e);
        }
    }

    public void d(String str, Bundle bundle, long j) {
        AthenaAnalytics athenaAnalyticsJ = AthenaAnalytics.J(this.a);
        if (athenaAnalyticsJ != null) {
            athenaAnalyticsJ.d0(str, new TrackData(bundle), j);
        }
    }

    public void e(String str, TrackData trackData, long j) {
        AthenaAnalytics athenaAnalyticsJ = AthenaAnalytics.J(this.a);
        if (athenaAnalyticsJ != null) {
            athenaAnalyticsJ.d0(str, trackData, j);
        }
    }

    public yj(Context context, String str, boolean z, int i) {
        this(i);
        Log.d(b, "AthenaImpl: start");
        AthenaAnalytics.P(context, str, i, false, z);
    }
}
