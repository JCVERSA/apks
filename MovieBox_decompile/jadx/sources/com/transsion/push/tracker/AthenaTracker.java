package com.transsion.push.tracker;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.push.PushManager;
import com.transsion.push.bean.MsgStyle;
import com.transsion.push.utils.PushLogUtils;
import yj.a;

class AthenaTracker {

    private static AthenaTracker f48880a;

    private AthenaTracker() {
    }

    private TrackData a(Bundle bundle) {
        TrackData trackData = new TrackData();
        if (bundle == null) {
            return trackData;
        }
        for (String str : bundle.keySet()) {
            trackData.add(str, bundle.get(str) + "");
        }
        return trackData;
    }

    private boolean c() {
        try {
            int i10 = AthenaAnalytics.f42986p;
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    private void d(Tracker.KEY key, Bundle bundle) {
        if (bundle == null) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        for (String str : bundle.keySet()) {
            sb2.append(str);
            sb2.append(":");
            sb2.append(bundle.get(str));
            sb2.append(", ");
        }
        PushLogUtils.LOG.g("Athena track event:" + key.event + ", tid:" + key.tid + ", " + sb2.toString());
    }

    public static AthenaTracker getInstance() {
        if (f48880a == null) {
            f48880a = new AthenaTracker();
        }
        return f48880a;
    }

    void b() {
        if (c()) {
            AthenaAnalytics.P(a.a().getApplicationContext(), MsgStyle.SOURCE_PUSH, 1041, false);
        }
    }

    void e(Tracker.KEY key, Bundle bundle) {
        if (c()) {
            if (!PushManager.getInstance().getIsSdkInitFinished()) {
                AthenaAnalytics.P(a.a().getApplicationContext(), MsgStyle.SOURCE_PUSH, 1041, false);
            }
            try {
                d(key, bundle);
                AthenaAnalytics.K(key.tid).g0(key.event, a(bundle), key.tid);
            } catch (Exception unused) {
            }
        }
    }
}
