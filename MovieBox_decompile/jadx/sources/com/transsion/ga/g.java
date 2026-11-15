package com.transsion.ga;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.transsion.athena.data.TrackDataWrapper;
import com.transsion.athena.taaneh.aethna;

class g implements ServiceConnection {

    final AthenaAnalytics f43024a;

    g(AthenaAnalytics athenaAnalytics) {
        this.f43024a = athenaAnalytics;
    }

    @Override
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.f43024a.f42991c = com.transsion.athena.athena.AbstractBinderC0575athena.a(iBinder);
            this.f43024a.f42992d = true;
            aethna.c("AthenaTrackService onServiceConnected");
            for (TrackDataWrapper trackDataWrapper : this.f43024a.f42993e) {
                if (trackDataWrapper.c().c() < 524288) {
                    this.f43024a.A(trackDataWrapper.a(), trackDataWrapper.c(), trackDataWrapper.b());
                } else {
                    aethna.b("TrackData size is too large, ignored !!");
                }
            }
            this.f43024a.f42993e.clear();
        } catch (Exception e10) {
            aethna.b(Log.getStackTraceString(e10));
        }
    }

    @Override
    public void onServiceDisconnected(ComponentName componentName) {
        this.f43024a.f42992d = false;
        aethna.c("AthenaTrackService onServiceDisconnected");
    }
}
