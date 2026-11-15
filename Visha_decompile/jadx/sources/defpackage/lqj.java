package defpackage;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.MimeTypes;
import java.util.Objects;
import java.util.concurrent.Executor;

public final class lqj {
    public final Spatializer a;
    public final boolean b;
    public final Handler c;
    public final Spatializer$OnSpatializerStateChangedListener d;

    public lqj(Context context, rqj rqjVar) {
        AudioManager audioManagerC = context == null ? null : fnf.c(context);
        if (audioManagerC == null || kfh.n(context)) {
            this.a = null;
            this.b = false;
            this.c = null;
            this.d = null;
            return;
        }
        Spatializer spatializer = audioManagerC.getSpatializer();
        this.a = spatializer;
        this.b = spatializer.getImmersiveAudioLevel() != 0;
        kqj kqjVar = new kqj(this, rqjVar);
        this.d = kqjVar;
        Looper looperMyLooper = Looper.myLooper();
        n7g.b(looperMyLooper);
        final Handler handler = new Handler(looperMyLooper);
        this.c = handler;
        Objects.requireNonNull(handler);
        spatializer.addOnSpatializerStateChangedListener(new Executor() {
            @Override
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        }, kqjVar);
    }

    public final void a() {
        Spatializer$OnSpatializerStateChangedListener spatializer$OnSpatializerStateChangedListener;
        Handler handler;
        Spatializer spatializer = this.a;
        if (spatializer == null || (spatializer$OnSpatializerStateChangedListener = this.d) == null || (handler = this.c) == null) {
            return;
        }
        spatializer.removeOnSpatializerStateChangedListener(spatializer$OnSpatializerStateChangedListener);
        handler.removeCallbacksAndMessages(null);
    }

    public final boolean b(hvg hvgVar, erj erjVar) {
        int i;
        String str = erjVar.o;
        if (Objects.equals(str, MimeTypes.AUDIO_E_AC3_JOC)) {
            i = erjVar.E;
            if (i == 16) {
                i = 12;
            }
        } else if (Objects.equals(str, MimeTypes.AUDIO_IAMF)) {
            i = erjVar.E;
            if (i == -1) {
                i = 6;
            }
        } else if (Objects.equals(str, MimeTypes.AUDIO_AC4)) {
            i = erjVar.E;
            if (i == 18 || i == 21) {
                i = 24;
            }
        } else {
            i = erjVar.E;
        }
        int iD = kfh.D(i);
        if (iD == 0) {
            return false;
        }
        AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(iD);
        int i2 = erjVar.F;
        if (i2 != -1) {
            channelMask.setSampleRate(i2);
        }
        Spatializer spatializer = this.a;
        spatializer.getClass();
        return k62.a(spatializer).canBeSpatialized(hvgVar.a().a, channelMask.build());
    }

    public final boolean c() {
        Spatializer spatializer = this.a;
        spatializer.getClass();
        return k62.a(spatializer).isAvailable();
    }

    public final boolean d() {
        Spatializer spatializer = this.a;
        spatializer.getClass();
        return k62.a(spatializer).isEnabled();
    }

    public final boolean e() {
        return this.b;
    }
}
