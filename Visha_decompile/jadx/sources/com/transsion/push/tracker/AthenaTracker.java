package com.transsion.push.tracker;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.push.PushManager;
import com.transsion.push.utils.PushLogUtils;
import defpackage.xj1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

class AthenaTracker {
    public static AthenaTracker a;

    public static AthenaTracker getInstance() {
        if (a == null) {
            a = new AthenaTracker();
        }
        return a;
    }

    public final TrackData a(Bundle bundle) {
        TrackData trackData = new TrackData();
        if (bundle == null) {
            return trackData;
        }
        for (String str : bundle.keySet()) {
            trackData.add(str, bundle.get(str) + "");
        }
        return trackData;
    }

    public void b() {
        if (c()) {
            AthenaAnalytics.O(xj1.a().getApplicationContext(), "push", 1041, false);
        }
    }

    public final boolean c() {
        try {
            AthenaAnalytics.b bVar = AthenaAnalytics.f;
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public final void d(Tracker.KEY key, Bundle bundle) {
        if (bundle == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (String str : bundle.keySet()) {
            sb.append(str);
            sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
            sb.append(bundle.get(str));
            sb.append(", ");
        }
        PushLogUtils.LOG.g("Athena track event:" + key.event + ", tid:" + key.tid + ", " + sb.toString());
    }

    public void e(Tracker.KEY key, Bundle bundle) {
        if (c()) {
            if (!PushManager.getInstance().getIsSdkInitFinished()) {
                AthenaAnalytics.O(xj1.a().getApplicationContext(), "push", 1041, false);
            }
            try {
                d(key, bundle);
                AthenaAnalytics.J(key.tid).c0(key.event, a(bundle), key.tid);
            } catch (Exception unused) {
            }
        }
    }
}
