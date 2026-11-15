package defpackage;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.os.Build;
import android.util.Pair;
import androidx.media3.common.MimeTypes;
import java.util.HashMap;
import java.util.Objects;

public final class tkj {
    public final String a;
    public final String b;
    public final String c;
    public final MediaCodecInfo.CodecCapabilities d;
    public final boolean e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;

    public tkj(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        str.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = codecCapabilities;
        this.g = z;
        this.e = z4;
        this.f = z6;
        this.h = z7;
        this.i = bue.j(str2);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0053  */
    public static tkj c(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        boolean z6;
        boolean z7;
        if (codecCapabilities == null || !codecCapabilities.isFeatureSupported("adaptive-playback")) {
            z6 = false;
        } else {
            int i = kfh.a;
            z6 = true;
        }
        boolean z8 = codecCapabilities != null && codecCapabilities.isFeatureSupported("tunneled-playback");
        boolean z9 = z5 || (codecCapabilities != null && codecCapabilities.isFeatureSupported("secure-playback"));
        if (kfh.a < 35 || codecCapabilities == null || !codecCapabilities.isFeatureSupported("detached-surface")) {
            z7 = false;
        } else {
            String str4 = Build.MANUFACTURER;
            if (str4.equals("Xiaomi") || str4.equals("OPPO")) {
                z7 = false;
            } else {
                z7 = true;
            }
        }
        return new tkj(str, str2, str3, codecCapabilities, z, z2, z3, z6, z8, z9, z7);
    }

    public static Point i(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        int i3 = kfh.a;
        return new Point((((i + widthAlignment) - 1) / widthAlignment) * widthAlignment, (((i2 + heightAlignment) - 1) / heightAlignment) * heightAlignment);
    }

    public static boolean k(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        Point pointI = i(videoCapabilities, i, i2);
        int i3 = pointI.x;
        int i4 = pointI.y;
        return (d == -1.0d || d < 1.0d) ? videoCapabilities.isSizeSupported(i3, i4) : videoCapabilities.areSizeAndRateSupported(i3, i4, Math.floor(d));
    }

    public final Point a(int i, int i2) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.d;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return i(videoCapabilities, i, i2);
    }

    public final g1j b(erj erjVar, erj erjVar2) {
        int i = true != Objects.equals(erjVar.o, erjVar2.o) ? 8 : 0;
        if (this.i) {
            if (erjVar.y != erjVar2.y) {
                i |= 1024;
            }
            if (!this.e && (erjVar.v != erjVar2.v || erjVar.w != erjVar2.w)) {
                i |= 512;
            }
            h6j h6jVar = erjVar.C;
            if ((!h6j.g(h6jVar) || !h6j.g(erjVar2.C)) && !Objects.equals(h6jVar, erjVar2.C)) {
                i |= 2048;
            }
            String str = this.a;
            if (Build.MODEL.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str) && !erjVar.d(erjVar2)) {
                i |= 2;
            }
            if (i == 0) {
                return new g1j(str, erjVar, erjVar2, true != erjVar.d(erjVar2) ? 2 : 3, 0);
            }
        } else {
            if (erjVar.E != erjVar2.E) {
                i |= 4096;
            }
            if (erjVar.F != erjVar2.F) {
                i |= 8192;
            }
            if (erjVar.G != erjVar2.G) {
                i |= 16384;
            }
            if (i == 0 && "audio/mp4a-latm".equals(this.b)) {
                HashMap map = qlj.a;
                Pair pairA = vcg.a(erjVar);
                Pair pairA2 = vcg.a(erjVar2);
                if (pairA != null && pairA2 != null) {
                    int iIntValue = ((Integer) pairA.first).intValue();
                    int iIntValue2 = ((Integer) pairA2.first).intValue();
                    if (iIntValue == 42 && iIntValue2 == 42) {
                        return new g1j(this.a, erjVar, erjVar2, 3, 0);
                    }
                }
            }
            if (!erjVar.d(erjVar2)) {
                i |= 32;
            }
            if ("audio/opus".equals(this.b)) {
                i |= 2;
            }
            if (i == 0) {
                return new g1j(this.a, erjVar, erjVar2, 1, 0);
            }
        }
        return new g1j(this.a, erjVar, erjVar2, 0, i);
    }

    public final boolean d(erj erjVar) {
        return n(erjVar) && l(erjVar, false) && m(erjVar);
    }

    public final boolean e(erj erjVar) {
        int i;
        int i2;
        if (!n(erjVar) || !l(erjVar, true) || !m(erjVar)) {
            return false;
        }
        if (this.i) {
            int i3 = erjVar.v;
            if (i3 <= 0 || (i2 = erjVar.w) <= 0) {
                return true;
            }
            return g(i3, i2, erjVar.x);
        }
        int i4 = erjVar.F;
        if (i4 != -1) {
            MediaCodecInfo.CodecCapabilities codecCapabilities = this.d;
            if (codecCapabilities == null) {
                j("sampleRate.caps");
                return false;
            }
            MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
            if (audioCapabilities == null) {
                j("sampleRate.aCaps");
                return false;
            }
            if (!audioCapabilities.isSampleRateSupported(i4)) {
                j("sampleRate.support, " + i4);
                return false;
            }
        }
        int i5 = erjVar.E;
        if (i5 == -1) {
            return true;
        }
        MediaCodecInfo.CodecCapabilities codecCapabilities2 = this.d;
        if (codecCapabilities2 == null) {
            j("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities2 = codecCapabilities2.getAudioCapabilities();
        if (audioCapabilities2 == null) {
            j("channelCount.aCaps");
            return false;
        }
        String str = this.a;
        String str2 = this.b;
        int maxInputChannelCount = audioCapabilities2.getMaxInputChannelCount();
        if (maxInputChannelCount <= 1 && ((kfh.a < 26 || maxInputChannelCount <= 0) && !"audio/mpeg".equals(str2) && !"audio/3gpp".equals(str2) && !"audio/amr-wb".equals(str2) && !"audio/mp4a-latm".equals(str2) && !"audio/vorbis".equals(str2) && !"audio/opus".equals(str2) && !"audio/raw".equals(str2) && !"audio/flac".equals(str2) && !"audio/g711-alaw".equals(str2) && !"audio/g711-mlaw".equals(str2) && !"audio/gsm".equals(str2))) {
            if ("audio/ac3".equals(str2)) {
                i = 6;
            } else {
                i = "audio/eac3".equals(str2) ? 16 : 30;
            }
            zrg.f(androidx.media3.exoplayer.mediacodec.MediaCodecInfo.TAG, "AssumedMaxChannelAdjustment: " + str + ", [" + maxInputChannelCount + " to " + i + "]");
            maxInputChannelCount = i;
        }
        if (maxInputChannelCount >= i5) {
            return true;
        }
        j("channelCount.support, " + i5);
        return false;
    }

    public final boolean f(erj erjVar) {
        if (this.i) {
            return this.e;
        }
        HashMap map = qlj.a;
        Pair pairA = vcg.a(erjVar);
        return pairA != null && ((Integer) pairA.first).intValue() == 42;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0055 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:22:0x0057  */
    public final boolean g(int i, int i2, double d) {
        String str;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.d;
        if (codecCapabilities == null) {
            j("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            j("sizeAndRate.vCaps");
            return false;
        }
        if (kfh.a >= 29) {
            int iA = blj.a(videoCapabilities, i, i2, d);
            if (iA != 2) {
                if (iA == 1) {
                    j("sizeAndRate.cover, " + i + "x" + i2 + "@" + d);
                    return false;
                }
                if (!k(videoCapabilities, i, i2, d)) {
                    if (i < i2) {
                        str = this.a;
                        if ("OMX.MTK.VIDEO.DECODER.HEVC".equals(str)) {
                            zrg.b(androidx.media3.exoplayer.mediacodec.MediaCodecInfo.TAG, "AssumedSupport [" + ("sizeAndRate.rotated, " + i + "x" + i2 + "@" + d) + "] [" + str + ", " + this.b + "] [" + kfh.b + "]");
                        } else {
                            zrg.b(androidx.media3.exoplayer.mediacodec.MediaCodecInfo.TAG, "AssumedSupport [" + ("sizeAndRate.rotated, " + i + "x" + i2 + "@" + d) + "] [" + str + ", " + this.b + "] [" + kfh.b + "]");
                        }
                    }
                    j("sizeAndRate.support, " + i + "x" + i2 + "@" + d);
                    return false;
                }
            }
        } else if (!k(videoCapabilities, i, i2, d)) {
            if (i < i2) {
                str = this.a;
                if (("OMX.MTK.VIDEO.DECODER.HEVC".equals(str) || !"mcv5a".equals(Build.DEVICE)) && k(videoCapabilities, i2, i, d)) {
                    zrg.b(androidx.media3.exoplayer.mediacodec.MediaCodecInfo.TAG, "AssumedSupport [" + ("sizeAndRate.rotated, " + i + "x" + i2 + "@" + d) + "] [" + str + ", " + this.b + "] [" + kfh.b + "]");
                }
            }
            j("sizeAndRate.support, " + i + "x" + i2 + "@" + d);
            return false;
        }
        return true;
    }

    public final MediaCodecInfo.CodecProfileLevel[] h() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.d;
        return (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) ? new MediaCodecInfo.CodecProfileLevel[0] : codecProfileLevelArr;
    }

    public final void j(String str) {
        zrg.b(androidx.media3.exoplayer.mediacodec.MediaCodecInfo.TAG, "NoSupport [" + str + "] [" + this.a + ", " + this.b + "] [" + kfh.b + "]");
    }

    /* JADX WARN: Code duplicated, block: B:112:0x0161 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:16:0x0048  */
    /* JADX WARN: Code duplicated, block: B:18:0x0064  */
    /* JADX WARN: Code duplicated, block: B:20:0x006f  */
    /* JADX WARN: Code duplicated, block: B:22:0x0074  */
    /* JADX WARN: Code duplicated, block: B:28:0x0084  */
    /* JADX WARN: Code duplicated, block: B:30:0x008a  */
    /* JADX WARN: Code duplicated, block: B:31:0x008c  */
    /* JADX WARN: Code duplicated, block: B:33:0x0094  */
    /* JADX WARN: Code duplicated, block: B:35:0x0097  */
    /* JADX WARN: Code duplicated, block: B:40:0x009f  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:45:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:46:0x00aa A[PHI: r5
      0x00aa: PHI (r5v4 int) = (r5v3 int), (r5v5 int) binds: [B:42:0x00a3, B:45:0x00a9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:48:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:57:0x00da  */
    /* JADX WARN: Code duplicated, block: B:60:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:61:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:63:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:64:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:66:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:67:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:69:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:70:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:72:0x0100  */
    /* JADX WARN: Code duplicated, block: B:73:0x0103  */
    /* JADX WARN: Code duplicated, block: B:75:0x0108  */
    /* JADX WARN: Code duplicated, block: B:76:0x010b  */
    /* JADX WARN: Code duplicated, block: B:78:0x0110  */
    /* JADX WARN: Code duplicated, block: B:79:0x0113  */
    /* JADX WARN: Code duplicated, block: B:82:0x0119  */
    /* JADX WARN: Code duplicated, block: B:84:0x011e  */
    /* JADX WARN: Code duplicated, block: B:85:0x0120  */
    /* JADX WARN: Code duplicated, block: B:87:0x0125  */
    /* JADX WARN: Code duplicated, block: B:88:0x0127  */
    /* JADX WARN: Code duplicated, block: B:92:0x0139  */
    /* JADX WARN: Code duplicated, block: B:94:0x013f  */
    public final boolean l(erj erjVar, boolean z) {
        int iIntValue;
        int iIntValue2;
        int i;
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrH;
        int length;
        int i2;
        MediaCodecInfo.CodecProfileLevel codecProfileLevel;
        MediaCodecInfo.CodecCapabilities codecCapabilities;
        int iIntValue3;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        String str;
        int iHashCode;
        HashMap map = qlj.a;
        Pair pairA = vcg.a(erjVar);
        String str2 = erjVar.o;
        byte b = -1;
        if (str2 != null && str2.equals(MimeTypes.VIDEO_MV_HEVC)) {
            String strE = bue.e(this.c);
            if (!strE.equals(MimeTypes.VIDEO_MV_HEVC)) {
                if (strE.equals("video/hevc")) {
                    String strH = jzh.h(erjVar.r);
                    if (strH == null) {
                        pairA = null;
                    } else {
                        String strTrim = strH.trim();
                        int i3 = kfh.a;
                        pairA = vcg.b(strH, strTrim.split("\\.", -1), erjVar.C);
                    }
                }
                if (pairA != null) {
                    iIntValue = ((Integer) pairA.first).intValue();
                    iIntValue2 = ((Integer) pairA.second).intValue();
                    i = 8;
                    if ("video/dolby-vision".equals(str2)) {
                        str = this.b;
                        iHashCode = str.hashCode();
                        if (iHashCode != -1662735862) {
                            if (iHashCode != -1662541442) {
                                if (iHashCode == 1331836730) {
                                    b = 0;
                                }
                            } else if (str.equals("video/hevc")) {
                                b = 1;
                            }
                        } else if (str.equals(MimeTypes.VIDEO_AV1)) {
                            b = 2;
                        }
                        if (b == 0) {
                            if (b != 1) {
                            }
                            iIntValue = 2;
                        } else {
                            iIntValue = 8;
                        }
                        iIntValue2 = 0;
                    }
                    if (this.i) {
                        codecProfileLevelArrH = h();
                        if (kfh.a <= 23) {
                            codecCapabilities = this.d;
                            if (codecCapabilities != null) {
                                iIntValue3 = 0;
                            } else {
                                iIntValue3 = 0;
                            }
                            if (iIntValue3 >= 180000000) {
                                i = 1024;
                            } else if (iIntValue3 >= 120000000) {
                                i = 512;
                            } else if (iIntValue3 >= 60000000) {
                                i = 256;
                            } else if (iIntValue3 >= 30000000) {
                                i = 128;
                            } else if (iIntValue3 >= 18000000) {
                                i = 64;
                            } else if (iIntValue3 >= 12000000) {
                                i = 32;
                            } else if (iIntValue3 >= 7200000) {
                                i = 16;
                            } else if (iIntValue3 < 3600000) {
                                if (iIntValue3 >= 1800000) {
                                    i = 4;
                                } else if (iIntValue3 >= 800000) {
                                    i = 2;
                                } else {
                                    i = 1;
                                }
                            }
                            MediaCodecInfo.CodecProfileLevel codecProfileLevel2 = new MediaCodecInfo.CodecProfileLevel();
                            codecProfileLevel2.profile = 1;
                            codecProfileLevel2.level = i;
                            codecProfileLevelArrH = new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel2};
                        }
                        length = codecProfileLevelArrH.length;
                        for (i2 = 0; i2 < length; i2++) {
                            codecProfileLevel = codecProfileLevelArrH[i2];
                            if (codecProfileLevel.profile != iIntValue) {
                            }
                        }
                        j("codec.profileLevel, " + erjVar.k + ", " + this.c);
                        return false;
                    }
                    if (iIntValue == 42) {
                        iIntValue = 42;
                        codecProfileLevelArrH = h();
                        if (kfh.a <= 23) {
                            codecCapabilities = this.d;
                            if (codecCapabilities != null) {
                                iIntValue3 = 0;
                            } else {
                                iIntValue3 = 0;
                            }
                            if (iIntValue3 >= 180000000) {
                                i = 1024;
                            } else if (iIntValue3 >= 120000000) {
                                i = 512;
                            } else if (iIntValue3 >= 60000000) {
                                i = 256;
                            } else if (iIntValue3 >= 30000000) {
                                i = 128;
                            } else if (iIntValue3 >= 18000000) {
                                i = 64;
                            } else if (iIntValue3 >= 12000000) {
                                i = 32;
                            } else if (iIntValue3 >= 7200000) {
                                i = 16;
                            } else if (iIntValue3 < 3600000) {
                                if (iIntValue3 >= 1800000) {
                                    i = 4;
                                } else if (iIntValue3 >= 800000) {
                                    i = 2;
                                } else {
                                    i = 1;
                                }
                            }
                            MediaCodecInfo.CodecProfileLevel codecProfileLevel3 = new MediaCodecInfo.CodecProfileLevel();
                            codecProfileLevel3.profile = 1;
                            codecProfileLevel3.level = i;
                            codecProfileLevelArrH = new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel3};
                        }
                        length = codecProfileLevelArrH.length;
                        while (i2 < length) {
                            codecProfileLevel = codecProfileLevelArrH[i2];
                            if (codecProfileLevel.profile != iIntValue) {
                            }
                        }
                        j("codec.profileLevel, " + erjVar.k + ", " + this.c);
                        return false;
                    }
                }
            }
        } else if (pairA != null) {
            iIntValue = ((Integer) pairA.first).intValue();
            iIntValue2 = ((Integer) pairA.second).intValue();
            i = 8;
            if ("video/dolby-vision".equals(str2)) {
                str = this.b;
                iHashCode = str.hashCode();
                if (iHashCode != -1662735862) {
                    if (iHashCode != -1662541442) {
                        if (iHashCode == 1331836730 && str.equals("video/avc")) {
                            b = 0;
                        }
                    } else if (str.equals("video/hevc")) {
                        b = 1;
                    }
                } else if (str.equals(MimeTypes.VIDEO_AV1)) {
                    b = 2;
                }
                if (b == 0) {
                    iIntValue = 8;
                } else if (b != 1 || b == 2) {
                    iIntValue = 2;
                }
                iIntValue2 = 0;
            }
            if (this.i) {
                codecProfileLevelArrH = h();
                if (kfh.a <= 23 && "video/x-vnd.on2.vp9".equals(this.b) && codecProfileLevelArrH.length == 0) {
                    codecCapabilities = this.d;
                    if (codecCapabilities != null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
                        iIntValue3 = 0;
                    } else {
                        iIntValue3 = ((Integer) videoCapabilities.getBitrateRange().getUpper()).intValue();
                    }
                    if (iIntValue3 >= 180000000) {
                        i = 1024;
                    } else if (iIntValue3 >= 120000000) {
                        i = 512;
                    } else if (iIntValue3 >= 60000000) {
                        i = 256;
                    } else if (iIntValue3 >= 30000000) {
                        i = 128;
                    } else if (iIntValue3 >= 18000000) {
                        i = 64;
                    } else if (iIntValue3 >= 12000000) {
                        i = 32;
                    } else if (iIntValue3 >= 7200000) {
                        i = 16;
                    } else if (iIntValue3 < 3600000) {
                        if (iIntValue3 >= 1800000) {
                            i = 4;
                        } else if (iIntValue3 >= 800000) {
                            i = 2;
                        } else {
                            i = 1;
                        }
                    }
                    MediaCodecInfo.CodecProfileLevel codecProfileLevel4 = new MediaCodecInfo.CodecProfileLevel();
                    codecProfileLevel4.profile = 1;
                    codecProfileLevel4.level = i;
                    codecProfileLevelArrH = new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel4};
                }
                length = codecProfileLevelArrH.length;
                while (i2 < length) {
                    codecProfileLevel = codecProfileLevelArrH[i2];
                    if (codecProfileLevel.profile != iIntValue && (codecProfileLevel.level >= iIntValue2 || !z)) {
                        if ("video/hevc".equals(this.b) && iIntValue == 2) {
                            String str3 = Build.DEVICE;
                            if ("sailfish".equals(str3) || "marlin".equals(str3)) {
                            }
                        }
                    }
                }
                j("codec.profileLevel, " + erjVar.k + ", " + this.c);
                return false;
            }
            if (iIntValue == 42) {
                iIntValue = 42;
                codecProfileLevelArrH = h();
                if (kfh.a <= 23) {
                    codecCapabilities = this.d;
                    if (codecCapabilities != null) {
                        iIntValue3 = 0;
                    } else {
                        iIntValue3 = 0;
                    }
                    if (iIntValue3 >= 180000000) {
                        i = 1024;
                    } else if (iIntValue3 >= 120000000) {
                        i = 512;
                    } else if (iIntValue3 >= 60000000) {
                        i = 256;
                    } else if (iIntValue3 >= 30000000) {
                        i = 128;
                    } else if (iIntValue3 >= 18000000) {
                        i = 64;
                    } else if (iIntValue3 >= 12000000) {
                        i = 32;
                    } else if (iIntValue3 >= 7200000) {
                        i = 16;
                    } else if (iIntValue3 < 3600000) {
                        if (iIntValue3 >= 1800000) {
                            i = 4;
                        } else if (iIntValue3 >= 800000) {
                            i = 2;
                        } else {
                            i = 1;
                        }
                    }
                    MediaCodecInfo.CodecProfileLevel codecProfileLevel5 = new MediaCodecInfo.CodecProfileLevel();
                    codecProfileLevel5.profile = 1;
                    codecProfileLevel5.level = i;
                    codecProfileLevelArrH = new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel5};
                }
                length = codecProfileLevelArrH.length;
                while (i2 < length) {
                    codecProfileLevel = codecProfileLevelArrH[i2];
                    if (codecProfileLevel.profile != iIntValue) {
                    }
                }
                j("codec.profileLevel, " + erjVar.k + ", " + this.c);
                return false;
            }
        }
        return true;
    }

    public final boolean m(erj erjVar) {
        return (Objects.equals(erjVar.o, "audio/flac") && erjVar.G == 22 && kfh.a < 34 && this.a.equals("c2.android.flac.decoder")) ? false : true;
    }

    public final boolean n(erj erjVar) {
        String str = this.b;
        return str.equals(erjVar.o) || str.equals(qlj.b(erjVar));
    }

    public final String toString() {
        return this.a;
    }
}
