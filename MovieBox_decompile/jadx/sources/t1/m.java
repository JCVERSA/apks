package t1;

import android.content.Context;
import android.media.AudioManager;
import android.os.Looper;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.u;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

public abstract class m {

    private static AudioManager f72465a;

    private static Context f72466b;

    public static int b(AudioManager audioManager, g gVar) {
        return a1.f10038a >= 26 ? audioManager.abandonAudioFocusRequest(gVar.c()) : audioManager.abandonAudioFocus(gVar.f());
    }

    public static synchronized AudioManager c(Context context) {
        try {
            final Context applicationContext = context.getApplicationContext();
            if (f72466b != applicationContext) {
                f72465a = null;
            }
            AudioManager audioManager = f72465a;
            if (audioManager != null) {
                return audioManager;
            }
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper != null && looperMyLooper != Looper.getMainLooper()) {
                final androidx.media3.common.util.l lVar = new androidx.media3.common.util.l();
                androidx.media3.common.util.c.a().execute(new Runnable() {
                    @Override
                    public final void run() {
                        m.h(applicationContext, lVar);
                    }
                });
                lVar.c();
                return (AudioManager) androidx.media3.common.util.a.e(f72465a);
            }
            AudioManager audioManager2 = (AudioManager) applicationContext.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
            f72465a = audioManager2;
            return (AudioManager) androidx.media3.common.util.a.e(audioManager2);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public static int d(AudioManager audioManager, int i10) {
        return audioManager.getStreamMaxVolume(i10);
    }

    public static int e(AudioManager audioManager, int i10) {
        if (a1.f10038a >= 28) {
            return audioManager.getStreamMinVolume(i10);
        }
        return 0;
    }

    public static int f(AudioManager audioManager, int i10) {
        try {
            return audioManager.getStreamVolume(i10);
        } catch (RuntimeException e10) {
            u.i("AudioManagerCompat", "Could not retrieve stream volume for stream type " + i10, e10);
            return audioManager.getStreamMaxVolume(i10);
        }
    }

    public static boolean g(AudioManager audioManager, int i10) {
        if (a1.f10038a >= 23) {
            return audioManager.isStreamMute(i10);
        }
        return f(audioManager, i10) == 0;
    }

    public static void h(Context context, androidx.media3.common.util.l lVar) {
        f72465a = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        lVar.f();
    }

    public static int i(AudioManager audioManager, g gVar) {
        return a1.f10038a >= 26 ? audioManager.requestAudioFocus(gVar.c()) : audioManager.requestAudioFocus(gVar.f(), gVar.b().b(), gVar.e());
    }
}
