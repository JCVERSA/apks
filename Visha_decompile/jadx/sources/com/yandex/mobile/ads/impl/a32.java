package com.yandex.mobile.ads.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import androidx.annotation.Nullable;
import com.transsion.hubsdk.api.media.TranAudioManager;

final class a32 {
    private final Context a;
    private final Handler b;
    private final a c;
    private final AudioManager d;

    @Nullable
    private b e;
    private int f;
    private int g;
    private boolean h;

    public interface a {
    }

    public final class b extends BroadcastReceiver {
        public static void a(a32 a32Var) {
            int iB = a32.b(a32Var.d, a32Var.f);
            boolean zA = a32.a(a32Var.d, a32Var.f);
            if (a32Var.g == iB && a32Var.h == zA) {
                return;
            }
            a32Var.g = iB;
            a32Var.h = zA;
            ((r60.b) a32Var.c).a(zA, iB);
        }

        @Override
        public final void onReceive(Context context, Intent intent) {
            final a32 a32Var = a32.this;
            a32Var.b.post(new Runnable() {
                @Override
                public final void run() {
                    a32.b.a(a32Var);
                }
            });
        }

        private b() {
        }
    }

    public a32(Context context, Handler handler, a aVar) {
        Context applicationContext = context.getApplicationContext();
        this.a = applicationContext;
        this.b = handler;
        this.c = aVar;
        AudioManager audioManager = (AudioManager) hg.a((AudioManager) applicationContext.getSystemService("audio"));
        this.d = audioManager;
        this.f = 3;
        this.g = b(audioManager, 3);
        this.h = a(audioManager, this.f);
        b bVar = new b();
        try {
            applicationContext.registerReceiver(bVar, new IntentFilter(TranAudioManager.VOLUME_CHANGED_ACTION));
            this.e = bVar;
        } catch (RuntimeException e) {
            et0.b("StreamVolumeManager", "Error registering stream volume receiver", e);
        }
    }

    public static int b(AudioManager audioManager, int i) {
        try {
            return audioManager.getStreamVolume(i);
        } catch (RuntimeException e) {
            et0.b("StreamVolumeManager", "Could not retrieve stream volume for stream type " + i, e);
            return audioManager.getStreamMaxVolume(i);
        }
    }

    public final int a() {
        return this.d.getStreamMaxVolume(this.f);
    }

    public final void c() {
        b bVar = this.e;
        if (bVar != null) {
            try {
                this.a.unregisterReceiver(bVar);
            } catch (RuntimeException e) {
                et0.b("StreamVolumeManager", "Error unregistering stream volume receiver", e);
            }
            this.e = null;
        }
    }

    public final void a(int i) {
        if (this.f == i) {
            return;
        }
        this.f = i;
        int iB = b(this.d, i);
        boolean zA = a(this.d, this.f);
        if (this.g != iB || this.h != zA) {
            this.g = iB;
            this.h = zA;
            ((r60.b) this.c).a(zA, iB);
        }
        ((r60.b) this.c).d();
    }

    public final int b() {
        if (f92.a >= 28) {
            return this.d.getStreamMinVolume(this.f);
        }
        return 0;
    }

    public static boolean a(AudioManager audioManager, int i) {
        if (f92.a >= 23) {
            return audioManager.isStreamMute(i);
        }
        return b(audioManager, i) == 0;
    }
}
