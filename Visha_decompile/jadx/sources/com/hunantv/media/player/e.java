package com.hunantv.media.player;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.os.Build;
import android.text.TextUtils;
import androidx.room.RoomMasterTable;
import com.hunantv.media.drm.IDrmManager;
import com.hunantv.media.player.pragma.DebugLog;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

public class e {
    public static int a = 1000;
    public static int b = 800;
    public static int c = 700;
    public static int d = 600;
    public static int e = 300;
    public static int f = 200;
    public static int g = 100;
    public static int h = 0;
    private static String m = "video/avc";
    private static String n = "video/hevc";
    private static String o = "video/mp4v-es";
    private static int p = 512;
    private static int q = 2048;
    private static final int r = 512 | 66;
    private static final int s = 2048 | 110;
    private static final int t = 2048 | 122;
    private static final int u = 2048 | 244;
    private static Map<String, Integer> v;
    public MediaCodecInfo i;
    public String k;
    public int j = 0;
    public boolean l = false;

    @TargetApi(16)
    public static e a(MediaCodecInfo mediaCodecInfo, String str, int i, int i2) {
        String str2;
        StringBuilder sb;
        int iIntValue;
        if (mediaCodecInfo == null || TextUtils.isEmpty(str)) {
            str2 = "chodison ImgoMediaCodecInfo setupCandidate noaccess";
        } else {
            String name = mediaCodecInfo.getName();
            if (TextUtils.isEmpty(name)) {
                str2 = "chodison codecInfo.getName is empty";
            } else {
                int iJ = j(str, i);
                DebugLog.i("ImgoMediaCodecInfo", "chodison ff_profile:" + i + ",profile:" + iJ);
                Locale locale = Locale.US;
                DebugLog.i("ImgoMediaCodecInfo", String.format(locale, "chodison codecname:%s,current profile:%s,current level:%d", mediaCodecInfo.getName(), d(str, iJ), Integer.valueOf(i2)));
                if (iJ != 0) {
                    String lowerCase = name.toLowerCase(locale);
                    if (!lowerCase.startsWith("omx.") && !lowerCase.startsWith("c2.")) {
                        iIntValue = g;
                    } else if (lowerCase.startsWith("omx.pv") || lowerCase.contains("sw") || lowerCase.startsWith("omx.google.") || lowerCase.startsWith("omx.ffmpeg.") || lowerCase.startsWith("omx.k3.ffmpeg.") || lowerCase.startsWith("omx.avcodec.")) {
                        iIntValue = f;
                    } else if (lowerCase.startsWith("omx.ittiam.")) {
                        iIntValue = h;
                    } else {
                        if (!lowerCase.startsWith("omx.mtk.")) {
                            Integer num = a().get(lowerCase);
                            boolean zA = a(mediaCodecInfo, str, iJ, num != null);
                            if (num != null) {
                                iIntValue = num.intValue();
                                if (!zA) {
                                    DebugLog.e("ImgoMediaCodecInfo", "chodison knownRank checkProfileSupported failed, rank set " + f);
                                    iIntValue = f;
                                }
                            } else if (zA) {
                                sb = new StringBuilder();
                                sb.append("chodison no knownRank checkProfileSupported success, rank set ");
                                sb.append(c);
                                DebugLog.i("ImgoMediaCodecInfo", sb.toString());
                                iIntValue = c;
                            } else {
                                sb = new StringBuilder();
                                sb.append("chodison no knownRank checkProfileSupported failed, rank set ");
                                sb.append(d);
                                DebugLog.e("ImgoMediaCodecInfo", sb.toString());
                                iIntValue = d;
                            }
                            Build.MODEL.startsWith("GT-N710");
                        } else if (a(mediaCodecInfo, str, iJ, true)) {
                            iIntValue = b;
                        } else {
                            DebugLog.e("ImgoMediaCodecInfo", "chodison MTK checkProfileSupported failed, rank set " + h);
                            iIntValue = h;
                        }
                    }
                    e eVar = new e();
                    eVar.i = mediaCodecInfo;
                    eVar.j = iIntValue;
                    eVar.k = str;
                    eVar.l = a(mediaCodecInfo.getCapabilitiesForType(str));
                    return eVar;
                }
                str2 = "chodison profile" + iJ;
            }
        }
        DebugLog.e("ImgoMediaCodecInfo", str2);
        return null;
    }

    @TargetApi(24)
    public static String b(String str, int i) {
        if (i == 1) {
            return "HEVC Main";
        }
        if (i != 2) {
            return i != 4096 ? "HEVC Unknown 24" : "HEVC Main10 HDR10";
        }
        return "HEVC Main10";
    }

    @TargetApi(29)
    public static String c(String str, int i) {
        if (i == 1) {
            return "HEVC Main";
        }
        if (i == 2) {
            return "HEVC Main10";
        }
        if (i != 4096) {
            return i != 8192 ? "HEVC Unknown 29" : "HEVC Main10 HDR10 Plus";
        }
        return "HEVC Main10 HDR10";
    }

    public static String d(String str, int i) {
        if (str.equalsIgnoreCase(m)) {
            if (i == 1) {
                return "AVC Baseline";
            }
            if (i == 2) {
                return "AVC Main";
            }
            if (i == 4) {
                return "AVC Extends";
            }
            if (i == 8) {
                return "AVC High";
            }
            if (i == 16) {
                return "AVC High10";
            }
            if (i != 32) {
                return i != 64 ? "AVC Unknown" : "AVC High444";
            }
            return "AVC High422";
        }
        if (str.equalsIgnoreCase(n)) {
            return c(str, i);
        }
        if (!str.equalsIgnoreCase(o)) {
            return "Unknown";
        }
        if (i == 1) {
            return "MPEG4 Simple";
        }
        if (i == 2) {
            return "MPEG4 SimpleScalable";
        }
        switch (i) {
            case 4:
                return "MPEG4 Core";
            case 8:
                return "MPEG4 Main";
            case 16:
                return "MPEG4 Nbit";
            case 32:
                return "MPEG4 ScalableTexture";
            case 64:
                return "MPEG4 SimpleFace";
            case 128:
                return "MPEG4 SimpleFBA";
            case 256:
                return "MPEG4 BasicAnimated";
            case 512:
                return "MPEG4 Hybrid";
            case 1024:
                return "MPEG4 AdvancedRealTime";
            case 2048:
                return "MPEG4 CoreScalable";
            case 4096:
                return "MPEG4 AdvancedCoding";
            case 8192:
                return "MPEG4 AdvancedCore";
            case 16384:
                return "MPEG4 AdvancedScalable";
            case 32768:
                return "MPEG4 AdvancedSimple";
            default:
                return "MPEG4 Unknown";
        }
    }

    @TargetApi(21)
    public static String e(String str, int i) {
        if (i == 1) {
            return "L30";
        }
        if (i == 2) {
            return "H30";
        }
        switch (i) {
            case 4:
                return "L60";
            case 8:
                return "H60";
            case 16:
                return "L63";
            case 32:
                return "H63";
            case 64:
                return "L90";
            case 128:
                return "H90";
            case 256:
                return "L93";
            case 512:
                return "H93";
            case 1024:
                return "L120";
            case 2048:
                return "H120";
            case 4096:
                return "L123";
            case 8192:
                return "H123";
            case 16384:
                return "L150";
            case 32768:
                return "H150";
            case 65536:
                return "L153";
            case 131072:
                return "H153";
            case 262144:
                return "L156";
            case 524288:
                return "H156";
            case 1048576:
                return "L180";
            case 2097152:
                return "H180";
            case 4194304:
                return "L183";
            case 8388608:
                return "H183";
            case 16777216:
                return "L186";
            case 33554432:
                return "H186";
            default:
                return "0";
        }
    }

    public static String f(String str, int i) {
        if (!str.equalsIgnoreCase(m)) {
            if (str.equalsIgnoreCase(n)) {
                return e(str, i);
            }
            if (!str.equalsIgnoreCase(o)) {
                return "0";
            }
            if (i == 2) {
                return "0b";
            }
            if (i == 4) {
                return "1";
            }
            if (i == 8) {
                return "2";
            }
            if (i == 16) {
                return "3";
            }
            if (i == 32) {
                return "4";
            }
            if (i != 64) {
                return i != 128 ? "0" : "5";
            }
            return "4a";
        }
        if (i == 1) {
            return "10";
        }
        if (i == 2) {
            return "1b";
        }
        switch (i) {
            case 4:
                return "11";
            case 8:
                return "12";
            case 16:
                return "13";
            case 32:
                return IDrmManager.SessionConfig.STR_DRM_TYPE_AUDIO_MAES;
            case 64:
                return "21";
            case 128:
                return "22";
            case 256:
                return "30";
            case 512:
                return "31";
            case 1024:
                return "32";
            case 2048:
                return "40";
            case 4096:
                return "41";
            case 8192:
                return RoomMasterTable.DEFAULT_ID;
            case 16384:
                return "50";
            case 32768:
                return "51";
            case 65536:
                return "52";
            default:
                return "0";
        }
    }

    @TargetApi(21)
    private static int g(String str, int i) {
        if (i == 1 || i == 3) {
            return 1;
        }
        return i == 2 ? 2 : 0;
    }

    @TargetApi(24)
    private static int h(String str, int i) {
        if (i == 1 || i == 3) {
            return 1;
        }
        if (i == 2) {
            return 2;
        }
        return i == 4096 ? 4096 : 0;
    }

    @TargetApi(29)
    private static int i(String str, int i) {
        if (i == 1 || i == 3) {
            return 1;
        }
        if (i == 2) {
            return 2;
        }
        if (i == 4096) {
            return 4096;
        }
        return i == 8192 ? 8192 : 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x004e, code lost:
    
        if (r9 != 244) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00c1, code lost:
    
        if (r9 == 5) goto L35;
     */
    @TargetApi(16)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int j(String str, int i) {
        if (str.equalsIgnoreCase(m)) {
            if (i != 66 && i != r) {
                if (i != 77) {
                    if (i != 88) {
                        if (i != 100) {
                            if (i == 110 || i == s) {
                                return 16;
                            }
                            if (i != 122 && i != t) {
                                if (i != 144) {
                                    if (i != u) {
                                    }
                                }
                                return 64;
                            }
                            return 32;
                        }
                        return 8;
                    }
                    return 4;
                }
                return 2;
            }
            return 1;
        }
        if (str.equalsIgnoreCase(n)) {
            return i(str, i);
        }
        if (str.equalsIgnoreCase(o)) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 6) {
                        if (i == 14) {
                            return 128;
                        }
                        if (i != 3) {
                            if (i == 7) {
                                return 256;
                            }
                            if (i != 2) {
                                if (i == 10) {
                                    return 2048;
                                }
                                if (i == 8) {
                                    return 512;
                                }
                                if (i == 4) {
                                    return 16;
                                }
                                if (i == 15) {
                                    return 32768;
                                }
                                if (i == 13) {
                                    return 16384;
                                }
                                if (i == 9) {
                                    return 1024;
                                }
                                if (i == 12) {
                                    return 8192;
                                }
                                if (i == 11) {
                                    return 4096;
                                }
                            }
                            return 4;
                        }
                        return 8;
                    }
                    return 64;
                }
                return 2;
            }
            return 1;
        }
        return 0;
    }

    @TargetApi(21)
    public static String a(String str, int i) {
        if (i != 1) {
            return i != 2 ? "HEVC Unknown 21" : "HEVC Main10";
        }
        return "HEVC Main";
    }

    @TargetApi(19)
    private static boolean b(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    public static String a(String str, int i, int i2) {
        return String.format(Locale.US, " max: [%s Profile] [Level %s] (value: %d,%d)", d(str, i), f(str, i2), Integer.valueOf(i), Integer.valueOf(i2));
    }

    private static synchronized Map<String, Integer> a() {
        Map<String, Integer> map = v;
        if (map != null) {
            return map;
        }
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        v = treeMap;
        treeMap.put("OMX.Nvidia.h264.decode", Integer.valueOf(b));
        v.put("OMX.Nvidia.h264.decode.secure", Integer.valueOf(e));
        v.put("OMX.Intel.hw_vd.h264", Integer.valueOf(b + 1));
        v.put("OMX.Intel.VideoDecoder.AVC", Integer.valueOf(b));
        v.put("OMX.qcom.video.decoder.avc", Integer.valueOf(b));
        v.put("OMX.ittiam.video.decoder.avc", Integer.valueOf(h));
        v.put("OMX.SEC.avc.dec", Integer.valueOf(b));
        v.put("OMX.SEC.AVC.Decoder", Integer.valueOf(b - 1));
        v.put("OMX.SEC.avcdec", Integer.valueOf(b - 2));
        v.put("OMX.SEC.avc.sw.dec", Integer.valueOf(f));
        v.put("OMX.Exynos.avc.dec", Integer.valueOf(b));
        v.put("OMX.Exynos.AVC.Decoder", Integer.valueOf(b - 1));
        v.put("OMX.k3.video.decoder.avc", Integer.valueOf(b));
        v.put("OMX.IMG.MSVDX.Decoder.AVC", Integer.valueOf(b));
        v.put("OMX.TI.DUCATI1.VIDEO.DECODER", Integer.valueOf(b));
        v.put("OMX.rk.video_decoder.avc", Integer.valueOf(b));
        v.put("OMX.rk.video_decoder.hevc", Integer.valueOf(b));
        v.put("OMX.rk.video_decoder.m2v", Integer.valueOf(b));
        v.put("OMX.amlogic.avc.decoder.awesome", Integer.valueOf(b));
        v.put("OMX.MARVELL.VIDEO.HW.CODA7542DECODER", Integer.valueOf(b));
        v.put("OMX.MARVELL.VIDEO.H264DECODER", Integer.valueOf(f));
        v.put("OMX.BRCM.vc4.decoder.avc", Integer.valueOf(b));
        v.remove("OMX.brcm.video.h264.hw.decoder");
        v.remove("OMX.brcm.video.h264.decoder");
        v.remove("OMX.ST.VFM.H264Dec");
        v.remove("OMX.allwinner.video.decoder.avc");
        v.remove("OMX.MS.AVC.Decoder");
        v.remove("OMX.hantro.81x0.video.decoder");
        v.remove("OMX.hisi.video.decoder");
        v.remove("OMX.cosmo.video.decoder.avc");
        v.remove("OMX.duos.h264.decoder");
        v.remove("OMX.bluestacks.hw.decoder");
        v.put("OMX.google.h264.decoder", Integer.valueOf(f));
        v.put("OMX.google.h264.lc.decoder", Integer.valueOf(f));
        v.put("OMX.k3.ffmpeg.decoder", Integer.valueOf(f));
        v.put("OMX.ffmpeg.video.decoder", Integer.valueOf(f));
        v.put("OMX.qcom.video.decoder.hevcswvdec", Integer.valueOf(f));
        v.put("OMX.SEC.hevc.sw.dec", Integer.valueOf(f));
        v.put("c2.android.avc.decoder", Integer.valueOf(f));
        v.put("c2.android.hevc.decoder", Integer.valueOf(f));
        v.put("c2.qti.avc.decoder", Integer.valueOf(b));
        v.put("c2.qti.hevc.decoder", Integer.valueOf(b));
        v.put("c2.mtk.avc.decoder", Integer.valueOf(b));
        v.put("c2.mtk.hevc.decoder", Integer.valueOf(b));
        v.put("c2.exynos.avc.decoder", Integer.valueOf(b));
        v.put("c2.exynos.hevc.decoder", Integer.valueOf(b));
        return v;
    }

    @TargetApi(16)
    public void a(String str) {
        int iMax;
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        try {
            MediaCodecInfo.CodecCapabilities capabilitiesForType = this.i.getCapabilitiesForType(str);
            int i = 0;
            if (capabilitiesForType == null || (codecProfileLevelArr = capabilitiesForType.profileLevels) == null) {
                iMax = 0;
            } else {
                int length = codecProfileLevelArr.length;
                int iMax2 = 0;
                iMax = 0;
                while (i < length) {
                    MediaCodecInfo.CodecProfileLevel codecProfileLevel = codecProfileLevelArr[i];
                    if (codecProfileLevel != null) {
                        iMax2 = Math.max(iMax2, codecProfileLevel.profile);
                        iMax = Math.max(iMax, codecProfileLevel.level);
                    }
                    i++;
                }
                i = iMax2;
            }
            DebugLog.i("ImgoMediaCodecInfo", String.format(Locale.US, "%s->%s", this.i.getName(), a(str, i, iMax)));
        } catch (Throwable unused) {
            DebugLog.i("ImgoMediaCodecInfo", "profile-level: exception");
        }
    }

    public static boolean a(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities != null && b(codecCapabilities);
    }

    private static boolean a(MediaCodecInfo mediaCodecInfo, String str, int i, boolean z) {
        boolean z2;
        boolean z3;
        if (mediaCodecInfo == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(str);
            if (capabilitiesForType == null) {
                DebugLog.e("ImgoMediaCodecInfo", String.format(Locale.US, "chodison %s getCapabilitiesForType failed,don't find supported profile:%d(%s profile supported:false)", mediaCodecInfo.getName(), Integer.valueOf(i), d(str, i)));
                return false;
            }
            MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr = capabilitiesForType.profileLevels;
            int i2 = 0;
            while (true) {
                z2 = true;
                if (i2 >= codecProfileLevelArr.length) {
                    z3 = false;
                    break;
                }
                if (codecProfileLevelArr[i2].profile == i) {
                    Locale locale = Locale.US;
                    DebugLog.i("ImgoMediaCodecInfo", String.format(locale, "chodison %s find profile-level:%d-%s", mediaCodecInfo.getName(), Integer.valueOf(i), f(str, codecProfileLevelArr[i2].level)));
                    DebugLog.i("ImgoMediaCodecInfo", String.format(locale, "chodison %s find supported profile:%d(%s profile supported:true)", mediaCodecInfo.getName(), Integer.valueOf(i), d(str, i)));
                    z3 = true;
                    break;
                }
                i2++;
            }
            if (codecProfileLevelArr.length != 0) {
                if (i2 == codecProfileLevelArr.length) {
                    DebugLog.e("ImgoMediaCodecInfo", String.format(Locale.US, "chodison %s don't find supported profile:%d(%s profile supported:false)", mediaCodecInfo.getName(), Integer.valueOf(i), d(str, i)));
                }
                return z3;
            }
            if (!z) {
                z2 = z3;
            }
            DebugLog.e("ImgoMediaCodecInfo", String.format(Locale.US, "chodison %s hasn't valid find supported profile:%d(%s profile supported:true)", mediaCodecInfo.getName(), Integer.valueOf(i), d(str, i)));
            return z2;
        } catch (Throwable th) {
            Locale locale2 = Locale.US;
            DebugLog.e("ImgoMediaCodecInfo", String.format(locale2, "chodison getCapabilitiesForType exception:%s ", th.getMessage()));
            DebugLog.e("ImgoMediaCodecInfo", String.format(locale2, "chodison %s don't find supported profile:%d(%s profile supported:false)", mediaCodecInfo.getName(), Integer.valueOf(i), d(str, i)));
            return false;
        }
    }
}
