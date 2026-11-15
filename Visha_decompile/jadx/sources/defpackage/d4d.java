package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.transsion.athena.athena;
import com.transsion.athena.data.TrackDataWrapper;
import com.transsion.ga.AthenaAnalytics;

public class d4d implements ServiceConnection {
    public final AthenaAnalytics b;

    public d4d(AthenaAnalytics athenaAnalytics) {
        this.b = athenaAnalytics;
    }

    @Override
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.b.c = athena.AbstractBinderC0199athena.a(iBinder);
            this.b.d = true;
            c4d.f("AthenaTrackService onServiceConnected");
            for (TrackDataWrapper trackDataWrapper : this.b.e) {
                if (trackDataWrapper.c().c() < 524288) {
                    this.b.z(trackDataWrapper.a(), trackDataWrapper.c(), trackDataWrapper.b());
                } else {
                    c4d.d("TrackData size is too large, ignored !!");
                }
            }
            this.b.e.clear();
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
        }
    }

    @Override
    public void onServiceDisconnected(ComponentName componentName) {
        this.b.d = false;
        c4d.f("AthenaTrackService onServiceDisconnected");
    }
}
