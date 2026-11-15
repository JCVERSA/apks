package com.yandex.mobile.ads.impl;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;

public final class kv0 {
    private static final lv0 i = nm1.e();
    public final String a;
    public final String b;
    public final String c;

    @Nullable
    public final MediaCodecInfo.CodecCapabilities d;
    public final boolean e;
    public final boolean f;
    public final boolean g;
    private final boolean h;

    @VisibleForTesting
    public kv0(String str, String str2, String str3, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3) {
        this.a = (String) hg.a(str);
        this.b = str2;
        this.c = str3;
        this.d = codecCapabilities;
        this.g = z;
        this.e = z2;
        this.f = z3;
        this.h = w01.f(str2);
    }

    @Nullable
    @RequiresApi(21)
    public final Point a(int i2, int i3) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.d;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        int i4 = f92.a;
        return new Point((((i2 + widthAlignment) - 1) / widthAlignment) * widthAlignment, (((i3 + heightAlignment) - 1) / heightAlignment) * heightAlignment);
    }

    public final boolean b(jc0 jc0Var) {
        if (this.h) {
            return this.e;
        }
        Pair<Integer, Integer> pairB = sv0.b(jc0Var);
        return pairB != null && ((Integer) pairB.first).intValue() == 42;
    }

    public final String toString() {
        return this.a;
    }

    public final ty a(jc0 jc0Var, jc0 jc0Var2) {
        int i2 = !f92.a(jc0Var.m, jc0Var2.m) ? 8 : 0;
        if (this.h) {
            if (jc0Var.u != jc0Var2.u) {
                i2 |= 1024;
            }
            if (!this.e && (jc0Var.r != jc0Var2.r || jc0Var.s != jc0Var2.s)) {
                i2 |= 512;
            }
            if (!f92.a(jc0Var.y, jc0Var2.y)) {
                i2 |= 2048;
            }
            String str = this.a;
            String str2 = f92.d;
            lv0 lv0Var = i;
            if (str2.startsWith(lv0Var.i()) && lv0Var.g().equals(str) && !jc0Var.a(jc0Var2)) {
                i2 |= 2;
            }
            if (i2 == 0) {
                return new ty(this.a, jc0Var, jc0Var2, jc0Var.a(jc0Var2) ? 3 : 2, 0);
            }
        } else {
            if (jc0Var.z != jc0Var2.z) {
                i2 |= 4096;
            }
            if (jc0Var.A != jc0Var2.A) {
                i2 |= 8192;
            }
            if (jc0Var.B != jc0Var2.B) {
                i2 |= 16384;
            }
            if (i2 == 0 && "audio/mp4a-latm".equals(this.b)) {
                Pair<Integer, Integer> pairB = sv0.b(jc0Var);
                Pair<Integer, Integer> pairB2 = sv0.b(jc0Var2);
                if (pairB != null && pairB2 != null) {
                    int iIntValue = ((Integer) pairB.first).intValue();
                    int iIntValue2 = ((Integer) pairB2.first).intValue();
                    if (iIntValue == 42 && iIntValue2 == 42) {
                        return new ty(this.a, jc0Var, jc0Var2, 3, 0);
                    }
                }
            }
            if (!jc0Var.a(jc0Var2)) {
                i2 |= 32;
            }
            if ("audio/opus".equals(this.b)) {
                i2 |= 2;
            }
            if (i2 == 0) {
                return new ty(this.a, jc0Var, jc0Var2, 1, 0);
            }
        }
        return new ty(this.a, jc0Var, jc0Var2, 0, i2);
    }

    public final boolean a(jc0 jc0Var) throws sv0.b {
        int i2;
        Pair<Integer, Integer> pairB;
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        if (!this.b.equals(jc0Var.m) && !this.b.equals(sv0.a(jc0Var))) {
            return false;
        }
        int i3 = 16;
        if (jc0Var.j != null && (pairB = sv0.b(jc0Var)) != null) {
            int iIntValue = ((Integer) pairB.first).intValue();
            int iIntValue2 = ((Integer) pairB.second).intValue();
            int i4 = 8;
            if ("video/dolby-vision".equals(jc0Var.m)) {
                if ("video/avc".equals(this.b)) {
                    iIntValue2 = 0;
                    iIntValue = 8;
                } else if ("video/hevc".equals(this.b)) {
                    iIntValue2 = 0;
                    iIntValue = 2;
                }
            }
            if (this.h || iIntValue == 42) {
                MediaCodecInfo.CodecCapabilities codecCapabilities = this.d;
                if (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
                    codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[0];
                }
                if (f92.a <= 23 && "video/x-vnd.on2.vp9".equals(this.b) && codecProfileLevelArr.length == 0) {
                    MediaCodecInfo.CodecCapabilities codecCapabilities2 = this.d;
                    int iIntValue3 = (codecCapabilities2 == null || (videoCapabilities = codecCapabilities2.getVideoCapabilities()) == null) ? 0 : ((Integer) videoCapabilities.getBitrateRange().getUpper()).intValue();
                    if (iIntValue3 >= 180000000) {
                        i4 = 1024;
                    } else if (iIntValue3 >= 120000000) {
                        i4 = 512;
                    } else if (iIntValue3 >= 60000000) {
                        i4 = 256;
                    } else if (iIntValue3 >= 30000000) {
                        i4 = 128;
                    } else if (iIntValue3 >= 18000000) {
                        i4 = 64;
                    } else if (iIntValue3 >= 12000000) {
                        i4 = 32;
                    } else if (iIntValue3 >= 7200000) {
                        i4 = 16;
                    } else if (iIntValue3 < 3600000) {
                        if (iIntValue3 >= 1800000) {
                            i4 = 4;
                        } else {
                            i4 = iIntValue3 >= 800000 ? 2 : 1;
                        }
                    }
                    MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
                    codecProfileLevel.profile = 1;
                    codecProfileLevel.level = i4;
                    codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
                }
                int length = codecProfileLevelArr.length;
                int i5 = 0;
                while (true) {
                    if (i5 < length) {
                        MediaCodecInfo.CodecProfileLevel codecProfileLevel2 = codecProfileLevelArr[i5];
                        if (codecProfileLevel2.profile == iIntValue && codecProfileLevel2.level >= iIntValue2) {
                            if (!"video/hevc".equals(this.b) || 2 != iIntValue) {
                                break;
                            }
                            lv0 lv0Var = i;
                            String strJ = lv0Var.j();
                            String str = f92.b;
                            if (!strJ.equals(str) && !lv0Var.a().equals(str)) {
                                break;
                            }
                        }
                        i5++;
                    } else {
                        a("codec.profileLevel, " + jc0Var.j + ", " + this.c);
                        return false;
                    }
                }
            }
        }
        if (this.h) {
            int i6 = jc0Var.r;
            if (i6 <= 0 || (i2 = jc0Var.s) <= 0) {
                return true;
            }
            if (f92.a >= 21) {
                return a(i6, i2, jc0Var.t);
            }
            boolean z = i6 * i2 <= sv0.a();
            if (!z) {
                a("legacyFrameSize, " + jc0Var.r + "x" + jc0Var.s);
            }
            return z;
        }
        int i7 = f92.a;
        if (i7 >= 21) {
            int i8 = jc0Var.A;
            if (i8 != -1) {
                MediaCodecInfo.CodecCapabilities codecCapabilities3 = this.d;
                if (codecCapabilities3 == null) {
                    a("sampleRate.caps");
                    return false;
                }
                MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities3.getAudioCapabilities();
                if (audioCapabilities == null) {
                    a("sampleRate.aCaps");
                    return false;
                }
                if (!audioCapabilities.isSampleRateSupported(i8)) {
                    a(oe.a("sampleRate.support, ", i8));
                    return false;
                }
            }
            int i9 = jc0Var.z;
            if (i9 != -1) {
                MediaCodecInfo.CodecCapabilities codecCapabilities4 = this.d;
                if (codecCapabilities4 == null) {
                    a("channelCount.caps");
                    return false;
                }
                MediaCodecInfo.AudioCapabilities audioCapabilities2 = codecCapabilities4.getAudioCapabilities();
                if (audioCapabilities2 == null) {
                    a("channelCount.aCaps");
                    return false;
                }
                String str2 = this.a;
                String str3 = this.b;
                int maxInputChannelCount = audioCapabilities2.getMaxInputChannelCount();
                if (maxInputChannelCount <= 1 && ((i7 < 26 || maxInputChannelCount <= 0) && !"audio/mpeg".equals(str3) && !"audio/3gpp".equals(str3) && !"audio/amr-wb".equals(str3) && !"audio/mp4a-latm".equals(str3) && !"audio/vorbis".equals(str3) && !"audio/opus".equals(str3) && !"audio/raw".equals(str3) && !"audio/flac".equals(str3) && !"audio/g711-alaw".equals(str3) && !"audio/g711-mlaw".equals(str3) && !"audio/gsm".equals(str3))) {
                    if ("audio/ac3".equals(str3)) {
                        i3 = 6;
                    } else if (!"audio/eac3".equals(str3)) {
                        i3 = 30;
                    }
                    et0.d(androidx.media3.exoplayer.mediacodec.MediaCodecInfo.TAG, "AssumedMaxChannelAdjustment: " + str2 + ", [" + maxInputChannelCount + " to " + i3 + "]");
                    maxInputChannelCount = i3;
                }
                if (maxInputChannelCount < i9) {
                    a(oe.a("channelCount.support, ", i9));
                    return false;
                }
            }
        }
        return true;
    }

    @RequiresApi(21)
    public final boolean a(int i2, int i3, double d) {
        boolean zIsSizeSupported;
        boolean zIsSizeSupported2;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.d;
        if (codecCapabilities == null) {
            a("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            a("sizeAndRate.vCaps");
            return false;
        }
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        int i4 = f92.a;
        Point point = new Point((((i2 + widthAlignment) - 1) / widthAlignment) * widthAlignment, (((i3 + heightAlignment) - 1) / heightAlignment) * heightAlignment);
        int i5 = point.x;
        int i6 = point.y;
        if (d != -1.0d && d >= 1.0d) {
            zIsSizeSupported = videoCapabilities.areSizeAndRateSupported(i5, i6, Math.floor(d));
        } else {
            zIsSizeSupported = videoCapabilities.isSizeSupported(i5, i6);
        }
        if (!zIsSizeSupported) {
            if (i2 < i3) {
                String str = this.a;
                lv0 lv0Var = i;
                if (!lv0Var.h().equals(str) || !lv0Var.b().equals(f92.b)) {
                    int widthAlignment2 = videoCapabilities.getWidthAlignment();
                    int heightAlignment2 = videoCapabilities.getHeightAlignment();
                    Point point2 = new Point((((i3 + widthAlignment2) - 1) / widthAlignment2) * widthAlignment2, (((i2 + heightAlignment2) - 1) / heightAlignment2) * heightAlignment2);
                    int i7 = point2.x;
                    int i8 = point2.y;
                    if (d != -1.0d && d >= 1.0d) {
                        zIsSizeSupported2 = videoCapabilities.areSizeAndRateSupported(i7, i8, Math.floor(d));
                    } else {
                        zIsSizeSupported2 = videoCapabilities.isSizeSupported(i7, i8);
                    }
                    if (zIsSizeSupported2) {
                        et0.a(androidx.media3.exoplayer.mediacodec.MediaCodecInfo.TAG, "AssumedSupport [" + ("sizeAndRate.rotated, " + i2 + "x" + i3 + "x" + d) + "] [" + this.a + ", " + this.b + "] [" + f92.e + "]");
                    }
                }
            }
            a("sizeAndRate.support, " + i2 + "x" + i3 + "x" + d);
            return false;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0047  */
    public static kv0 a(String str, String str2, String str3, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5;
        int i2;
        if (codecCapabilities == null || (i2 = f92.a) < 19 || !codecCapabilities.isFeatureSupported("adaptive-playback")) {
            z5 = false;
        } else {
            if (i2 <= 22) {
                lv0 lv0Var = i;
                String strD = lv0Var.d();
                String str4 = f92.d;
                if ((strD.equals(str4) || lv0Var.c().equals(str4)) && (lv0Var.e().equals(str) || lv0Var.f().equals(str))) {
                    z5 = false;
                }
            }
            z5 = true;
        }
        if (codecCapabilities != null && f92.a >= 21) {
            codecCapabilities.isFeatureSupported("tunneled-playback");
        }
        return new kv0(str, str2, str3, codecCapabilities, z, z5, z4 || (codecCapabilities != null && f92.a >= 21 && codecCapabilities.isFeatureSupported("secure-playback")));
    }

    public final boolean a() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        if (f92.a >= 29 && "video/x-vnd.on2.vp9".equals(this.b)) {
            MediaCodecInfo.CodecCapabilities codecCapabilities = this.d;
            if (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
                codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[0];
            }
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArr) {
                if (codecProfileLevel.profile == 16384) {
                    return true;
                }
            }
        }
        return false;
    }

    private void a(String str) {
        et0.a(androidx.media3.exoplayer.mediacodec.MediaCodecInfo.TAG, "NoSupport [" + str + "] [" + this.a + ", " + this.b + "] [" + f92.e + "]");
    }
}
