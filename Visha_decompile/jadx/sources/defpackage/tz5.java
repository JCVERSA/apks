package defpackage;

import android.os.Bundle;
import android.util.Log;
import com.blankj.utilcode.util.b;
import com.transsion.athena.data.TrackData;
import java.util.concurrent.ScheduledFuture;

public abstract class tz5 {
    public static ScheduledFuture d;
    public static final Boolean a = Boolean.FALSE;
    public static volatile int b = 0;
    public static volatile boolean c = true;
    public static final Runnable e = new Runnable() {
        @Override
        public final void run() {
            tz5.d();
        }
    };

    public static void b(boolean z, int i) {
        synchronized (a) {
            if (!c) {
                z = c;
            }
            c = z;
            b += i;
        }
    }

    public static void c() {
        synchronized (a) {
            c = true;
            b = 0;
        }
    }

    public static void d() {
        i(c, b);
    }

    public static void e() {
        ScheduledFuture scheduledFuture = d;
        if (scheduledFuture != null) {
            iea.b(scheduledFuture, false);
            d = null;
        }
    }

    public static void f(boolean z) {
        String str = z ? "on" : "off";
        TrackData trackData = new TrackData();
        trackData.add("status", str);
        Bundle bundle = new Bundle();
        bundle.putString("status", str);
        Log.i("MarkNewAudioNotification", "sendMediaStoreChange: " + str);
        p06.q0(trackData, bundle, "vd_mediastore_change", 9324L);
    }

    public static void g(long j) {
        StringBuilder sb = new StringBuilder();
        sb.append("sendNotificationDuration: ");
        long j2 = j / 1000;
        sb.append(j2);
        Log.i("MarkNewAudioNotification", sb.toString());
        p06.a0("vd_newmedianotice_cl", "duration", j2 + "");
    }

    public static void h(boolean z, int i) {
        e();
        if (!z && b > 0) {
            i(c, b);
        }
        b(z, i);
        d = iea.c(5000L, e, null);
    }

    public static void i(boolean z, int i) {
        String str = b.f() ? "in_app" : "background";
        String str2 = z ? "True" : "False";
        TrackData trackData = new TrackData();
        trackData.add("is_update", str2);
        trackData.add("songs_count", i);
        trackData.add("scene", str);
        Bundle bundle = new Bundle();
        bundle.putString("is_update", str2);
        bundle.putInt("songs_count", i);
        bundle.putString("scene", str);
        Log.i("MarkNewAudioNotification", "sendNotificationVisible: " + str + " size = " + i + " isUpdate = " + z);
        p06.q0(trackData, bundle, "vd_newmedianotice_show", 9324L);
        c();
    }
}
