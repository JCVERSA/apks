package com.google.android.exoplayer2.mediacodec;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import com.google.android.exoplayer2.k;
import defpackage.blb;
import defpackage.lu1;
import defpackage.op5;
import defpackage.qp6;
import defpackage.zi;

public final class d {
    public final String a;
    public final String b;
    public final String c;
    public final MediaCodecInfo.CodecCapabilities d;
    public final boolean e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;
    public final boolean j;
    public final boolean k;

    public d(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.a = (String) zi.e(str);
        this.b = str2;
        this.c = str3;
        this.d = codecCapabilities;
        this.h = z;
        this.i = z2;
        this.j = z3;
        this.e = z4;
        this.f = z5;
        this.g = z6;
        this.k = qp6.k(str2);
    }

    public static boolean A(String str, int i) {
        if ("video/hevc".equals(str) && 2 == i) {
            String str2 = blb.b;
            if ("sailfish".equals(str2) || "marlin".equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean B(String str) {
        return ("OMX.MTK.VIDEO.DECODER.HEVC".equals(str) && "mcv5a".equals(blb.b)) ? false : true;
    }

    public static d C(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        return new d(str, str2, str3, codecCapabilities, z, z2, z3, (z4 || codecCapabilities == null || !h(codecCapabilities) || z(str)) ? false : true, codecCapabilities != null && s(codecCapabilities), z5 || (codecCapabilities != null && q(codecCapabilities)));
    }

    public static int a(String str, String str2, int i) {
        int i2;
        if (i > 1 || ((blb.a >= 26 && i > 0) || "audio/mpeg".equals(str2) || "audio/3gpp".equals(str2) || "audio/amr-wb".equals(str2) || "audio/mp4a-latm".equals(str2) || "audio/vorbis".equals(str2) || "audio/opus".equals(str2) || "audio/raw".equals(str2) || "audio/flac".equals(str2) || "audio/g711-alaw".equals(str2) || "audio/g711-mlaw".equals(str2) || "audio/gsm".equals(str2))) {
            return i;
        }
        if ("audio/ac3".equals(str2)) {
            i2 = 6;
        } else {
            i2 = "audio/eac3".equals(str2) ? 16 : 30;
        }
        op5.i(androidx.media3.exoplayer.mediacodec.MediaCodecInfo.TAG, "AssumedMaxChannelAdjustment: " + str + ", [" + i + " to " + i2 + "]");
        return i2;
    }

    public static Point c(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(blb.l(i, widthAlignment) * widthAlignment, blb.l(i2, heightAlignment) * heightAlignment);
    }

    public static boolean d(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        Point pointC = c(videoCapabilities, i, i2);
        int i3 = pointC.x;
        int i4 = pointC.y;
        return (d == -1.0d || d < 1.0d) ? videoCapabilities.isSizeSupported(i3, i4) : videoCapabilities.areSizeAndRateSupported(i3, i4, Math.floor(d));
    }

    public static MediaCodecInfo.CodecProfileLevel[] f(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        int i;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        int iIntValue = (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) ? 0 : ((Integer) videoCapabilities.getBitrateRange().getUpper()).intValue();
        if (iIntValue >= 180000000) {
            i = 1024;
        } else if (iIntValue >= 120000000) {
            i = 512;
        } else if (iIntValue >= 60000000) {
            i = 256;
        } else if (iIntValue >= 30000000) {
            i = 128;
        } else if (iIntValue >= 18000000) {
            i = 64;
        } else if (iIntValue >= 12000000) {
            i = 32;
        } else if (iIntValue >= 7200000) {
            i = 16;
        } else if (iIntValue >= 3600000) {
            i = 8;
        } else if (iIntValue >= 1800000) {
            i = 4;
        } else {
            i = iIntValue >= 800000 ? 2 : 1;
        }
        MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
        codecProfileLevel.profile = 1;
        codecProfileLevel.level = i;
        return new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
    }

    public static boolean h(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return blb.a >= 19 && i(codecCapabilities);
    }

    public static boolean i(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    public static boolean q(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return blb.a >= 21 && r(codecCapabilities);
    }

    public static boolean r(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    public static boolean s(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return blb.a >= 21 && t(codecCapabilities);
    }

    public static boolean t(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("tunneled-playback");
    }

    public static boolean x(String str) {
        return "audio/opus".equals(str);
    }

    public static boolean y(String str) {
        return blb.d.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str);
    }

    public static boolean z(String str) {
        if (blb.a <= 22) {
            String str2 = blb.d;
            if (("ODROID-XU3".equals(str2) || "Nexus 10".equals(str2)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str))) {
                return true;
            }
        }
        return false;
    }

    public Point b(int i, int i2) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.d;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return c(videoCapabilities, i, i2);
    }

    public lu1 e(k kVar, k kVar2) {
        int i = !blb.c(kVar.m, kVar2.m) ? 8 : 0;
        if (this.k) {
            if (kVar.u != kVar2.u) {
                i |= 1024;
            }
            if (!this.e && (kVar.r != kVar2.r || kVar.s != kVar2.s)) {
                i |= 512;
            }
            if (!blb.c(kVar.y, kVar2.y)) {
                i |= 2048;
            }
            if (y(this.a) && !kVar.g(kVar2)) {
                i |= 2;
            }
            if (i == 0) {
                return new lu1(this.a, kVar, kVar2, kVar.g(kVar2) ? 3 : 2, 0);
            }
        } else {
            if (kVar.z != kVar2.z) {
                i |= 4096;
            }
            if (kVar.A != kVar2.A) {
                i |= 8192;
            }
            if (kVar.B != kVar2.B) {
                i |= 16384;
            }
            if (i == 0 && "audio/mp4a-latm".equals(this.b)) {
                Pair pairQ = MediaCodecUtil.q(kVar);
                Pair pairQ2 = MediaCodecUtil.q(kVar2);
                if (pairQ != null && pairQ2 != null) {
                    int iIntValue = ((Integer) pairQ.first).intValue();
                    int iIntValue2 = ((Integer) pairQ2.first).intValue();
                    if (iIntValue == 42 && iIntValue2 == 42) {
                        return new lu1(this.a, kVar, kVar2, 3, 0);
                    }
                }
            }
            if (!kVar.g(kVar2)) {
                i |= 32;
            }
            if (x(this.b)) {
                i |= 2;
            }
            if (i == 0) {
                return new lu1(this.a, kVar, kVar2, 1, 0);
            }
        }
        return new lu1(this.a, kVar, kVar2, 0, i);
    }

    public MediaCodecInfo.CodecProfileLevel[] g() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.d;
        return (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) ? new MediaCodecInfo.CodecProfileLevel[0] : codecProfileLevelArr;
    }

    public boolean j(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.d;
        if (codecCapabilities == null) {
            w("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            w("channelCount.aCaps");
            return false;
        }
        if (a(this.a, this.b, audioCapabilities.getMaxInputChannelCount()) >= i) {
            return true;
        }
        w("channelCount.support, " + i);
        return false;
    }

    public boolean k(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.d;
        if (codecCapabilities == null) {
            w("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            w("sampleRate.aCaps");
            return false;
        }
        if (audioCapabilities.isSampleRateSupported(i)) {
            return true;
        }
        w("sampleRate.support, " + i);
        return false;
    }

    public final boolean l(k kVar) {
        Pair pairQ;
        if (kVar.j == null || (pairQ = MediaCodecUtil.q(kVar)) == null) {
            return true;
        }
        int iIntValue = ((Integer) pairQ.first).intValue();
        int iIntValue2 = ((Integer) pairQ.second).intValue();
        if ("video/dolby-vision".equals(kVar.m)) {
            if (!"video/avc".equals(this.b)) {
                iIntValue = "video/hevc".equals(this.b) ? 2 : 8;
            }
            iIntValue2 = 0;
        }
        if (!this.k && iIntValue != 42) {
            return true;
        }
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrG = g();
        if (blb.a <= 23 && "video/x-vnd.on2.vp9".equals(this.b) && codecProfileLevelArrG.length == 0) {
            codecProfileLevelArrG = f(this.d);
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArrG) {
            if (codecProfileLevel.profile == iIntValue && codecProfileLevel.level >= iIntValue2 && !A(this.b, iIntValue)) {
                return true;
            }
        }
        w("codec.profileLevel, " + kVar.j + ", " + this.c);
        return false;
    }

    public boolean m(k kVar) {
        int i;
        if (!o(kVar) || !l(kVar)) {
            return false;
        }
        if (!this.k) {
            if (blb.a >= 21) {
                int i2 = kVar.A;
                if (i2 != -1 && !k(i2)) {
                    return false;
                }
                int i3 = kVar.z;
                if (i3 != -1 && !j(i3)) {
                    return false;
                }
            }
            return true;
        }
        int i4 = kVar.r;
        if (i4 <= 0 || (i = kVar.s) <= 0) {
            return true;
        }
        if (blb.a >= 21) {
            return u(i4, i, kVar.t);
        }
        boolean z = i4 * i <= MediaCodecUtil.N();
        if (!z) {
            w("legacyFrameSize, " + kVar.r + "x" + kVar.s);
        }
        return z;
    }

    public boolean n() {
        if (blb.a >= 29 && "video/x-vnd.on2.vp9".equals(this.b)) {
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : g()) {
                if (codecProfileLevel.profile == 16384) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean o(k kVar) {
        return this.b.equals(kVar.m) || this.b.equals(MediaCodecUtil.m(kVar));
    }

    public boolean p(k kVar) {
        if (this.k) {
            return this.e;
        }
        Pair pairQ = MediaCodecUtil.q(kVar);
        return pairQ != null && ((Integer) pairQ.first).intValue() == 42;
    }

    public String toString() {
        return this.a;
    }

    public boolean u(int i, int i2, double d) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.d;
        if (codecCapabilities == null) {
            w("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            w("sizeAndRate.vCaps");
            return false;
        }
        if (d(videoCapabilities, i, i2, d)) {
            return true;
        }
        if (i < i2 && B(this.a) && d(videoCapabilities, i2, i, d)) {
            v("sizeAndRate.rotated, " + i + "x" + i2 + "x" + d);
            return true;
        }
        w("sizeAndRate.support, " + i + "x" + i2 + "x" + d);
        return false;
    }

    public final void v(String str) {
        op5.b(androidx.media3.exoplayer.mediacodec.MediaCodecInfo.TAG, "AssumedSupport [" + str + "] [" + this.a + ", " + this.b + "] [" + blb.e + "]");
    }

    public final void w(String str) {
        op5.b(androidx.media3.exoplayer.mediacodec.MediaCodecInfo.TAG, "NoSupport [" + str + "] [" + this.a + ", " + this.b + "] [" + blb.e + "]");
    }
}
