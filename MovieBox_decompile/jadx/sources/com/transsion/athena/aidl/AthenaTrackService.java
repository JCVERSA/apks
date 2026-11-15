package com.transsion.athena.aidl;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.transsion.athena.data.TrackData;
import com.transsion.athena.taaneh.aethna;
import com.transsion.ga.AthenaAnalytics;

public class AthenaTrackService extends Service {

    private final com.transsion.athena.athena.AbstractBinderC0575athena f41431a = new athena(this);

    class athena extends com.transsion.athena.athena.AbstractBinderC0575athena {
        athena(AthenaTrackService athenaTrackService) {
        }

        @Override
        public void a(String str, TrackData trackData, long j10) throws RemoteException {
            aethna.a("AthenaTrackService receive appId : %d, eventName : %s", Long.valueOf(j10), str);
            AthenaAnalytics.L(j10).h0(str, trackData, j10);
        }
    }

    @Override
    @Nullable
    public IBinder onBind(Intent intent) {
        aethna.a("AthenaTrackService onBind");
        return this.f41431a;
    }

    @Override
    public boolean onUnbind(Intent intent) {
        aethna.a("AthenaTrackService onUnbind");
        return super.onUnbind(intent);
    }
}
