package defpackage;

import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import java.util.Objects;

public final class alf {
    public final AudioManager.OnAudioFocusChangeListener b;
    public final Handler c;
    public final hvg d;
    public final Object f;
    public final int a = 1;
    public final boolean e = false;

    public alf(int i, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler, hvg hvgVar, boolean z) {
        this.c = handler;
        this.d = hvgVar;
        int i2 = kfh.a;
        if (i2 < 26) {
            this.b = new ekf(onAudioFocusChangeListener, handler);
        } else {
            this.b = onAudioFocusChangeListener;
        }
        this.f = i2 >= 26 ? new AudioFocusRequest.Builder(1).setAudioAttributes(hvgVar.a().a).setWillPauseWhenDucked(false).setOnAudioFocusChangeListener(onAudioFocusChangeListener, handler).build() : null;
    }

    public final AudioFocusRequest a() {
        Object obj = this.f;
        obj.getClass();
        return (AudioFocusRequest) obj;
    }

    public final AudioManager.OnAudioFocusChangeListener b() {
        return this.b;
    }

    public final hvg c() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof alf)) {
            return false;
        }
        alf alfVar = (alf) obj;
        int i = alfVar.a;
        return Objects.equals(this.b, alfVar.b) && Objects.equals(this.c, alfVar.c) && Objects.equals(this.d, alfVar.d);
    }

    public final int hashCode() {
        return Objects.hash(1, this.b, this.c, this.d, Boolean.FALSE);
    }
}
