package defpackage;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;

public class zs7 {
    public final AudioManager a;
    public final AudioAttributes b;
    public final AudioManager.OnAudioFocusChangeListener c;
    public final Map d = new HashMap();

    public zs7(Context context, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        this.a = audioManager;
        if (audioManager == null) {
            throw new IllegalStateException("Could not get AudioManager system service");
        }
        this.b = new AudioAttributes.Builder().setUsage(1).setContentType(3).build();
        this.c = onAudioFocusChangeListener;
    }

    public int b() {
        int iAbandonAudioFocusRequest = 0;
        if (this.c == null) {
            Log.w("OtherAudioManagerUtil", "abandonAudioFocus: listener is null");
            return 0;
        }
        try {
            iAbandonAudioFocusRequest = this.a.abandonAudioFocusRequest(c(d()));
        } catch (Exception e) {
            Log.e("OtherAudioManagerUtil", "abandonAudioFocus failed", e);
        }
        Log.i("OtherAudioManagerUtil", String.format("abandonAudioFocus: result=%d, listener=%s", Integer.valueOf(iAbandonAudioFocusRequest), this.c));
        return iAbandonAudioFocusRequest;
    }

    public final AudioFocusRequest c(int i) {
        return (AudioFocusRequest) this.d.computeIfAbsent(Integer.valueOf(i), new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.a.e((Integer) obj);
            }
        });
    }

    public final int d() {
        return w6c.c(se.a(), "audio_focus_allow_may_duck", false) ? 3 : 1;
    }

    public final AudioFocusRequest e(Integer num) {
        return new AudioFocusRequest.Builder(num.intValue()).setAudioAttributes(this.b).setAcceptsDelayedFocusGain(true).setOnAudioFocusChangeListener(this.c).build();
    }

    public int f() {
        int iRequestAudioFocus = 0;
        if (this.c == null) {
            Log.w("OtherAudioManagerUtil", "requestAudioFocus: listener is null");
            return 0;
        }
        int iD = d();
        try {
            iRequestAudioFocus = this.a.requestAudioFocus(c(iD));
        } catch (Exception e) {
            Log.e("OtherAudioManagerUtil", "requestAudioFocus failed", e);
        }
        Log.i("OtherAudioManagerUtil", String.format("requestAudioFocus: type=%d, result=%d, listener=%s", Integer.valueOf(iD), Integer.valueOf(iRequestAudioFocus), this.c));
        return iRequestAudioFocus;
    }
}
