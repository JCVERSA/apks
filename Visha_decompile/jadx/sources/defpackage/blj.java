package defpackage;

import android.media.MediaCodecInfo;

public abstract class blj {
    public static Boolean a;

    public static int a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        if (kfh.a < 29) {
            return 0;
        }
        Boolean bool = a;
        if (bool == null || !bool.booleanValue()) {
            return alj.a(videoCapabilities, i, i2, d);
        }
        return 0;
    }
}
