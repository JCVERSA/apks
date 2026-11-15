package defpackage;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;

public final class vhj {
    public final Context a;
    public Boolean b;

    public vhj(Context context) {
        this.a = context;
    }

    public final ygj a(erj erjVar, hvg hvgVar) {
        int i;
        boolean zBooleanValue;
        erjVar.getClass();
        hvgVar.getClass();
        int i2 = kfh.a;
        if (i2 < 29 || (i = erjVar.F) == -1) {
            return ygj.d;
        }
        Context context = this.a;
        Boolean bool = this.b;
        boolean z = false;
        if (bool != null) {
            zBooleanValue = bool.booleanValue();
        } else {
            if (context != null) {
                String parameters = fnf.c(context).getParameters("offloadVariableRateSupported");
                this.b = Boolean.valueOf(parameters != null && parameters.equals("offloadVariableRateSupported=1"));
            } else {
                this.b = Boolean.FALSE;
            }
            zBooleanValue = this.b.booleanValue();
        }
        String str = erjVar.o;
        str.getClass();
        int iA = bue.a(str, erjVar.k);
        if (iA == 0 || i2 < kfh.C(iA)) {
            return ygj.d;
        }
        int iD = kfh.D(erjVar.E);
        if (iD == 0) {
            return ygj.d;
        }
        try {
            AudioFormat audioFormatS = kfh.S(i, iD, iA);
            if (i2 < 31) {
                if (!AudioManager.isOffloadedPlaybackSupported(audioFormatS, hvgVar.a().a)) {
                    return ygj.d;
                }
                ugj ugjVar = new ugj();
                ugjVar.a(true);
                ugjVar.c(zBooleanValue);
                return ugjVar.d();
            }
            int playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(audioFormatS, hvgVar.a().a);
            if (playbackOffloadSupport == 0) {
                return ygj.d;
            }
            ugj ugjVar2 = new ugj();
            if (i2 > 32 && playbackOffloadSupport == 2) {
                z = true;
            }
            ugjVar2.a(true);
            ugjVar2.b(z);
            ugjVar2.c(zBooleanValue);
            return ugjVar2.d();
        } catch (IllegalArgumentException unused) {
            return ygj.d;
        }
    }
}
