package com.google.android.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

final class g3 {

    private final Context f24450a;

    private final Handler f24451b;

    private final b f24452c;

    private final AudioManager f24453d;

    private c f24454e;

    private int f24455f;

    private int f24456g;

    private boolean f24457h;

    public interface b {
        void l(int i10);

        void r(int i10, boolean z10);
    }

    final class c extends BroadcastReceiver {
        private c() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            Handler handler = g3.this.f24451b;
            final g3 g3Var = g3.this;
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    g3.b(g3Var);
                }
            });
        }
    }

    public g3(Context context, Handler handler, b bVar) {
        Context applicationContext = context.getApplicationContext();
        this.f24450a = applicationContext;
        this.f24451b = handler;
        this.f24452c = bVar;
        AudioManager audioManager = (AudioManager) com.google.android.exoplayer2.util.a.i((AudioManager) applicationContext.getSystemService(MimeTypes.BASE_TYPE_AUDIO));
        this.f24453d = audioManager;
        this.f24455f = 3;
        this.f24456g = f(audioManager, 3);
        this.f24457h = e(audioManager, this.f24455f);
        c cVar = new c();
        try {
            applicationContext.registerReceiver(cVar, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            this.f24454e = cVar;
        } catch (RuntimeException e10) {
            com.google.android.exoplayer2.util.s.j("StreamVolumeManager", "Error registering stream volume receiver", e10);
        }
    }

    public static void b(g3 g3Var) {
        g3Var.i();
    }

    private static boolean e(AudioManager audioManager, int i10) {
        if (com.google.android.exoplayer2.util.p0.f26854a >= 23) {
            return audioManager.isStreamMute(i10);
        }
        return f(audioManager, i10) == 0;
    }

    private static int f(AudioManager audioManager, int i10) {
        try {
            return audioManager.getStreamVolume(i10);
        } catch (RuntimeException e10) {
            com.google.android.exoplayer2.util.s.j("StreamVolumeManager", "Could not retrieve stream volume for stream type " + i10, e10);
            return audioManager.getStreamMaxVolume(i10);
        }
    }

    public void i() {
        int iF = f(this.f24453d, this.f24455f);
        boolean zE = e(this.f24453d, this.f24455f);
        if (this.f24456g == iF && this.f24457h == zE) {
            return;
        }
        this.f24456g = iF;
        this.f24457h = zE;
        this.f24452c.r(iF, zE);
    }

    public int c() {
        return this.f24453d.getStreamMaxVolume(this.f24455f);
    }

    public int d() {
        if (com.google.android.exoplayer2.util.p0.f26854a >= 28) {
            return this.f24453d.getStreamMinVolume(this.f24455f);
        }
        return 0;
    }

    public void g() {
        c cVar = this.f24454e;
        if (cVar != null) {
            try {
                this.f24450a.unregisterReceiver(cVar);
            } catch (RuntimeException e10) {
                com.google.android.exoplayer2.util.s.j("StreamVolumeManager", "Error unregistering stream volume receiver", e10);
            }
            this.f24454e = null;
        }
    }

    public void h(int i10) {
        if (this.f24455f == i10) {
            return;
        }
        this.f24455f = i10;
        i();
        this.f24452c.l(i10);
    }
}
