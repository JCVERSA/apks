package defpackage;

import android.content.Context;
import android.media.AudioManager;
import android.os.Looper;
import defpackage.fnf;

public abstract class fnf {
    public static AudioManager a;

    public static int a(AudioManager audioManager, alf alfVar) {
        return kfh.a >= 26 ? audioManager.abandonAudioFocusRequest(alfVar.a()) : audioManager.abandonAudioFocus(alfVar.b());
    }

    public static int b(AudioManager audioManager, alf alfVar) {
        if (kfh.a >= 26) {
            return audioManager.requestAudioFocus(alfVar.a());
        }
        AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListenerB = alfVar.b();
        alfVar.c();
        return audioManager.requestAudioFocus(onAudioFocusChangeListenerB, 3, 1);
    }

    public static synchronized AudioManager c(Context context) {
        try {
            final Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                a = null;
            }
            AudioManager audioManager = a;
            if (audioManager != null) {
                return audioManager;
            }
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper != null && looperMyLooper != Looper.getMainLooper()) {
                final oeg oegVar = new oeg(tbg.a);
                q8g.a().execute(new Runnable() {
                    @Override
                    public final void run() {
                        fnf.d(applicationContext, oegVar);
                    }
                });
                oegVar.b();
                AudioManager audioManager2 = a;
                if (audioManager2 != null) {
                    return audioManager2;
                }
                throw null;
            }
            AudioManager audioManager3 = (AudioManager) applicationContext.getSystemService("audio");
            a = audioManager3;
            if (audioManager3 != null) {
                return audioManager3;
            }
            throw null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public static void d(Context context, oeg oegVar) {
        a = (AudioManager) context.getSystemService("audio");
        oegVar.e();
    }
}
