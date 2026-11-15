package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import androidx.media3.common.MimeTypes;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.mediacodec.d;
import com.google.common.collect.ImmutableList;
import defpackage.blb;
import defpackage.op5;
import defpackage.qp6;
import defpackage.ui;
import defpackage.v81;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.mozilla.classfile.ByteCode;

public abstract class MediaCodecUtil {
    public static final Pattern a = Pattern.compile("^\\D?(\\d+)$");
    public static final HashMap b = new HashMap();
    public static int c = -1;

    public static class DecoderQueryException extends Exception {
        private DecoderQueryException(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    public static final class b {
        public final String a;
        public final boolean b;
        public final boolean c;

        public b(String str, boolean z, boolean z2) {
            this.a = str;
            this.b = z;
            this.c = z2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != b.class) {
                return false;
            }
            b bVar = (b) obj;
            return TextUtils.equals(this.a, bVar.a) && this.b == bVar.b && this.c == bVar.c;
        }

        public int hashCode() {
            return ((((this.a.hashCode() + 31) * 31) + (this.b ? 1231 : 1237)) * 31) + (this.c ? 1231 : 1237);
        }
    }

    public interface c {
        int getCodecCount();

        MediaCodecInfo getCodecInfoAt(int i);

        boolean isFeatureRequired(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean isFeatureSupported(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean secureDecodersExplicit();
    }

    public static final class d implements c {
        public d() {
        }

        @Override
        public int getCodecCount() {
            return MediaCodecList.getCodecCount();
        }

        @Override
        public MediaCodecInfo getCodecInfoAt(int i) {
            return MediaCodecList.getCodecInfoAt(i);
        }

        @Override
        public boolean isFeatureRequired(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override
        public boolean isFeatureSupported(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && "video/avc".equals(str2);
        }

        @Override
        public boolean secureDecodersExplicit() {
            return false;
        }
    }

    public static final class e implements c {
        public final int a;
        public MediaCodecInfo[] b;

        public e(boolean z, boolean z2) {
            this.a = (z || z2) ? 1 : 0;
        }

        public final void a() {
            if (this.b == null) {
                this.b = new MediaCodecList(this.a).getCodecInfos();
            }
        }

        @Override
        public int getCodecCount() {
            a();
            return this.b.length;
        }

        @Override
        public MediaCodecInfo getCodecInfoAt(int i) {
            a();
            return this.b[i];
        }

        @Override
        public boolean isFeatureRequired(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override
        public boolean isFeatureSupported(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override
        public boolean secureDecodersExplicit() {
            return true;
        }
    }

    public interface f {
        int getScore(Object obj);
    }

    public static boolean A(MediaCodecInfo mediaCodecInfo) {
        return blb.a >= 29 && B(mediaCodecInfo);
    }

    public static boolean B(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isAlias();
    }

    public static boolean C(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        if (mediaCodecInfo.isEncoder() || (!z && str.endsWith(".secure"))) {
            return false;
        }
        int i = blb.a;
        if (i < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
            return false;
        }
        if (i < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str)) {
            String str3 = blb.b;
            if ("a70".equals(str3) || ("Xiaomi".equals(blb.c) && str3.startsWith("HM"))) {
                return false;
            }
        }
        if (i == 16 && "OMX.qcom.audio.decoder.mp3".equals(str)) {
            String str4 = blb.b;
            if ("dlxu".equals(str4) || "protou".equals(str4) || "ville".equals(str4) || "villeplus".equals(str4) || "villec2".equals(str4) || str4.startsWith("gee") || "C6602".equals(str4) || "C6603".equals(str4) || "C6606".equals(str4) || "C6616".equals(str4) || "L36h".equals(str4) || "SO-02E".equals(str4)) {
                return false;
            }
        }
        if (i == 16 && "OMX.qcom.audio.decoder.aac".equals(str)) {
            String str5 = blb.b;
            if ("C1504".equals(str5) || "C1505".equals(str5) || "C1604".equals(str5) || "C1605".equals(str5)) {
                return false;
            }
        }
        if (i < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(blb.c))) {
            String str6 = blb.b;
            if (str6.startsWith("zeroflte") || str6.startsWith("zerolte") || str6.startsWith("zenlte") || "SC-05G".equals(str6) || "marinelteatt".equals(str6) || "404SC".equals(str6) || "SC-04G".equals(str6) || "SCV31".equals(str6)) {
                return false;
            }
        }
        if (i <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(blb.c)) {
            String str7 = blb.b;
            if (str7.startsWith("d2") || str7.startsWith("serrano") || str7.startsWith("jflte") || str7.startsWith("santos") || str7.startsWith("t0")) {
                return false;
            }
        }
        if (i <= 19 && blb.b.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(str)) {
            return false;
        }
        return (i <= 23 && MimeTypes.AUDIO_E_AC3_JOC.equals(str2) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)) ? false : true;
    }

    public static boolean D(MediaCodecInfo mediaCodecInfo, String str) {
        return blb.a >= 29 ? E(mediaCodecInfo) : !F(mediaCodecInfo, str);
    }

    public static boolean E(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isHardwareAccelerated();
    }

    public static boolean F(MediaCodecInfo mediaCodecInfo, String str) {
        if (blb.a >= 29) {
            return G(mediaCodecInfo);
        }
        if (qp6.h(str)) {
            return true;
        }
        String strE = ui.e(mediaCodecInfo.getName());
        if (strE.startsWith("arc.")) {
            return false;
        }
        if (strE.startsWith("omx.google.") || strE.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((strE.startsWith("omx.sec.") && strE.contains(".sw.")) || strE.equals("omx.qcom.video.decoder.hevcswvdec") || strE.startsWith("c2.android.") || strE.startsWith("c2.google.")) {
            return true;
        }
        return (strE.startsWith("omx.") || strE.startsWith("c2.")) ? false : true;
    }

    public static boolean G(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isSoftwareOnly();
    }

    public static boolean H(MediaCodecInfo mediaCodecInfo) {
        if (blb.a >= 29) {
            return I(mediaCodecInfo);
        }
        String strE = ui.e(mediaCodecInfo.getName());
        return (strE.startsWith("omx.google.") || strE.startsWith("c2.android.") || strE.startsWith("c2.google.")) ? false : true;
    }

    public static boolean I(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isVendor();
    }

    public static int J(com.google.android.exoplayer2.mediacodec.d dVar) {
        String str = dVar.a;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (blb.a >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    public static int K(com.google.android.exoplayer2.mediacodec.d dVar) {
        return dVar.a.startsWith("OMX.google") ? 1 : 0;
    }

    public static int L(k kVar, com.google.android.exoplayer2.mediacodec.d dVar) {
        try {
            return dVar.m(kVar) ? 1 : 0;
        } catch (DecoderQueryException unused) {
            return -1;
        }
    }

    public static int M(f fVar, Object obj, Object obj2) {
        return fVar.getScore(obj2) - fVar.getScore(obj);
    }

    public static int N() {
        if (c == -1) {
            int iMax = 0;
            com.google.android.exoplayer2.mediacodec.d dVarR = r("video/avc", false, false);
            if (dVarR != null) {
                MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrG = dVarR.g();
                int length = codecProfileLevelArrG.length;
                int iMax2 = 0;
                while (iMax < length) {
                    iMax2 = Math.max(h(codecProfileLevelArrG[iMax].level), iMax2);
                    iMax++;
                }
                iMax = Math.max(iMax2, blb.a >= 21 ? 345600 : 172800);
            }
            c = iMax;
        }
        return c;
    }

    public static int O(int i) {
        int i2 = 17;
        if (i != 17) {
            i2 = 20;
            if (i != 20) {
                i2 = 23;
                if (i != 23) {
                    i2 = 29;
                    if (i != 29) {
                        i2 = 39;
                        if (i != 39) {
                            i2 = 42;
                            if (i != 42) {
                                switch (i) {
                                    case 1:
                                        return 1;
                                    case 2:
                                        return 2;
                                    case 3:
                                        return 3;
                                    case 4:
                                        return 4;
                                    case 5:
                                        return 5;
                                    case 6:
                                        return 6;
                                    default:
                                        return -1;
                                }
                            }
                        }
                    }
                }
            }
        }
        return i2;
    }

    public static void P(List list, final f fVar) {
        Collections.sort(list, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return MediaCodecUtil.M(fVar, obj, obj2);
            }
        });
    }

    public static int Q(int i) {
        if (i == 10) {
            return 1;
        }
        if (i == 11) {
            return 2;
        }
        if (i == 20) {
            return 4;
        }
        if (i == 21) {
            return 8;
        }
        if (i == 30) {
            return 16;
        }
        if (i == 31) {
            return 32;
        }
        if (i == 40) {
            return 64;
        }
        if (i == 41) {
            return 128;
        }
        if (i == 50) {
            return 256;
        }
        if (i == 51) {
            return 512;
        }
        switch (i) {
            case 60:
                return 2048;
            case 61:
                return 4096;
            case 62:
                return 8192;
            default:
                return -1;
        }
    }

    public static int R(int i) {
        if (i == 0) {
            return 1;
        }
        if (i == 1) {
            return 2;
        }
        if (i != 2) {
            return i != 3 ? -1 : 8;
        }
        return 4;
    }

    public static void e(String str, List list) {
        if ("audio/raw".equals(str)) {
            if (blb.a < 26 && blb.b.equals("R9") && list.size() == 1 && ((com.google.android.exoplayer2.mediacodec.d) list.get(0)).a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                list.add(com.google.android.exoplayer2.mediacodec.d.C("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false, false));
            }
            P(list, new f() {
                @Override
                public final int getScore(Object obj) {
                    return MediaCodecUtil.J((d) obj);
                }
            });
        }
        int i = blb.a;
        if (i < 21 && list.size() > 1) {
            String str2 = ((com.google.android.exoplayer2.mediacodec.d) list.get(0)).a;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                P(list, new f() {
                    @Override
                    public final int getScore(Object obj) {
                        return MediaCodecUtil.K((d) obj);
                    }
                });
            }
        }
        if (i >= 32 || list.size() <= 1 || !"OMX.qti.audio.decoder.flac".equals(((com.google.android.exoplayer2.mediacodec.d) list.get(0)).a)) {
            return;
        }
        list.add((com.google.android.exoplayer2.mediacodec.d) list.remove(0));
    }

    public static int f(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case 8:
                return 256;
            case 9:
                return 512;
            case 10:
                return 1024;
            case 11:
                return 2048;
            case 12:
                return 4096;
            case 13:
                return 8192;
            case 14:
                return 16384;
            case 15:
                return 32768;
            case 16:
                return 65536;
            case 17:
                return 131072;
            case 18:
                return 262144;
            case 19:
                return 524288;
            case 20:
                return 1048576;
            case 21:
                return 2097152;
            case 22:
                return 4194304;
            case 23:
                return 8388608;
            default:
                return -1;
        }
    }

    public static int g(int i) {
        switch (i) {
            case 10:
                return 1;
            case 11:
                return 4;
            case 12:
                return 8;
            case 13:
                return 16;
            default:
                switch (i) {
                    case 20:
                        return 32;
                    case 21:
                        return 64;
                    case 22:
                        return 128;
                    default:
                        switch (i) {
                            case 30:
                                return 256;
                            case 31:
                                return 512;
                            case 32:
                                return 1024;
                            default:
                                switch (i) {
                                    case 40:
                                        return 2048;
                                    case 41:
                                        return 4096;
                                    case 42:
                                        return 8192;
                                    default:
                                        switch (i) {
                                            case 50:
                                                return 16384;
                                            case 51:
                                                return 32768;
                                            case 52:
                                                return 65536;
                                            default:
                                                return -1;
                                        }
                                }
                        }
                }
        }
    }

    public static int h(int i) {
        if (i == 1 || i == 2) {
            return 25344;
        }
        switch (i) {
            case 8:
            case 16:
            case 32:
                return 101376;
            case 64:
                return 202752;
            case 128:
            case 256:
                return 414720;
            case 512:
                return 921600;
            case 1024:
                return 1310720;
            case 2048:
            case 4096:
                return 2097152;
            case 8192:
                return 2228224;
            case 16384:
                return 5652480;
            case 32768:
            case 65536:
                return 9437184;
            case 131072:
            case 262144:
            case 524288:
                return 35651584;
            default:
                return -1;
        }
    }

    public static int i(int i) {
        if (i == 66) {
            return 1;
        }
        if (i == 77) {
            return 2;
        }
        if (i == 88) {
            return 4;
        }
        if (i == 100) {
            return 8;
        }
        if (i == 110) {
            return 16;
        }
        if (i != 122) {
            return i != 244 ? -1 : 64;
        }
        return 32;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static Integer j(String str) {
        if (str == null) {
            return null;
        }
        byte b2 = -1;
        switch (str.hashCode()) {
            case 1537:
                if (str.equals("01")) {
                    b2 = 0;
                }
                break;
            case 1538:
                if (str.equals("02")) {
                    b2 = 1;
                }
                break;
            case 1539:
                if (str.equals("03")) {
                    b2 = 2;
                }
                break;
            case 1540:
                if (str.equals("04")) {
                    b2 = 3;
                }
                break;
            case 1541:
                if (str.equals("05")) {
                    b2 = 4;
                }
                break;
            case 1542:
                if (str.equals("06")) {
                    b2 = 5;
                }
                break;
            case 1543:
                if (str.equals("07")) {
                    b2 = 6;
                }
                break;
            case 1544:
                if (str.equals("08")) {
                    b2 = 7;
                }
                break;
            case 1545:
                if (str.equals("09")) {
                    b2 = 8;
                }
                break;
            case 1567:
                if (str.equals("10")) {
                    b2 = 9;
                }
                break;
            case 1568:
                if (str.equals("11")) {
                    b2 = 10;
                }
                break;
            case 1569:
                if (str.equals("12")) {
                    b2 = ByteCode.T_LONG;
                }
                break;
            case 1570:
                if (str.equals("13")) {
                    b2 = 12;
                }
                break;
        }
        switch (b2) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case 8:
                return 256;
            case 9:
                return 512;
            case 10:
                return 1024;
            case 11:
                return 2048;
            case 12:
                return 4096;
            default:
                return null;
        }
    }

    public static Integer k(String str) {
        if (str == null) {
            return null;
        }
        switch (str) {
            case "00":
                return 1;
            case "01":
                return 2;
            case "02":
                return 4;
            case "03":
                return 8;
            case "04":
                return 16;
            case "05":
                return 32;
            case "06":
                return 64;
            case "07":
                return 128;
            case "08":
                return 256;
            case "09":
                return 512;
            default:
                return null;
        }
    }

    public static Pair l(String str, String[] strArr) {
        int iO;
        if (strArr.length != 3) {
            op5.i("MediaCodecUtil", "Ignoring malformed MP4A codec string: " + str);
            return null;
        }
        try {
            if ("audio/mp4a-latm".equals(qp6.c(Integer.parseInt(strArr[1], 16))) && (iO = O(Integer.parseInt(strArr[2]))) != -1) {
                return new Pair(Integer.valueOf(iO), 0);
            }
        } catch (NumberFormatException unused) {
            op5.i("MediaCodecUtil", "Ignoring malformed MP4A codec string: " + str);
        }
        return null;
    }

    public static String m(k kVar) {
        Pair pairQ;
        if (MimeTypes.AUDIO_E_AC3_JOC.equals(kVar.m)) {
            return "audio/eac3";
        }
        if (!"video/dolby-vision".equals(kVar.m) || (pairQ = q(kVar)) == null) {
            return null;
        }
        int iIntValue = ((Integer) pairQ.first).intValue();
        if (iIntValue == 16 || iIntValue == 256) {
            return "video/hevc";
        }
        if (iIntValue == 512) {
            return "video/avc";
        }
        return null;
    }

    public static Pair n(String str, String[] strArr, v81 v81Var) {
        int i;
        if (strArr.length < 4) {
            op5.i("MediaCodecUtil", "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
        int i2 = 1;
        try {
            int i3 = Integer.parseInt(strArr[1]);
            int i4 = Integer.parseInt(strArr[2].substring(0, 2));
            int i5 = Integer.parseInt(strArr[3]);
            if (i3 != 0) {
                op5.i("MediaCodecUtil", "Unknown AV1 profile: " + i3);
                return null;
            }
            if (i5 != 8 && i5 != 10) {
                op5.i("MediaCodecUtil", "Unknown AV1 bit depth: " + i5);
                return null;
            }
            if (i5 != 8) {
                i2 = (v81Var == null || !(v81Var.e != null || (i = v81Var.d) == 7 || i == 6)) ? 2 : 4096;
            }
            int iF = f(i4);
            if (iF != -1) {
                return new Pair(Integer.valueOf(i2), Integer.valueOf(iF));
            }
            op5.i("MediaCodecUtil", "Unknown AV1 level: " + i4);
            return null;
        } catch (NumberFormatException unused) {
            op5.i("MediaCodecUtil", "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
    }

    public static Pair o(String str, String[] strArr) {
        int i;
        int i2;
        if (strArr.length < 2) {
            op5.i("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                i2 = Integer.parseInt(strArr[1].substring(0, 2), 16);
                i = Integer.parseInt(strArr[1].substring(4), 16);
            } else {
                if (strArr.length < 3) {
                    op5.i("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
                    return null;
                }
                int i3 = Integer.parseInt(strArr[1]);
                i = Integer.parseInt(strArr[2]);
                i2 = i3;
            }
            int i4 = i(i2);
            if (i4 == -1) {
                op5.i("MediaCodecUtil", "Unknown AVC profile: " + i2);
                return null;
            }
            int iG = g(i);
            if (iG != -1) {
                return new Pair(Integer.valueOf(i4), Integer.valueOf(iG));
            }
            op5.i("MediaCodecUtil", "Unknown AVC level: " + i);
            return null;
        } catch (NumberFormatException unused) {
            op5.i("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
    }

    public static String p(MediaCodecInfo mediaCodecInfo, String str, String str2) {
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals("video/dolby-vision")) {
            if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                return "video/hevcdv";
            }
            if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                return "video/dv_hevc";
            }
            return null;
        }
        if (str2.equals(MimeTypes.AUDIO_ALAC) && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        }
        if (str2.equals("audio/flac") && "OMX.lge.flac.decoder".equals(str)) {
            return "audio/x-lg-flac";
        }
        if (str2.equals("audio/ac3") && "OMX.lge.ac3.decoder".equals(str)) {
            return "audio/lg-ac3";
        }
        return null;
    }

    public static Pair q(k kVar) {
        byte b2 = 0;
        String str = kVar.j;
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split("\\.");
        if ("video/dolby-vision".equals(kVar.m)) {
            return w(kVar.j, strArrSplit);
        }
        String str2 = strArrSplit[0];
        str2.hashCode();
        switch (str2.hashCode()) {
            case 3004662:
                if (!str2.equals("av01")) {
                    b2 = -1;
                }
                break;
            case 3006243:
                b2 = !str2.equals("avc1") ? (byte) -1 : (byte) 1;
                break;
            case 3006244:
                b2 = !str2.equals("avc2") ? (byte) -1 : (byte) 2;
                break;
            case 3199032:
                b2 = !str2.equals("hev1") ? (byte) -1 : (byte) 3;
                break;
            case 3214780:
                b2 = !str2.equals("hvc1") ? (byte) -1 : (byte) 4;
                break;
            case 3356560:
                b2 = !str2.equals("mp4a") ? (byte) -1 : (byte) 5;
                break;
            case 3624515:
                b2 = !str2.equals("vp09") ? (byte) -1 : (byte) 6;
                break;
            default:
                b2 = -1;
                break;
        }
        switch (b2) {
            case 0:
                return n(kVar.j, strArrSplit, kVar.y);
            case 1:
            case 2:
                return o(kVar.j, strArrSplit);
            case 3:
            case 4:
                return x(kVar.j, strArrSplit);
            case 5:
                return l(kVar.j, strArrSplit);
            case 6:
                return y(kVar.j, strArrSplit);
            default:
                return null;
        }
    }

    public static com.google.android.exoplayer2.mediacodec.d r(String str, boolean z, boolean z2) {
        List listS = s(str, z, z2);
        if (listS.isEmpty()) {
            return null;
        }
        return (com.google.android.exoplayer2.mediacodec.d) listS.get(0);
    }

    public static synchronized List s(String str, boolean z, boolean z2) {
        try {
            b bVar = new b(str, z, z2);
            HashMap map = b;
            List list = (List) map.get(bVar);
            if (list != null) {
                return list;
            }
            int i = blb.a;
            ArrayList arrayListT = t(bVar, i >= 21 ? new e(z, z2) : new d());
            if (z && arrayListT.isEmpty() && 21 <= i && i <= 23) {
                arrayListT = t(bVar, new d());
                if (!arrayListT.isEmpty()) {
                    op5.i("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + ((com.google.android.exoplayer2.mediacodec.d) arrayListT.get(0)).a);
                }
            }
            e(str, arrayListT);
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) arrayListT);
            map.put(bVar, immutableListCopyOf);
            return immutableListCopyOf;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x008f  */
    /* JADX WARN: Code duplicated, block: B:58:0x0106 A[Catch: Exception -> 0x012f, TRY_ENTER, TryCatch #0 {Exception -> 0x012f, blocks: (B:3:0x0009, B:5:0x001c, B:61:0x0125, B:8:0x002e, B:11:0x0039, B:55:0x00fe, B:58:0x0106, B:60:0x010c, B:64:0x0131, B:65:0x0154), top: B:69:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0026  */
    /* JADX WARN: Code duplicated, block: B:83:0x0131 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    public static ArrayList t(b bVar, c cVar) throws DecoderQueryException {
        String strP;
        String str;
        int i;
        boolean z;
        int i2;
        b bVar2 = bVar;
        try {
            ArrayList arrayList = new ArrayList();
            String str2 = bVar2.a;
            int codecCount = cVar.getCodecCount();
            boolean zSecureDecodersExplicit = cVar.secureDecodersExplicit();
            int i3 = 0;
            while (i3 < codecCount) {
                MediaCodecInfo codecInfoAt = cVar.getCodecInfoAt(i3);
                if (A(codecInfoAt)) {
                    i = i3;
                    z = zSecureDecodersExplicit;
                    i2 = codecCount;
                } else {
                    String name = codecInfoAt.getName();
                    if (C(codecInfoAt, name, zSecureDecodersExplicit, str2) && (strP = p(codecInfoAt, name, str2)) != null) {
                        try {
                            MediaCodecInfo.CodecCapabilities capabilitiesForType = codecInfoAt.getCapabilitiesForType(strP);
                            boolean zIsFeatureSupported = cVar.isFeatureSupported("tunneled-playback", strP, capabilitiesForType);
                            boolean zIsFeatureRequired = cVar.isFeatureRequired("tunneled-playback", strP, capabilitiesForType);
                            boolean z2 = bVar2.c;
                            if ((z2 || !zIsFeatureRequired) && (!z2 || zIsFeatureSupported)) {
                                boolean zIsFeatureSupported2 = cVar.isFeatureSupported("secure-playback", strP, capabilitiesForType);
                                boolean zIsFeatureRequired2 = cVar.isFeatureRequired("secure-playback", strP, capabilitiesForType);
                                boolean z3 = bVar2.b;
                                if ((z3 || !zIsFeatureRequired2) && (!z3 || zIsFeatureSupported2)) {
                                    boolean zD = D(codecInfoAt, str2);
                                    boolean zF = F(codecInfoAt, str2);
                                    boolean zH = H(codecInfoAt);
                                    if (zSecureDecodersExplicit && bVar2.b == zIsFeatureSupported2) {
                                        i = i3;
                                        z = zSecureDecodersExplicit;
                                        i2 = codecCount;
                                        arrayList.add(com.google.android.exoplayer2.mediacodec.d.C(name, str2, strP, capabilitiesForType, zD, zF, zH, false, false));
                                    } else {
                                        if (!zSecureDecodersExplicit) {
                                            try {
                                                if (!bVar2.b) {
                                                    i = i3;
                                                    z = zSecureDecodersExplicit;
                                                    i2 = codecCount;
                                                    try {
                                                        arrayList.add(com.google.android.exoplayer2.mediacodec.d.C(name, str2, strP, capabilitiesForType, zD, zF, zH, false, false));
                                                    } catch (Exception e2) {
                                                        e = e2;
                                                        str = name;
                                                        if (blb.a <= 23) {
                                                        }
                                                        op5.c("MediaCodecUtil", "Failed to query codec " + str + " (" + strP + ")");
                                                        throw e;
                                                    }
                                                }
                                            } catch (Exception e3) {
                                                e = e3;
                                                i = i3;
                                                z = zSecureDecodersExplicit;
                                                i2 = codecCount;
                                                str = name;
                                                if (blb.a <= 23) {
                                                }
                                                op5.c("MediaCodecUtil", "Failed to query codec " + str + " (" + strP + ")");
                                                throw e;
                                            }
                                        }
                                        strP = strP;
                                        i = i3;
                                        z = zSecureDecodersExplicit;
                                        i2 = codecCount;
                                        if (!z && zIsFeatureSupported2) {
                                            StringBuilder sb = new StringBuilder();
                                            try {
                                                sb.append(name);
                                                sb.append(".secure");
                                                str = name;
                                                try {
                                                    arrayList.add(com.google.android.exoplayer2.mediacodec.d.C(sb.toString(), str2, strP, capabilitiesForType, zD, zF, zH, false, true));
                                                    return arrayList;
                                                } catch (Exception e4) {
                                                    e = e4;
                                                    if (blb.a <= 23 || arrayList.isEmpty()) {
                                                        op5.c("MediaCodecUtil", "Failed to query codec " + str + " (" + strP + ")");
                                                        throw e;
                                                    }
                                                    op5.c("MediaCodecUtil", "Skipping codec " + str + " (failed to query capabilities)");
                                                    i3 = i + 1;
                                                    bVar2 = bVar;
                                                    codecCount = i2;
                                                    zSecureDecodersExplicit = z;
                                                }
                                            } catch (Exception e5) {
                                                e = e5;
                                                str = name;
                                            }
                                        }
                                    }
                                } else {
                                    i = i3;
                                    z = zSecureDecodersExplicit;
                                    i2 = codecCount;
                                }
                            } else {
                                i = i3;
                                z = zSecureDecodersExplicit;
                                i2 = codecCount;
                            }
                        } catch (Exception e6) {
                            e = e6;
                            strP = strP;
                            str = name;
                            i = i3;
                            z = zSecureDecodersExplicit;
                            i2 = codecCount;
                        }
                    } else {
                        i = i3;
                        z = zSecureDecodersExplicit;
                        i2 = codecCount;
                    }
                }
                i3 = i + 1;
                bVar2 = bVar;
                codecCount = i2;
                zSecureDecodersExplicit = z;
            }
            return arrayList;
        } catch (Exception e7) {
            throw new DecoderQueryException(e7);
        }
    }

    public static List u(List list, final k kVar) {
        ArrayList arrayList = new ArrayList(list);
        P(arrayList, new f() {
            @Override
            public final int getScore(Object obj) {
                return MediaCodecUtil.L(kVar, (d) obj);
            }
        });
        return arrayList;
    }

    public static com.google.android.exoplayer2.mediacodec.d v() {
        return r("audio/raw", false, false);
    }

    public static Pair w(String str, String[] strArr) {
        if (strArr.length < 3) {
            op5.i("MediaCodecUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        Matcher matcher = a.matcher(strArr[1]);
        if (!matcher.matches()) {
            op5.i("MediaCodecUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        String strGroup = matcher.group(1);
        Integer numK = k(strGroup);
        if (numK == null) {
            op5.i("MediaCodecUtil", "Unknown Dolby Vision profile string: " + strGroup);
            return null;
        }
        String str2 = strArr[2];
        Integer numJ = j(str2);
        if (numJ != null) {
            return new Pair(numK, numJ);
        }
        op5.i("MediaCodecUtil", "Unknown Dolby Vision level string: " + str2);
        return null;
    }

    public static Pair x(String str, String[] strArr) {
        if (strArr.length < 4) {
            op5.i("MediaCodecUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        int i = 1;
        Matcher matcher = a.matcher(strArr[1]);
        if (!matcher.matches()) {
            op5.i("MediaCodecUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        String strGroup = matcher.group(1);
        if (!"1".equals(strGroup)) {
            if (!"2".equals(strGroup)) {
                op5.i("MediaCodecUtil", "Unknown HEVC profile string: " + strGroup);
                return null;
            }
            i = 2;
        }
        String str2 = strArr[3];
        Integer numZ = z(str2);
        if (numZ != null) {
            return new Pair(Integer.valueOf(i), numZ);
        }
        op5.i("MediaCodecUtil", "Unknown HEVC level string: " + str2);
        return null;
    }

    public static Pair y(String str, String[] strArr) {
        if (strArr.length < 3) {
            op5.i("MediaCodecUtil", "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
        try {
            int i = Integer.parseInt(strArr[1]);
            int i2 = Integer.parseInt(strArr[2]);
            int iR = R(i);
            if (iR == -1) {
                op5.i("MediaCodecUtil", "Unknown VP9 profile: " + i);
                return null;
            }
            int iQ = Q(i2);
            if (iQ != -1) {
                return new Pair(Integer.valueOf(iR), Integer.valueOf(iQ));
            }
            op5.i("MediaCodecUtil", "Unknown VP9 level: " + i2);
            return null;
        } catch (NumberFormatException unused) {
            op5.i("MediaCodecUtil", "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static Integer z(String str) {
        if (str == null) {
            return null;
        }
        byte b2 = -1;
        switch (str.hashCode()) {
            case 70821:
                if (str.equals("H30")) {
                    b2 = 0;
                }
                break;
            case 70914:
                if (str.equals("H60")) {
                    b2 = 1;
                }
                break;
            case 70917:
                if (str.equals("H63")) {
                    b2 = 2;
                }
                break;
            case 71007:
                if (str.equals("H90")) {
                    b2 = 3;
                }
                break;
            case 71010:
                if (str.equals("H93")) {
                    b2 = 4;
                }
                break;
            case 74665:
                if (str.equals("L30")) {
                    b2 = 5;
                }
                break;
            case 74758:
                if (str.equals("L60")) {
                    b2 = 6;
                }
                break;
            case 74761:
                if (str.equals("L63")) {
                    b2 = 7;
                }
                break;
            case 74851:
                if (str.equals("L90")) {
                    b2 = 8;
                }
                break;
            case 74854:
                if (str.equals("L93")) {
                    b2 = 9;
                }
                break;
            case 2193639:
                if (str.equals("H120")) {
                    b2 = 10;
                }
                break;
            case 2193642:
                if (str.equals("H123")) {
                    b2 = ByteCode.T_LONG;
                }
                break;
            case 2193732:
                if (str.equals("H150")) {
                    b2 = 12;
                }
                break;
            case 2193735:
                if (str.equals("H153")) {
                    b2 = 13;
                }
                break;
            case 2193738:
                if (str.equals("H156")) {
                    b2 = 14;
                }
                break;
            case 2193825:
                if (str.equals("H180")) {
                    b2 = 15;
                }
                break;
            case 2193828:
                if (str.equals("H183")) {
                    b2 = 16;
                }
                break;
            case 2193831:
                if (str.equals("H186")) {
                    b2 = 17;
                }
                break;
            case 2312803:
                if (str.equals("L120")) {
                    b2 = 18;
                }
                break;
            case 2312806:
                if (str.equals("L123")) {
                    b2 = 19;
                }
                break;
            case 2312896:
                if (str.equals("L150")) {
                    b2 = 20;
                }
                break;
            case 2312899:
                if (str.equals("L153")) {
                    b2 = 21;
                }
                break;
            case 2312902:
                if (str.equals("L156")) {
                    b2 = 22;
                }
                break;
            case 2312989:
                if (str.equals("L180")) {
                    b2 = 23;
                }
                break;
            case 2312992:
                if (str.equals("L183")) {
                    b2 = 24;
                }
                break;
            case 2312995:
                if (str.equals("L186")) {
                    b2 = 25;
                }
                break;
        }
        switch (b2) {
            case 0:
                return 2;
            case 1:
                return 8;
            case 2:
                return 32;
            case 3:
                return 128;
            case 4:
                return 512;
            case 5:
                return 1;
            case 6:
                return 4;
            case 7:
                return 16;
            case 8:
                return 64;
            case 9:
                return 256;
            case 10:
                return 2048;
            case 11:
                return 8192;
            case 12:
                return 32768;
            case 13:
                return 131072;
            case 14:
                return 524288;
            case 15:
                return 2097152;
            case 16:
                return 8388608;
            case 17:
                return 33554432;
            case 18:
                return 1024;
            case 19:
                return 4096;
            case 20:
                return 16384;
            case 21:
                return 65536;
            case 22:
                return 262144;
            case 23:
                return 1048576;
            case 24:
                return 4194304;
            case 25:
                return 16777216;
            default:
                return null;
        }
    }
}
