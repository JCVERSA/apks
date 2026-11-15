package defpackage;

import android.media.MediaCodecInfo;
import com.google.android.gms.internal.ads.zztn;
import java.util.List;

public abstract class alj {
    /* JADX WARN: Code duplicated, block: B:13:0x0027  */
    public static int a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        List<MediaCodecInfo.VideoCapabilities.PerformancePoint> supportedPerformancePoints = videoCapabilities.getSupportedPerformancePoints();
        if (supportedPerformancePoints == null || supportedPerformancePoints.isEmpty()) {
            return 0;
        }
        int iC = c(supportedPerformancePoints, new MediaCodecInfo.VideoCapabilities.PerformancePoint(i, i2, (int) d));
        boolean z = true;
        if (iC == 1 && blj.a == null) {
            if (kfh.a >= 35) {
                z = false;
            } else {
                int iB = b(false);
                int iB2 = b(true);
                if (iB != 0 && (iB2 != 0 ? !(iB != 2 || iB2 != 2) : iB == 2)) {
                    z = false;
                }
            }
            blj.a = Boolean.valueOf(z);
            if (blj.a.booleanValue()) {
                return 0;
            }
        }
        return iC;
    }

    public static int b(boolean z) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        List<MediaCodecInfo.VideoCapabilities.PerformancePoint> supportedPerformancePoints;
        try {
            gpj gpjVar = new gpj();
            gpjVar.E("video/avc");
            erj erjVarK = gpjVar.K();
            if (erjVarK.o != null) {
                List listE = qlj.e(hlj.a, erjVarK, z, false);
                for (int i = 0; i < listE.size(); i++) {
                    if (((tkj) listE.get(i)).d != null && (videoCapabilities = ((tkj) listE.get(i)).d.getVideoCapabilities()) != null && (supportedPerformancePoints = videoCapabilities.getSupportedPerformancePoints()) != null && !supportedPerformancePoints.isEmpty()) {
                        return c(supportedPerformancePoints, new MediaCodecInfo.VideoCapabilities.PerformancePoint(1280, 720, 60));
                    }
                }
            }
        } catch (zztn unused) {
        }
        return 0;
    }

    public static int c(List list, MediaCodecInfo.VideoCapabilities.PerformancePoint performancePoint) {
        for (int i = 0; i < list.size(); i++) {
            if (((MediaCodecInfo.VideoCapabilities.PerformancePoint) list.get(i)).covers(performancePoint)) {
                return 2;
            }
        }
        return 1;
    }
}
