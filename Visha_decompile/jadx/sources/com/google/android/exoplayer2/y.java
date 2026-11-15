package com.google.android.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import com.google.android.exoplayer2.y;
import com.transsion.hubsdk.api.media.TranAudioManager;
import defpackage.blb;
import defpackage.op5;
import defpackage.zi;

public final class y {
    public final Context a;
    public final Handler b;
    public final b c;
    public final AudioManager d;
    public c e;
    public int f;
    public int g;
    public boolean h;

    public interface b {
        void onStreamTypeChanged(int i);

        void onStreamVolumeChanged(int i, boolean z);
    }

    public final class c extends BroadcastReceiver {
        public c() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            Handler handler = y.this.b;
            final y yVar = y.this;
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    y.b(yVar);
                }
            });
        }
    }

    public y(Context context, Handler handler, b bVar) {
        Context applicationContext = context.getApplicationContext();
        this.a = applicationContext;
        this.b = handler;
        this.c = bVar;
        AudioManager audioManager = (AudioManager) zi.i((AudioManager) applicationContext.getSystemService("audio"));
        this.d = audioManager;
        this.f = 3;
        this.g = f(audioManager, 3);
        this.h = e(audioManager, this.f);
        c cVar = new c();
        try {
            applicationContext.registerReceiver(cVar, new IntentFilter(TranAudioManager.VOLUME_CHANGED_ACTION));
            this.e = cVar;
        } catch (RuntimeException e) {
            op5.j("StreamVolumeManager", "Error registering stream volume receiver", e);
        }
    }

    public static void b(y yVar) {
        yVar.i();
    }

    public static boolean e(AudioManager audioManager, int i) {
        if (blb.a >= 23) {
            return audioManager.isStreamMute(i);
        }
        return f(audioManager, i) == 0;
    }

    public static int f(AudioManager audioManager, int i) {
        try {
            return audioManager.getStreamVolume(i);
        } catch (RuntimeException e) {
            op5.j("StreamVolumeManager", "Could not retrieve stream volume for stream type " + i, e);
            return audioManager.getStreamMaxVolume(i);
        }
    }

    public int c() {
        return this.d.getStreamMaxVolume(this.f);
    }

    public int d() {
        if (blb.a >= 28) {
            return this.d.getStreamMinVolume(this.f);
        }
        return 0;
    }

    public void g() {
        c cVar = this.e;
        if (cVar != null) {
            try {
                this.a.unregisterReceiver(cVar);
            } catch (RuntimeException e) {
                op5.j("StreamVolumeManager", "Error unregistering stream volume receiver", e);
            }
            this.e = null;
        }
    }

    public void h(int i) {
        if (this.f == i) {
            return;
        }
        this.f = i;
        i();
        this.c.onStreamTypeChanged(i);
    }

    public final void i() {
        int iF = f(this.d, this.f);
        boolean zE = e(this.d, this.f);
        if (this.g == iF && this.h == zE) {
            return;
        }
        this.g = iF;
        this.h = zE;
        this.c.onStreamVolumeChanged(iF, zE);
    }
}
