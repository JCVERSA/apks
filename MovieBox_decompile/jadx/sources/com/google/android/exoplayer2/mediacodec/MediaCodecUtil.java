package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.w;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.mvel2.ast.ASTNode;

public abstract class MediaCodecUtil {

    private static final Pattern f24690a = Pattern.compile("^\\D?(\\d+)$");

    private static final HashMap f24691b = new HashMap();

    private static int f24692c = -1;

    public static class DecoderQueryException extends Exception {
        private DecoderQueryException(Throwable th2) {
            super("Failed to query underlying media codecs", th2);
        }
    }

    private static final class b {

        public final String f24693a;

        public final boolean f24694b;

        public final boolean f24695c;

        public b(String str, boolean z10, boolean z11) {
            this.f24693a = str;
            this.f24694b = z10;
            this.f24695c = z11;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != b.class) {
                return false;
            }
            b bVar = (b) obj;
            return TextUtils.equals(this.f24693a, bVar.f24693a) && this.f24694b == bVar.f24694b && this.f24695c == bVar.f24695c;
        }

        public int hashCode() {
            return ((((this.f24693a.hashCode() + 31) * 31) + (this.f24694b ? 1231 : 1237)) * 31) + (this.f24695c ? 1231 : 1237);
        }
    }

    private interface c {
        boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        int getCodecCount();

        MediaCodecInfo getCodecInfoAt(int i10);

        boolean secureDecodersExplicit();
    }

    private static final class d implements c {
        private d() {
        }

        @Override
        public boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && MimeTypes.VIDEO_H264.equals(str2);
        }

        @Override
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override
        public int getCodecCount() {
            return MediaCodecList.getCodecCount();
        }

        @Override
        public MediaCodecInfo getCodecInfoAt(int i10) {
            return MediaCodecList.getCodecInfoAt(i10);
        }

        @Override
        public boolean secureDecodersExplicit() {
            return false;
        }
    }

    private static final class e implements c {

        private final int f24696a;

        private MediaCodecInfo[] f24697b;

        public e(boolean z10, boolean z11) {
            this.f24696a = (z10 || z11) ? 1 : 0;
        }

        private void c() {
            if (this.f24697b == null) {
                this.f24697b = new MediaCodecList(this.f24696a).getCodecInfos();
            }
        }

        @Override
        public boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override
        public int getCodecCount() {
            c();
            return this.f24697b.length;
        }

        @Override
        public MediaCodecInfo getCodecInfoAt(int i10) {
            c();
            return this.f24697b[i10];
        }

        @Override
        public boolean secureDecodersExplicit() {
            return true;
        }
    }

    interface f {
        int a(Object obj);
    }

    private static boolean A(MediaCodecInfo mediaCodecInfo) {
        return p0.f26854a >= 29 && B(mediaCodecInfo);
    }

    private static boolean B(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isAlias();
    }

    private static boolean C(MediaCodecInfo mediaCodecInfo, String str, boolean z10, String str2) {
        if (mediaCodecInfo.isEncoder() || (!z10 && str.endsWith(".secure"))) {
            return false;
        }
        int i10 = p0.f26854a;
        if (i10 < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
            return false;
        }
        if (i10 < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str)) {
            String str3 = p0.f26855b;
            if ("a70".equals(str3) || ("Xiaomi".equals(p0.f26856c) && str3.startsWith("HM"))) {
                return false;
            }
        }
        if (i10 == 16 && "OMX.qcom.audio.decoder.mp3".equals(str)) {
            String str4 = p0.f26855b;
            if ("dlxu".equals(str4) || "protou".equals(str4) || "ville".equals(str4) || "villeplus".equals(str4) || "villec2".equals(str4) || str4.startsWith("gee") || "C6602".equals(str4) || "C6603".equals(str4) || "C6606".equals(str4) || "C6616".equals(str4) || "L36h".equals(str4) || "SO-02E".equals(str4)) {
                return false;
            }
        }
        if (i10 == 16 && "OMX.qcom.audio.decoder.aac".equals(str)) {
            String str5 = p0.f26855b;
            if ("C1504".equals(str5) || "C1505".equals(str5) || "C1604".equals(str5) || "C1605".equals(str5)) {
                return false;
            }
        }
        if (i10 < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(p0.f26856c))) {
            String str6 = p0.f26855b;
            if (str6.startsWith("zeroflte") || str6.startsWith("zerolte") || str6.startsWith("zenlte") || "SC-05G".equals(str6) || "marinelteatt".equals(str6) || "404SC".equals(str6) || "SC-04G".equals(str6) || "SCV31".equals(str6)) {
                return false;
            }
        }
        if (i10 <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(p0.f26856c)) {
            String str7 = p0.f26855b;
            if (str7.startsWith("d2") || str7.startsWith("serrano") || str7.startsWith("jflte") || str7.startsWith("santos") || str7.startsWith("t0")) {
                return false;
            }
        }
        if (i10 <= 19 && p0.f26855b.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(str)) {
            return false;
        }
        return (i10 <= 23 && MimeTypes.AUDIO_E_AC3_JOC.equals(str2) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)) ? false : true;
    }

    private static boolean D(MediaCodecInfo mediaCodecInfo, String str) {
        return p0.f26854a >= 29 ? E(mediaCodecInfo) : !F(mediaCodecInfo, str);
    }

    private static boolean E(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isHardwareAccelerated();
    }

    private static boolean F(MediaCodecInfo mediaCodecInfo, String str) {
        if (p0.f26854a >= 29) {
            return G(mediaCodecInfo);
        }
        if (w.o(str)) {
            return true;
        }
        String strE = com.google.common.base.a.e(mediaCodecInfo.getName());
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

    private static boolean G(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isSoftwareOnly();
    }

    private static boolean H(MediaCodecInfo mediaCodecInfo) {
        if (p0.f26854a >= 29) {
            return I(mediaCodecInfo);
        }
        String strE = com.google.common.base.a.e(mediaCodecInfo.getName());
        return (strE.startsWith("omx.google.") || strE.startsWith("c2.android.") || strE.startsWith("c2.google.")) ? false : true;
    }

    private static boolean I(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isVendor();
    }

    public static int J(m mVar) {
        String str = mVar.f24759a;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (p0.f26854a >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    public static int K(m mVar) {
        return mVar.f24759a.startsWith("OMX.google") ? 1 : 0;
    }

    public static int L(p1 p1Var, m mVar) {
        try {
            return mVar.m(p1Var) ? 1 : 0;
        } catch (DecoderQueryException unused) {
            return -1;
        }
    }

    public static int M(f fVar, Object obj, Object obj2) {
        return fVar.a(obj2) - fVar.a(obj);
    }

    public static int N() {
        if (f24692c == -1) {
            int iMax = 0;
            m mVarR = r(MimeTypes.VIDEO_H264, false, false);
            if (mVarR != null) {
                MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrG = mVarR.g();
                int length = codecProfileLevelArrG.length;
                int iMax2 = 0;
                while (iMax < length) {
                    iMax2 = Math.max(h(codecProfileLevelArrG[iMax].level), iMax2);
                    iMax++;
                }
                iMax = Math.max(iMax2, p0.f26854a >= 21 ? 345600 : 172800);
            }
            f24692c = iMax;
        }
        return f24692c;
    }

    private static int O(int i10) {
        int i11 = 17;
        if (i10 != 17) {
            i11 = 20;
            if (i10 != 20) {
                i11 = 23;
                if (i10 != 23) {
                    i11 = 29;
                    if (i10 != 29) {
                        i11 = 39;
                        if (i10 != 39) {
                            i11 = 42;
                            if (i10 != 42) {
                                switch (i10) {
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
        return i11;
    }

    private static void P(List list, final f fVar) {
        Collections.sort(list, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return MediaCodecUtil.M(fVar, obj, obj2);
            }
        });
    }

    private static int Q(int i10) {
        if (i10 == 10) {
            return 1;
        }
        if (i10 == 11) {
            return 2;
        }
        if (i10 == 20) {
            return 4;
        }
        if (i10 == 21) {
            return 8;
        }
        if (i10 == 30) {
            return 16;
        }
        if (i10 == 31) {
            return 32;
        }
        if (i10 == 40) {
            return 64;
        }
        if (i10 == 41) {
            return 128;
        }
        if (i10 == 50) {
            return 256;
        }
        if (i10 == 51) {
            return 512;
        }
        switch (i10) {
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

    private static int R(int i10) {
        if (i10 == 0) {
            return 1;
        }
        if (i10 == 1) {
            return 2;
        }
        if (i10 != 2) {
            return i10 != 3 ? -1 : 8;
        }
        return 4;
    }

    private static void e(String str, List list) {
        if (MimeTypes.AUDIO_RAW.equals(str)) {
            if (p0.f26854a < 26 && p0.f26855b.equals("R9") && list.size() == 1 && ((m) list.get(0)).f24759a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                list.add(m.C("OMX.google.raw.decoder", MimeTypes.AUDIO_RAW, MimeTypes.AUDIO_RAW, null, false, true, false, false, false));
            }
            P(list, new f() {
                @Override
                public final int a(Object obj) {
                    return MediaCodecUtil.J((m) obj);
                }
            });
        }
        int i10 = p0.f26854a;
        if (i10 < 21 && list.size() > 1) {
            String str2 = ((m) list.get(0)).f24759a;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                P(list, new f() {
                    @Override
                    public final int a(Object obj) {
                        return MediaCodecUtil.K((m) obj);
                    }
                });
            }
        }
        if (i10 >= 32 || list.size() <= 1 || !"OMX.qti.audio.decoder.flac".equals(((m) list.get(0)).f24759a)) {
            return;
        }
        list.add((m) list.remove(0));
    }

    private static int f(int i10) {
        switch (i10) {
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

    private static int g(int i10) {
        switch (i10) {
            case 10:
                return 1;
            case 11:
                return 4;
            case 12:
                return 8;
            case 13:
                return 16;
            default:
                switch (i10) {
                    case 20:
                        return 32;
                    case 21:
                        return 64;
                    case 22:
                        return 128;
                    default:
                        switch (i10) {
                            case 30:
                                return 256;
                            case TEMPLATE_HTML_SIZE_VALUE:
                                return 512;
                            case 32:
                                return 1024;
                            default:
                                switch (i10) {
                                    case 40:
                                        return 2048;
                                    case 41:
                                        return 4096;
                                    case 42:
                                        return 8192;
                                    default:
                                        switch (i10) {
                                            case 50:
                                                return 16384;
                                            case AD_REWARD_USER_VALUE:
                                                return 32768;
                                            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                                                return 65536;
                                            default:
                                                return -1;
                                        }
                                }
                        }
                }
        }
    }

    private static int h(int i10) {
        if (i10 == 1 || i10 == 2) {
            return 25344;
        }
        switch (i10) {
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

    private static int i(int i10) {
        if (i10 == 66) {
            return 1;
        }
        if (i10 == 77) {
            return 2;
        }
        if (i10 == 88) {
            return 4;
        }
        if (i10 == 100) {
            return 8;
        }
        if (i10 == 110) {
            return 16;
        }
        if (i10 != 122) {
            return i10 != 244 ? -1 : 64;
        }
        return 32;
    }

    private static Integer j(String str) {
        if (str == null) {
            return null;
        }
        switch (str) {
            case "01":
                return 1;
            case "02":
                return 2;
            case "03":
                return 4;
            case "04":
                return 8;
            case "05":
                return 16;
            case "06":
                return 32;
            case "07":
                return 64;
            case "08":
                return 128;
            case "09":
                return 256;
            case "10":
                return 512;
            case "11":
                return 1024;
            case "12":
                return 2048;
            case "13":
                return 4096;
            default:
                return null;
        }
    }

    private static Integer k(String str) {
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

    private static Pair l(String str, String[] strArr) {
        int iO;
        if (strArr.length != 3) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed MP4A codec string: " + str);
            return null;
        }
        try {
            if (MimeTypes.AUDIO_AAC.equals(w.h(Integer.parseInt(strArr[1], 16))) && (iO = O(Integer.parseInt(strArr[2]))) != -1) {
                return new Pair(Integer.valueOf(iO), 0);
            }
        } catch (NumberFormatException unused) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed MP4A codec string: " + str);
        }
        return null;
    }

    public static String m(p1 p1Var) {
        Pair pairQ;
        if (MimeTypes.AUDIO_E_AC3_JOC.equals(p1Var.f24901l)) {
            return MimeTypes.AUDIO_E_AC3;
        }
        if (!"video/dolby-vision".equals(p1Var.f24901l) || (pairQ = q(p1Var)) == null) {
            return null;
        }
        int iIntValue = ((Integer) pairQ.first).intValue();
        if (iIntValue == 16 || iIntValue == 256) {
            return MimeTypes.VIDEO_H265;
        }
        if (iIntValue == 512) {
            return MimeTypes.VIDEO_H264;
        }
        return null;
    }

    private static Pair n(String str, String[] strArr, com.google.android.exoplayer2.video.c cVar) {
        int i10;
        if (strArr.length < 4) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
        int i11 = 1;
        try {
            int i12 = Integer.parseInt(strArr[1]);
            int i13 = Integer.parseInt(strArr[2].substring(0, 2));
            int i14 = Integer.parseInt(strArr[3]);
            if (i12 != 0) {
                com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Unknown AV1 profile: " + i12);
                return null;
            }
            if (i14 != 8 && i14 != 10) {
                com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Unknown AV1 bit depth: " + i14);
                return null;
            }
            if (i14 != 8) {
                i11 = (cVar == null || !(cVar.f26960d != null || (i10 = cVar.f26959c) == 7 || i10 == 6)) ? 2 : 4096;
            }
            int iF = f(i13);
            if (iF != -1) {
                return new Pair(Integer.valueOf(i11), Integer.valueOf(iF));
            }
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Unknown AV1 level: " + i13);
            return null;
        } catch (NumberFormatException unused) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
    }

    private static Pair o(String str, String[] strArr) {
        int i10;
        int i11;
        if (strArr.length < 2) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                i11 = Integer.parseInt(strArr[1].substring(0, 2), 16);
                i10 = Integer.parseInt(strArr[1].substring(4), 16);
            } else {
                if (strArr.length < 3) {
                    com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
                    return null;
                }
                int i12 = Integer.parseInt(strArr[1]);
                i10 = Integer.parseInt(strArr[2]);
                i11 = i12;
            }
            int i13 = i(i11);
            if (i13 == -1) {
                com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Unknown AVC profile: " + i11);
                return null;
            }
            int iG = g(i10);
            if (iG != -1) {
                return new Pair(Integer.valueOf(i13), Integer.valueOf(iG));
            }
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Unknown AVC level: " + i10);
            return null;
        } catch (NumberFormatException unused) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
    }

    private static String p(MediaCodecInfo mediaCodecInfo, String str, String str2) {
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
        if (str2.equals(MimeTypes.AUDIO_FLAC) && "OMX.lge.flac.decoder".equals(str)) {
            return "audio/x-lg-flac";
        }
        if (str2.equals(MimeTypes.AUDIO_AC3) && "OMX.lge.ac3.decoder".equals(str)) {
            return "audio/lg-ac3";
        }
        return null;
    }

    public static Pair q(p1 p1Var) {
        byte b10 = 0;
        String str = p1Var.f24898i;
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split("\\.");
        if ("video/dolby-vision".equals(p1Var.f24901l)) {
            return w(p1Var.f24898i, strArrSplit);
        }
        String str2 = strArrSplit[0];
        str2.hashCode();
        switch (str2.hashCode()) {
            case 3004662:
                if (!str2.equals("av01")) {
                    b10 = -1;
                }
                break;
            case 3006243:
                b10 = !str2.equals("avc1") ? (byte) -1 : (byte) 1;
                break;
            case 3006244:
                b10 = !str2.equals("avc2") ? (byte) -1 : (byte) 2;
                break;
            case 3199032:
                b10 = !str2.equals("hev1") ? (byte) -1 : (byte) 3;
                break;
            case 3214780:
                b10 = !str2.equals("hvc1") ? (byte) -1 : (byte) 4;
                break;
            case 3356560:
                b10 = !str2.equals("mp4a") ? (byte) -1 : (byte) 5;
                break;
            case 3624515:
                b10 = !str2.equals("vp09") ? (byte) -1 : (byte) 6;
                break;
            default:
                b10 = -1;
                break;
        }
        switch (b10) {
            case 0:
                return n(p1Var.f24898i, strArrSplit, p1Var.f24913x);
            case 1:
            case 2:
                return o(p1Var.f24898i, strArrSplit);
            case 3:
            case 4:
                return x(p1Var.f24898i, strArrSplit);
            case 5:
                return l(p1Var.f24898i, strArrSplit);
            case 6:
                return y(p1Var.f24898i, strArrSplit);
            default:
                return null;
        }
    }

    public static m r(String str, boolean z10, boolean z11) {
        List listS = s(str, z10, z11);
        if (listS.isEmpty()) {
            return null;
        }
        return (m) listS.get(0);
    }

    public static synchronized List s(String str, boolean z10, boolean z11) {
        try {
            b bVar = new b(str, z10, z11);
            HashMap map = f24691b;
            List list = (List) map.get(bVar);
            if (list != null) {
                return list;
            }
            int i10 = p0.f26854a;
            ArrayList arrayListT = t(bVar, i10 >= 21 ? new e(z10, z11) : new d());
            if (z10 && arrayListT.isEmpty() && 21 <= i10 && i10 <= 23) {
                arrayListT = t(bVar, new d());
                if (!arrayListT.isEmpty()) {
                    com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + ((m) arrayListT.get(0)).f24759a);
                }
            }
            e(str, arrayListT);
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) arrayListT);
            map.put(bVar, immutableListCopyOf);
            return immutableListCopyOf;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x008e  */
    /* JADX WARN: Code duplicated, block: B:58:0x0105 A[Catch: Exception -> 0x012e, TRY_ENTER, TryCatch #1 {Exception -> 0x012e, blocks: (B:3:0x0008, B:5:0x001b, B:61:0x0124, B:8:0x002d, B:11:0x0038, B:55:0x00fd, B:58:0x0105, B:60:0x010b, B:64:0x0130, B:65:0x0153), top: B:71:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0025  */
    /* JADX WARN: Code duplicated, block: B:83:0x0130 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    private static ArrayList t(b bVar, c cVar) throws DecoderQueryException {
        String strP;
        String str;
        int i10;
        boolean z10;
        int i11;
        b bVar2 = bVar;
        try {
            ArrayList arrayList = new ArrayList();
            String str2 = bVar2.f24693a;
            int codecCount = cVar.getCodecCount();
            boolean zSecureDecodersExplicit = cVar.secureDecodersExplicit();
            int i12 = 0;
            while (i12 < codecCount) {
                MediaCodecInfo codecInfoAt = cVar.getCodecInfoAt(i12);
                if (A(codecInfoAt)) {
                    i10 = i12;
                    z10 = zSecureDecodersExplicit;
                    i11 = codecCount;
                } else {
                    String name = codecInfoAt.getName();
                    if (C(codecInfoAt, name, zSecureDecodersExplicit, str2) && (strP = p(codecInfoAt, name, str2)) != null) {
                        try {
                            MediaCodecInfo.CodecCapabilities capabilitiesForType = codecInfoAt.getCapabilitiesForType(strP);
                            boolean zA = cVar.a("tunneled-playback", strP, capabilitiesForType);
                            boolean zB = cVar.b("tunneled-playback", strP, capabilitiesForType);
                            boolean z11 = bVar2.f24695c;
                            if ((z11 || !zB) && (!z11 || zA)) {
                                boolean zA2 = cVar.a("secure-playback", strP, capabilitiesForType);
                                boolean zB2 = cVar.b("secure-playback", strP, capabilitiesForType);
                                boolean z12 = bVar2.f24694b;
                                if ((z12 || !zB2) && (!z12 || zA2)) {
                                    boolean zD = D(codecInfoAt, str2);
                                    boolean zF = F(codecInfoAt, str2);
                                    boolean zH = H(codecInfoAt);
                                    if (zSecureDecodersExplicit && bVar2.f24694b == zA2) {
                                        i10 = i12;
                                        z10 = zSecureDecodersExplicit;
                                        i11 = codecCount;
                                        arrayList.add(m.C(name, str2, strP, capabilitiesForType, zD, zF, zH, false, false));
                                    } else {
                                        if (!zSecureDecodersExplicit) {
                                            try {
                                                if (!bVar2.f24694b) {
                                                    i10 = i12;
                                                    z10 = zSecureDecodersExplicit;
                                                    i11 = codecCount;
                                                    try {
                                                        arrayList.add(m.C(name, str2, strP, capabilitiesForType, zD, zF, zH, false, false));
                                                    } catch (Exception e10) {
                                                        e = e10;
                                                        str = name;
                                                        if (p0.f26854a <= 23) {
                                                        }
                                                        com.google.android.exoplayer2.util.s.c("MediaCodecUtil", "Failed to query codec " + str + " (" + strP + ")");
                                                        throw e;
                                                    }
                                                }
                                            } catch (Exception e11) {
                                                e = e11;
                                                i10 = i12;
                                                z10 = zSecureDecodersExplicit;
                                                i11 = codecCount;
                                                str = name;
                                                if (p0.f26854a <= 23 || arrayList.isEmpty()) {
                                                    com.google.android.exoplayer2.util.s.c("MediaCodecUtil", "Failed to query codec " + str + " (" + strP + ")");
                                                    throw e;
                                                }
                                                com.google.android.exoplayer2.util.s.c("MediaCodecUtil", "Skipping codec " + str + " (failed to query capabilities)");
                                                i12 = i10 + 1;
                                                bVar2 = bVar;
                                                codecCount = i11;
                                                zSecureDecodersExplicit = z10;
                                            }
                                        }
                                        strP = strP;
                                        i10 = i12;
                                        z10 = zSecureDecodersExplicit;
                                        i11 = codecCount;
                                        if (!z10 && zA2) {
                                            StringBuilder sb2 = new StringBuilder();
                                            try {
                                                sb2.append(name);
                                                sb2.append(".secure");
                                                str = name;
                                                try {
                                                    arrayList.add(m.C(sb2.toString(), str2, strP, capabilitiesForType, zD, zF, zH, false, true));
                                                    return arrayList;
                                                } catch (Exception e12) {
                                                    e = e12;
                                                    if (p0.f26854a <= 23) {
                                                    }
                                                    com.google.android.exoplayer2.util.s.c("MediaCodecUtil", "Failed to query codec " + str + " (" + strP + ")");
                                                    throw e;
                                                }
                                            } catch (Exception e13) {
                                                e = e13;
                                                str = name;
                                            }
                                        }
                                    }
                                } else {
                                    i10 = i12;
                                    z10 = zSecureDecodersExplicit;
                                    i11 = codecCount;
                                }
                            } else {
                                i10 = i12;
                                z10 = zSecureDecodersExplicit;
                                i11 = codecCount;
                            }
                        } catch (Exception e14) {
                            e = e14;
                            strP = strP;
                            str = name;
                            i10 = i12;
                            z10 = zSecureDecodersExplicit;
                            i11 = codecCount;
                        }
                    } else {
                        i10 = i12;
                        z10 = zSecureDecodersExplicit;
                        i11 = codecCount;
                    }
                }
                i12 = i10 + 1;
                bVar2 = bVar;
                codecCount = i11;
                zSecureDecodersExplicit = z10;
            }
            return arrayList;
        } catch (Exception e15) {
            throw new DecoderQueryException(e15);
        }
    }

    public static List u(List list, final p1 p1Var) {
        ArrayList arrayList = new ArrayList(list);
        P(arrayList, new f() {
            @Override
            public final int a(Object obj) {
                return MediaCodecUtil.L(p1Var, (m) obj);
            }
        });
        return arrayList;
    }

    public static m v() {
        return r(MimeTypes.AUDIO_RAW, false, false);
    }

    private static Pair w(String str, String[] strArr) {
        if (strArr.length < 3) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        Matcher matcher = f24690a.matcher(strArr[1]);
        if (!matcher.matches()) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        String strGroup = matcher.group(1);
        Integer numK = k(strGroup);
        if (numK == null) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Unknown Dolby Vision profile string: " + strGroup);
            return null;
        }
        String str2 = strArr[2];
        Integer numJ = j(str2);
        if (numJ != null) {
            return new Pair(numK, numJ);
        }
        com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Unknown Dolby Vision level string: " + str2);
        return null;
    }

    private static Pair x(String str, String[] strArr) {
        if (strArr.length < 4) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        int i10 = 1;
        Matcher matcher = f24690a.matcher(strArr[1]);
        if (!matcher.matches()) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        String strGroup = matcher.group(1);
        if (!"1".equals(strGroup)) {
            if (!"2".equals(strGroup)) {
                com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Unknown HEVC profile string: " + strGroup);
                return null;
            }
            i10 = 2;
        }
        String str2 = strArr[3];
        Integer numZ = z(str2);
        if (numZ != null) {
            return new Pair(Integer.valueOf(i10), numZ);
        }
        com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Unknown HEVC level string: " + str2);
        return null;
    }

    private static Pair y(String str, String[] strArr) {
        if (strArr.length < 3) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
        try {
            int i10 = Integer.parseInt(strArr[1]);
            int i11 = Integer.parseInt(strArr[2]);
            int iR = R(i10);
            if (iR == -1) {
                com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Unknown VP9 profile: " + i10);
                return null;
            }
            int iQ = Q(i11);
            if (iQ != -1) {
                return new Pair(Integer.valueOf(iR), Integer.valueOf(iQ));
            }
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Unknown VP9 level: " + i11);
            return null;
        } catch (NumberFormatException unused) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
    }

    private static Integer z(String str) {
        if (str == null) {
            return null;
        }
        switch (str) {
            case "H30":
                return 2;
            case "H60":
                return 8;
            case "H63":
                return 32;
            case "H90":
                return 128;
            case "H93":
                return 512;
            case "L30":
                return 1;
            case "L60":
                return 4;
            case "L63":
                return 16;
            case "L90":
                return 64;
            case "L93":
                return 256;
            case "H120":
                return 2048;
            case "H123":
                return 8192;
            case "H150":
                return 32768;
            case "H153":
                return 131072;
            case "H156":
                return 524288;
            case "H180":
                return 2097152;
            case "H183":
                return 8388608;
            case "H186":
                return Integer.valueOf(ASTNode.PCTX_STORED);
            case "L120":
                return 1024;
            case "L123":
                return 4096;
            case "L150":
                return 16384;
            case "L153":
                return 65536;
            case "L156":
                return 262144;
            case "L180":
                return 1048576;
            case "L183":
                return 4194304;
            case "L186":
                return 16777216;
            default:
                return null;
        }
    }
}
