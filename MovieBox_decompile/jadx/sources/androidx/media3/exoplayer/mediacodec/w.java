package androidx.media3.exoplayer.mediacodec;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.os.Build;
import android.util.Pair;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Objects;

public final class w {

    public final String f11943a;

    public final String f11944b;

    public final String f11945c;

    public final MediaCodecInfo.CodecCapabilities f11946d;

    public final boolean f11947e;

    public final boolean f11948f;

    public final boolean f11949g;

    public final boolean f11950h;

    public final boolean f11951i;

    public final boolean f11952j;

    public final boolean f11953k;

    private final boolean f11954l;

    w(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16) {
        this.f11943a = (String) androidx.media3.common.util.a.e(str);
        this.f11944b = str2;
        this.f11945c = str3;
        this.f11946d = codecCapabilities;
        this.f11950h = z10;
        this.f11951i = z11;
        this.f11952j = z12;
        this.f11947e = z13;
        this.f11948f = z14;
        this.f11949g = z15;
        this.f11953k = z16;
        this.f11954l = androidx.media3.common.y.t(str2);
    }

    private static boolean A(String str) {
        if (a1.f10038a <= 22) {
            String str2 = Build.MODEL;
            if (("ODROID-XU3".equals(str2) || "Nexus 10".equals(str2)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str))) {
                return true;
            }
        }
        return false;
    }

    private static boolean B(String str, int i10) {
        if (MimeTypes.VIDEO_H265.equals(str) && 2 == i10) {
            String str2 = Build.DEVICE;
            if ("sailfish".equals(str2) || "marlin".equals(str2)) {
                return true;
            }
        }
        return false;
    }

    private static boolean C(String str) {
        return ("OMX.MTK.VIDEO.DECODER.HEVC".equals(str) && "mcv5a".equals(Build.DEVICE)) ? false : true;
    }

    public static w D(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        return new w(str, str2, str3, codecCapabilities, z10, z11, z12, (z13 || codecCapabilities == null || !h(codecCapabilities) || A(str)) ? false : true, codecCapabilities != null && t(codecCapabilities), z14 || (codecCapabilities != null && s(codecCapabilities)), m(codecCapabilities));
    }

    private static int a(String str, String str2, int i10) {
        int i11;
        if (i10 > 1 || ((a1.f10038a >= 26 && i10 > 0) || MimeTypes.AUDIO_MPEG.equals(str2) || MimeTypes.AUDIO_AMR_NB.equals(str2) || MimeTypes.AUDIO_AMR_WB.equals(str2) || MimeTypes.AUDIO_AAC.equals(str2) || MimeTypes.AUDIO_VORBIS.equals(str2) || MimeTypes.AUDIO_OPUS.equals(str2) || MimeTypes.AUDIO_RAW.equals(str2) || MimeTypes.AUDIO_FLAC.equals(str2) || MimeTypes.AUDIO_ALAW.equals(str2) || MimeTypes.AUDIO_MLAW.equals(str2) || MimeTypes.AUDIO_MSGSM.equals(str2))) {
            return i10;
        }
        if (MimeTypes.AUDIO_AC3.equals(str2)) {
            i11 = 6;
        } else {
            i11 = MimeTypes.AUDIO_E_AC3.equals(str2) ? 16 : 30;
        }
        androidx.media3.common.util.u.h(com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecInfo.TAG, "AssumedMaxChannelAdjustment: " + str + ", [" + i10 + " to " + i11 + "]");
        return i11;
    }

    private static Point b(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(a1.k(i10, widthAlignment) * widthAlignment, a1.k(i11, heightAlignment) * heightAlignment);
    }

    private static boolean d(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11, double d10) {
        Point pointB = b(videoCapabilities, i10, i11);
        int i12 = pointB.x;
        int i13 = pointB.y;
        return (d10 == -1.0d || d10 < 1.0d) ? videoCapabilities.isSizeSupported(i12, i13) : videoCapabilities.areSizeAndRateSupported(i12, i13, Math.floor(d10));
    }

    private static MediaCodecInfo.CodecProfileLevel[] f(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        int i10;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        int iIntValue = (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) ? 0 : ((Integer) videoCapabilities.getBitrateRange().getUpper()).intValue();
        if (iIntValue >= 180000000) {
            i10 = 1024;
        } else if (iIntValue >= 120000000) {
            i10 = 512;
        } else if (iIntValue >= 60000000) {
            i10 = 256;
        } else if (iIntValue >= 30000000) {
            i10 = 128;
        } else if (iIntValue >= 18000000) {
            i10 = 64;
        } else if (iIntValue >= 12000000) {
            i10 = 32;
        } else if (iIntValue >= 7200000) {
            i10 = 16;
        } else if (iIntValue >= 3600000) {
            i10 = 8;
        } else if (iIntValue >= 1800000) {
            i10 = 4;
        } else {
            i10 = iIntValue >= 800000 ? 2 : 1;
        }
        MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
        codecProfileLevel.profile = 1;
        codecProfileLevel.level = i10;
        return new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
    }

    private static boolean h(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    /* JADX WARN: Code duplicated, block: B:35:0x007d  */
    private boolean k(androidx.media3.common.r rVar, boolean z10) {
        int i10 = 2;
        Pair pairI = MediaCodecUtil.i(rVar);
        String str = rVar.f9849o;
        if (str != null && str.equals("video/mv-hevc")) {
            String strU = androidx.media3.common.y.u(this.f11945c);
            if (strU.equals("video/mv-hevc")) {
                return true;
            }
            if (strU.equals(MimeTypes.VIDEO_H265)) {
                pairI = MediaCodecUtil.q(rVar);
            }
        }
        if (pairI == null) {
            return true;
        }
        int iIntValue = ((Integer) pairI.first).intValue();
        int iIntValue2 = ((Integer) pairI.second).intValue();
        if ("video/dolby-vision".equals(rVar.f9849o)) {
            String str2 = this.f11944b;
            str2.hashCode();
            switch (str2) {
                case "video/avc":
                    i10 = 8;
                case "video/av01":
                case "video/hevc":
                    iIntValue2 = 0;
                    break;
                default:
                    i10 = iIntValue;
                    break;
            }
        } else {
            i10 = iIntValue;
        }
        if (!this.f11954l && i10 != 42) {
            return true;
        }
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrG = g();
        if (a1.f10038a <= 23 && MimeTypes.VIDEO_VP9.equals(this.f11944b) && codecProfileLevelArrG.length == 0) {
            codecProfileLevelArrG = f(this.f11946d);
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArrG) {
            if (codecProfileLevel.profile == i10 && ((codecProfileLevel.level >= iIntValue2 || !z10) && !B(this.f11944b, i10))) {
                return true;
            }
        }
        w("codec.profileLevel, " + rVar.f9845k + ", " + this.f11945c);
        return false;
    }

    private boolean l(androidx.media3.common.r rVar) {
        return (Objects.equals(rVar.f9849o, MimeTypes.AUDIO_FLAC) && rVar.G == 22 && a1.f10038a < 34 && this.f11943a.equals("c2.android.flac.decoder")) ? false : true;
    }

    private static boolean m(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return a1.f10038a >= 35 && codecCapabilities != null && codecCapabilities.isFeatureSupported("detached-surface") && !z();
    }

    private boolean q(androidx.media3.common.r rVar) {
        return this.f11944b.equals(rVar.f9849o) || this.f11944b.equals(MediaCodecUtil.f(rVar));
    }

    private static boolean s(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    private static boolean t(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("tunneled-playback");
    }

    private void v(String str) {
        androidx.media3.common.util.u.b(com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecInfo.TAG, "AssumedSupport [" + str + "] [" + this.f11943a + ", " + this.f11944b + "] [" + a1.f10042e + "]");
    }

    private void w(String str) {
        androidx.media3.common.util.u.b(com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecInfo.TAG, "NoSupport [" + str + "] [" + this.f11943a + ", " + this.f11944b + "] [" + a1.f10042e + "]");
    }

    private static boolean x(String str) {
        return MimeTypes.AUDIO_OPUS.equals(str);
    }

    private static boolean y(String str) {
        return Build.MODEL.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str);
    }

    private static boolean z() {
        String str = Build.MANUFACTURER;
        return str.equals("Xiaomi") || str.equals("OPPO");
    }

    public Point c(int i10, int i11) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f11946d;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return b(videoCapabilities, i10, i11);
    }

    public androidx.media3.exoplayer.k e(androidx.media3.common.r rVar, androidx.media3.common.r rVar2) {
        int i10 = !Objects.equals(rVar.f9849o, rVar2.f9849o) ? 8 : 0;
        if (this.f11954l) {
            if (rVar.f9859y != rVar2.f9859y) {
                i10 |= 1024;
            }
            if (!this.f11947e && (rVar.f9856v != rVar2.f9856v || rVar.f9857w != rVar2.f9857w)) {
                i10 |= 512;
            }
            if ((!androidx.media3.common.i.h(rVar.C) || !androidx.media3.common.i.h(rVar2.C)) && !Objects.equals(rVar.C, rVar2.C)) {
                i10 |= 2048;
            }
            if (y(this.f11943a) && !rVar.f(rVar2)) {
                i10 |= 2;
            }
            if (i10 == 0) {
                return new androidx.media3.exoplayer.k(this.f11943a, rVar, rVar2, rVar.f(rVar2) ? 3 : 2, 0);
            }
        } else {
            if (rVar.E != rVar2.E) {
                i10 |= 4096;
            }
            if (rVar.F != rVar2.F) {
                i10 |= 8192;
            }
            if (rVar.G != rVar2.G) {
                i10 |= 16384;
            }
            if (i10 == 0 && MimeTypes.AUDIO_AAC.equals(this.f11944b)) {
                Pair pairI = MediaCodecUtil.i(rVar);
                Pair pairI2 = MediaCodecUtil.i(rVar2);
                if (pairI != null && pairI2 != null) {
                    int iIntValue = ((Integer) pairI.first).intValue();
                    int iIntValue2 = ((Integer) pairI2.first).intValue();
                    if (iIntValue == 42 && iIntValue2 == 42) {
                        return new androidx.media3.exoplayer.k(this.f11943a, rVar, rVar2, 3, 0);
                    }
                }
            }
            if (!rVar.f(rVar2)) {
                i10 |= 32;
            }
            if (x(this.f11944b)) {
                i10 |= 2;
            }
            if (i10 == 0) {
                return new androidx.media3.exoplayer.k(this.f11943a, rVar, rVar2, 1, 0);
            }
        }
        return new androidx.media3.exoplayer.k(this.f11943a, rVar, rVar2, 0, i10);
    }

    public MediaCodecInfo.CodecProfileLevel[] g() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f11946d;
        return (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) ? new MediaCodecInfo.CodecProfileLevel[0] : codecProfileLevelArr;
    }

    public boolean i(int i10) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f11946d;
        if (codecCapabilities == null) {
            w("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            w("channelCount.aCaps");
            return false;
        }
        if (a(this.f11943a, this.f11944b, audioCapabilities.getMaxInputChannelCount()) >= i10) {
            return true;
        }
        w("channelCount.support, " + i10);
        return false;
    }

    public boolean j(int i10) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f11946d;
        if (codecCapabilities == null) {
            w("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            w("sampleRate.aCaps");
            return false;
        }
        if (audioCapabilities.isSampleRateSupported(i10)) {
            return true;
        }
        w("sampleRate.support, " + i10);
        return false;
    }

    public boolean n(androidx.media3.common.r rVar) {
        return q(rVar) && k(rVar, false) && l(rVar);
    }

    public boolean o(androidx.media3.common.r rVar) {
        int i10;
        if (!q(rVar) || !k(rVar, true) || !l(rVar)) {
            return false;
        }
        if (this.f11954l) {
            int i11 = rVar.f9856v;
            if (i11 <= 0 || (i10 = rVar.f9857w) <= 0) {
                return true;
            }
            return u(i11, i10, rVar.f9858x);
        }
        int i12 = rVar.F;
        if (i12 != -1 && !j(i12)) {
            return false;
        }
        int i13 = rVar.E;
        return i13 == -1 || i(i13);
    }

    public boolean p() {
        if (a1.f10038a >= 29 && MimeTypes.VIDEO_VP9.equals(this.f11944b)) {
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : g()) {
                if (codecProfileLevel.profile == 16384) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean r(androidx.media3.common.r rVar) {
        if (this.f11954l) {
            return this.f11947e;
        }
        Pair pairI = MediaCodecUtil.i(rVar);
        return pairI != null && ((Integer) pairI.first).intValue() == 42;
    }

    public String toString() {
        return this.f11943a;
    }

    public boolean u(int i10, int i11, double d10) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f11946d;
        if (codecCapabilities == null) {
            w("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            w("sizeAndRate.vCaps");
            return false;
        }
        if (a1.f10038a >= 29) {
            int iC = c0.c(videoCapabilities, i10, i11, d10);
            if (iC == 2) {
                return true;
            }
            if (iC == 1) {
                w("sizeAndRate.cover, " + i10 + "x" + i11 + "@" + d10);
                return false;
            }
        }
        if (!d(videoCapabilities, i10, i11, d10)) {
            if (i10 >= i11 || !C(this.f11943a) || !d(videoCapabilities, i11, i10, d10)) {
                w("sizeAndRate.support, " + i10 + "x" + i11 + "@" + d10);
                return false;
            }
            v("sizeAndRate.rotated, " + i10 + "x" + i11 + "@" + d10);
        }
        return true;
    }
}
