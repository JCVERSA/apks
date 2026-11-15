package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodecInfo;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;

abstract class c0 {

    private static Boolean f11880a;

    private static final class a {
        public static int a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11, double d10) {
            List supportedPerformancePoints = videoCapabilities.getSupportedPerformancePoints();
            if (supportedPerformancePoints == null || supportedPerformancePoints.isEmpty()) {
                return 0;
            }
            y.a();
            int iC = c(supportedPerformancePoints, x.a(i10, i11, (int) d10));
            if (iC == 1 && c0.f11880a == null) {
                Boolean unused = c0.f11880a = Boolean.valueOf(d());
                if (c0.f11880a.booleanValue()) {
                    return 0;
                }
            }
            return iC;
        }

        private static int b(boolean z10) {
            List supportedPerformancePoints;
            try {
                androidx.media3.common.r rVarN = new androidx.media3.common.r.b().u0(MimeTypes.VIDEO_H264).N();
                if (rVarN.f9849o != null) {
                    List listM = MediaCodecUtil.m(h0.f11899a, rVarN, z10, false);
                    for (int i10 = 0; i10 < listM.size(); i10++) {
                        if (((w) listM.get(i10)).f11946d != null && ((w) listM.get(i10)).f11946d.getVideoCapabilities() != null && (supportedPerformancePoints = ((w) listM.get(i10)).f11946d.getVideoCapabilities().getSupportedPerformancePoints()) != null && !supportedPerformancePoints.isEmpty()) {
                            y.a();
                            return c(supportedPerformancePoints, x.a(1280, 720, 60));
                        }
                    }
                }
            } catch (MediaCodecUtil.DecoderQueryException unused) {
            }
            return 0;
        }

        private static int c(List list, MediaCodecInfo.VideoCapabilities.PerformancePoint performancePoint) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                if (a0.a(list.get(i10)).covers(performancePoint)) {
                    return 2;
                }
            }
            return 1;
        }

        private static boolean d() {
            if (a1.f10038a >= 35) {
                return false;
            }
            int iB = b(false);
            int iB2 = b(true);
            if (iB == 0) {
                return true;
            }
            if (iB2 == 0) {
                return iB != 2;
            }
            return (iB == 2 && iB2 == 2) ? false : true;
        }
    }

    public static int c(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11, double d10) {
        if (a1.f10038a < 29) {
            return 0;
        }
        Boolean bool = f11880a;
        if (bool == null || !bool.booleanValue()) {
            return a.a(videoCapabilities, i10, i11, d10);
        }
        return 0;
    }
}
