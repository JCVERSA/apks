package defpackage;

import android.media.AudioAttributes;

public final class jgf {
    public final AudioAttributes a;

    public jgf(hvg hvgVar, a5g a5gVar) {
        AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(0).setFlags(0).setUsage(1);
        int i = kfh.a;
        if (i >= 29) {
            usage.setAllowedCapturePolicy(1);
        }
        if (i >= 32) {
            usage.setSpatializationBehavior(0);
        }
        this.a = usage.build();
    }
}
