package com.transsion.athena.aidl;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.transsion.athena.data.TrackData;
import com.transsion.ga.AthenaAnalytics;
import defpackage.c4d;

public class AthenaTrackService extends Service {
    public final com.transsion.athena.athena.AbstractBinderC0199athena b = new athena(this);

    public class athena extends com.transsion.athena.athena.AbstractBinderC0199athena {
        public athena(AthenaTrackService athenaTrackService) {
        }

        @Override
        public void a(String str, TrackData trackData, long j) throws RemoteException {
            c4d.c("AthenaTrackService receive appId : %d, eventName : %s", Long.valueOf(j), str);
            AthenaAnalytics.K(j).d0(str, trackData, j);
        }
    }

    @Override
    public IBinder onBind(Intent intent) {
        c4d.b("AthenaTrackService onBind");
        return this.b;
    }

    @Override
    public boolean onUnbind(Intent intent) {
        c4d.b("AthenaTrackService onUnbind");
        return super.onUnbind(intent);
    }
}
