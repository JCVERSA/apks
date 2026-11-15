package defpackage;

import android.media.AudioDeviceInfo;
import android.media.AudioRouting;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;

public final class fij {
    public final AudioTrack a;
    public final qgj b;
    public AudioRouting.OnRoutingChangedListener c = new AudioRouting.OnRoutingChangedListener() {
        @Override
        public final void onRoutingChanged(AudioRouting audioRouting) {
            fij.a(this.a, audioRouting);
        }
    };

    public fij(AudioTrack audioTrack, qgj qgjVar) {
        this.a = audioTrack;
        this.b = qgjVar;
        audioTrack.addOnRoutingChangedListener(this.c, new Handler(Looper.myLooper()));
    }

    public static void a(fij fijVar, AudioRouting audioRouting) {
        AudioDeviceInfo routedDevice;
        if (fijVar.c == null || (routedDevice = audioRouting.getRoutedDevice()) == null) {
            return;
        }
        fijVar.b.h(routedDevice);
    }

    public final void b() {
        AudioRouting.OnRoutingChangedListener onRoutingChangedListener = this.c;
        onRoutingChangedListener.getClass();
        this.a.removeOnRoutingChangedListener(onRoutingChangedListener);
        this.c = null;
    }
}
