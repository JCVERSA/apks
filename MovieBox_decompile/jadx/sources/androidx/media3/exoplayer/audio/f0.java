package androidx.media3.exoplayer.audio;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;

public final class f0 implements DefaultAudioSink.d {

    private final Context f10860a;

    private Boolean f10861b;

    private static final class a {
        public static k a(AudioFormat audioFormat, AudioAttributes audioAttributes, boolean z10) {
            return !AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes) ? k.f10885d : new k.b().e(true).g(z10).d();
        }
    }

    private static final class b {
        public static k a(AudioFormat audioFormat, AudioAttributes audioAttributes, boolean z10) {
            int playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
            if (playbackOffloadSupport == 0) {
                return k.f10885d;
            }
            return new k.b().e(true).f(androidx.media3.common.util.a1.f10038a > 32 && playbackOffloadSupport == 2).g(z10).d();
        }
    }

    public f0() {
        this(null);
    }

    private boolean b(Context context) {
        Boolean bool = this.f10861b;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (context != null) {
            String parameters = t1.m.c(context).getParameters("offloadVariableRateSupported");
            this.f10861b = Boolean.valueOf(parameters != null && parameters.equals("offloadVariableRateSupported=1"));
        } else {
            this.f10861b = Boolean.FALSE;
        }
        return this.f10861b.booleanValue();
    }

    @Override
    public k a(androidx.media3.common.r rVar, androidx.media3.common.c cVar) {
        androidx.media3.common.util.a.e(rVar);
        androidx.media3.common.util.a.e(cVar);
        int i10 = androidx.media3.common.util.a1.f10038a;
        if (i10 < 29 || rVar.F == -1) {
            return k.f10885d;
        }
        boolean zB = b(this.f10860a);
        int iF = androidx.media3.common.y.f((String) androidx.media3.common.util.a.e(rVar.f9849o), rVar.f9845k);
        if (iF == 0 || i10 < androidx.media3.common.util.a1.K(iF)) {
            return k.f10885d;
        }
        int iM = androidx.media3.common.util.a1.M(rVar.E);
        if (iM == 0) {
            return k.f10885d;
        }
        try {
            AudioFormat audioFormatL = androidx.media3.common.util.a1.L(rVar.F, iM, iF);
            return i10 >= 31 ? b.a(audioFormatL, cVar.a().f9607a, zB) : a.a(audioFormatL, cVar.a().f9607a, zB);
        } catch (IllegalArgumentException unused) {
            return k.f10885d;
        }
    }

    public f0(Context context) {
        this.f10860a = context;
    }
}
