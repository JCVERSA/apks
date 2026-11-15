package com.google.android.exoplayer2.mediacodec;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.w;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

public final class m {

    public final String f24759a;

    public final String f24760b;

    public final String f24761c;

    public final MediaCodecInfo.CodecCapabilities f24762d;

    public final boolean f24763e;

    public final boolean f24764f;

    public final boolean f24765g;

    public final boolean f24766h;

    public final boolean f24767i;

    public final boolean f24768j;

    private final boolean f24769k;

    m(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15) {
        this.f24759a = (String) com.google.android.exoplayer2.util.a.e(str);
        this.f24760b = str2;
        this.f24761c = str3;
        this.f24762d = codecCapabilities;
        this.f24766h = z10;
        this.f24767i = z11;
        this.f24768j = z12;
        this.f24763e = z13;
        this.f24764f = z14;
        this.f24765g = z15;
        this.f24769k = w.s(str2);
    }

    private static boolean A(String str, int i10) {
        if (MimeTypes.VIDEO_H265.equals(str) && 2 == i10) {
            String str2 = p0.f26855b;
            if ("sailfish".equals(str2) || "marlin".equals(str2)) {
                return true;
            }
        }
        return false;
    }

    private static final boolean B(String str) {
        return ("OMX.MTK.VIDEO.DECODER.HEVC".equals(str) && "mcv5a".equals(p0.f26855b)) ? false : true;
    }

    public static m C(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        return new m(str, str2, str3, codecCapabilities, z10, z11, z12, (z13 || codecCapabilities == null || !h(codecCapabilities) || z(str)) ? false : true, codecCapabilities != null && s(codecCapabilities), z14 || (codecCapabilities != null && q(codecCapabilities)));
    }

    private static int a(String str, String str2, int i10) {
        int i11;
        if (i10 > 1 || ((p0.f26854a >= 26 && i10 > 0) || MimeTypes.AUDIO_MPEG.equals(str2) || MimeTypes.AUDIO_AMR_NB.equals(str2) || MimeTypes.AUDIO_AMR_WB.equals(str2) || MimeTypes.AUDIO_AAC.equals(str2) || MimeTypes.AUDIO_VORBIS.equals(str2) || MimeTypes.AUDIO_OPUS.equals(str2) || MimeTypes.AUDIO_RAW.equals(str2) || MimeTypes.AUDIO_FLAC.equals(str2) || MimeTypes.AUDIO_ALAW.equals(str2) || MimeTypes.AUDIO_MLAW.equals(str2) || MimeTypes.AUDIO_MSGSM.equals(str2))) {
            return i10;
        }
        if (MimeTypes.AUDIO_AC3.equals(str2)) {
            i11 = 6;
        } else {
            i11 = MimeTypes.AUDIO_E_AC3.equals(str2) ? 16 : 30;
        }
        com.google.android.exoplayer2.util.s.i(com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecInfo.TAG, "AssumedMaxChannelAdjustment: " + str + ", [" + i10 + " to " + i11 + "]");
        return i11;
    }

    private static Point c(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(p0.l(i10, widthAlignment) * widthAlignment, p0.l(i11, heightAlignment) * heightAlignment);
    }

    private static boolean d(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11, double d10) {
        Point pointC = c(videoCapabilities, i10, i11);
        int i12 = pointC.x;
        int i13 = pointC.y;
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
        return p0.f26854a >= 19 && i(codecCapabilities);
    }

    private static boolean i(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    private boolean l(p1 p1Var) {
        Pair pairQ;
        if (p1Var.f24898i == null || (pairQ = MediaCodecUtil.q(p1Var)) == null) {
            return true;
        }
        int iIntValue = ((Integer) pairQ.first).intValue();
        int iIntValue2 = ((Integer) pairQ.second).intValue();
        if ("video/dolby-vision".equals(p1Var.f24901l)) {
            if (!MimeTypes.VIDEO_H264.equals(this.f24760b)) {
                iIntValue = MimeTypes.VIDEO_H265.equals(this.f24760b) ? 2 : 8;
            }
            iIntValue2 = 0;
        }
        if (!this.f24769k && iIntValue != 42) {
            return true;
        }
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrG = g();
        if (p0.f26854a <= 23 && MimeTypes.VIDEO_VP9.equals(this.f24760b) && codecProfileLevelArrG.length == 0) {
            codecProfileLevelArrG = f(this.f24762d);
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArrG) {
            if (codecProfileLevel.profile == iIntValue && codecProfileLevel.level >= iIntValue2 && !A(this.f24760b, iIntValue)) {
                return true;
            }
        }
        w("codec.profileLevel, " + p1Var.f24898i + ", " + this.f24761c);
        return false;
    }

    private boolean o(p1 p1Var) {
        return this.f24760b.equals(p1Var.f24901l) || this.f24760b.equals(MediaCodecUtil.m(p1Var));
    }

    private static boolean q(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return p0.f26854a >= 21 && r(codecCapabilities);
    }

    private static boolean r(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    private static boolean s(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return p0.f26854a >= 21 && t(codecCapabilities);
    }

    private static boolean t(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("tunneled-playback");
    }

    private void v(String str) {
        com.google.android.exoplayer2.util.s.b(com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecInfo.TAG, "AssumedSupport [" + str + "] [" + this.f24759a + ", " + this.f24760b + "] [" + p0.f26858e + "]");
    }

    private void w(String str) {
        com.google.android.exoplayer2.util.s.b(com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecInfo.TAG, "NoSupport [" + str + "] [" + this.f24759a + ", " + this.f24760b + "] [" + p0.f26858e + "]");
    }

    private static boolean x(String str) {
        return MimeTypes.AUDIO_OPUS.equals(str);
    }

    private static boolean y(String str) {
        return p0.f26857d.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str);
    }

    private static boolean z(String str) {
        if (p0.f26854a <= 22) {
            String str2 = p0.f26857d;
            if (("ODROID-XU3".equals(str2) || "Nexus 10".equals(str2)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str))) {
                return true;
            }
        }
        return false;
    }

    public Point b(int i10, int i11) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f24762d;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return c(videoCapabilities, i10, i11);
    }

    public com.google.android.exoplayer2.decoder.g e(p1 p1Var, p1 p1Var2) {
        int i10 = !p0.c(p1Var.f24901l, p1Var2.f24901l) ? 8 : 0;
        if (this.f24769k) {
            if (p1Var.f24909t != p1Var2.f24909t) {
                i10 |= 1024;
            }
            if (!this.f24763e && (p1Var.f24906q != p1Var2.f24906q || p1Var.f24907r != p1Var2.f24907r)) {
                i10 |= 512;
            }
            if (!p0.c(p1Var.f24913x, p1Var2.f24913x)) {
                i10 |= 2048;
            }
            if (y(this.f24759a) && !p1Var.g(p1Var2)) {
                i10 |= 2;
            }
            if (i10 == 0) {
                return new com.google.android.exoplayer2.decoder.g(this.f24759a, p1Var, p1Var2, p1Var.g(p1Var2) ? 3 : 2, 0);
            }
        } else {
            if (p1Var.f24914y != p1Var2.f24914y) {
                i10 |= 4096;
            }
            if (p1Var.f24915z != p1Var2.f24915z) {
                i10 |= 8192;
            }
            if (p1Var.A != p1Var2.A) {
                i10 |= 16384;
            }
            if (i10 == 0 && MimeTypes.AUDIO_AAC.equals(this.f24760b)) {
                Pair pairQ = MediaCodecUtil.q(p1Var);
                Pair pairQ2 = MediaCodecUtil.q(p1Var2);
                if (pairQ != null && pairQ2 != null) {
                    int iIntValue = ((Integer) pairQ.first).intValue();
                    int iIntValue2 = ((Integer) pairQ2.first).intValue();
                    if (iIntValue == 42 && iIntValue2 == 42) {
                        return new com.google.android.exoplayer2.decoder.g(this.f24759a, p1Var, p1Var2, 3, 0);
                    }
                }
            }
            if (!p1Var.g(p1Var2)) {
                i10 |= 32;
            }
            if (x(this.f24760b)) {
                i10 |= 2;
            }
            if (i10 == 0) {
                return new com.google.android.exoplayer2.decoder.g(this.f24759a, p1Var, p1Var2, 1, 0);
            }
        }
        return new com.google.android.exoplayer2.decoder.g(this.f24759a, p1Var, p1Var2, 0, i10);
    }

    public MediaCodecInfo.CodecProfileLevel[] g() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f24762d;
        return (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) ? new MediaCodecInfo.CodecProfileLevel[0] : codecProfileLevelArr;
    }

    public boolean j(int i10) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f24762d;
        if (codecCapabilities == null) {
            w("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            w("channelCount.aCaps");
            return false;
        }
        if (a(this.f24759a, this.f24760b, audioCapabilities.getMaxInputChannelCount()) >= i10) {
            return true;
        }
        w("channelCount.support, " + i10);
        return false;
    }

    public boolean k(int i10) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f24762d;
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

    public boolean m(p1 p1Var) {
        int i10;
        if (!o(p1Var) || !l(p1Var)) {
            return false;
        }
        if (!this.f24769k) {
            if (p0.f26854a >= 21) {
                int i11 = p1Var.f24915z;
                if (i11 != -1 && !k(i11)) {
                    return false;
                }
                int i12 = p1Var.f24914y;
                if (i12 != -1 && !j(i12)) {
                    return false;
                }
            }
            return true;
        }
        int i13 = p1Var.f24906q;
        if (i13 <= 0 || (i10 = p1Var.f24907r) <= 0) {
            return true;
        }
        if (p0.f26854a >= 21) {
            return u(i13, i10, p1Var.f24908s);
        }
        boolean z10 = i13 * i10 <= MediaCodecUtil.N();
        if (!z10) {
            w("legacyFrameSize, " + p1Var.f24906q + "x" + p1Var.f24907r);
        }
        return z10;
    }

    public boolean n() {
        if (p0.f26854a >= 29 && MimeTypes.VIDEO_VP9.equals(this.f24760b)) {
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : g()) {
                if (codecProfileLevel.profile == 16384) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean p(p1 p1Var) {
        if (this.f24769k) {
            return this.f24763e;
        }
        Pair pairQ = MediaCodecUtil.q(p1Var);
        return pairQ != null && ((Integer) pairQ.first).intValue() == 42;
    }

    public String toString() {
        return this.f24759a;
    }

    public boolean u(int i10, int i11, double d10) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f24762d;
        if (codecCapabilities == null) {
            w("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            w("sizeAndRate.vCaps");
            return false;
        }
        if (d(videoCapabilities, i10, i11, d10)) {
            return true;
        }
        if (i10 < i11 && B(this.f24759a) && d(videoCapabilities, i11, i10, d10)) {
            v("sizeAndRate.rotated, " + i10 + "x" + i11 + "x" + d10);
            return true;
        }
        w("sizeAndRate.support, " + i10 + "x" + i11 + "x" + d10);
        return false;
    }
}
