package com.mbridge.msdk.mbsignalcommon.mraid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.lang.ref.WeakReference;

public class d {

    public static double f35676f = -1.0d;

    private Context f35677a;

    private AudioManager f35678b;

    private boolean f35679c = false;

    private b f35680d;

    private a f35681e;

    private static class a extends BroadcastReceiver {

        private WeakReference<d> f35682a;

        public a(d dVar) {
            this.f35682a = new WeakReference<>(dVar);
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            d dVar;
            b bVarB;
            if (!"android.media.VOLUME_CHANGED_ACTION".equals(intent.getAction()) || intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1) != 3 || (dVar = this.f35682a.get()) == null || (bVarB = dVar.b()) == null) {
                return;
            }
            double dA = dVar.a();
            if (dA >= 0.0d) {
                bVarB.a(dA);
            }
        }
    }

    public interface b {
        void a(double d10);
    }

    public d(Context context) {
        this.f35677a = context;
        this.f35678b = (AudioManager) context.getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
    }

    public double a() {
        AudioManager audioManager = this.f35678b;
        int streamMaxVolume = audioManager != null ? audioManager.getStreamMaxVolume(3) : -1;
        AudioManager audioManager2 = this.f35678b;
        double streamVolume = (((double) (audioManager2 != null ? audioManager2.getStreamVolume(3) : -1)) * 100.0d) / ((double) streamMaxVolume);
        f35676f = streamVolume;
        return streamVolume;
    }

    public b b() {
        return this.f35680d;
    }

    public void c() {
        if (this.f35677a != null) {
            this.f35681e = new a(this);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
            this.f35677a.registerReceiver(this.f35681e, intentFilter);
            this.f35679c = true;
        }
    }

    public void d() {
        Context context;
        if (!this.f35679c || (context = this.f35677a) == null) {
            return;
        }
        try {
            context.unregisterReceiver(this.f35681e);
            this.f35680d = null;
            this.f35679c = false;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(b bVar) {
        this.f35680d = bVar;
    }
}
