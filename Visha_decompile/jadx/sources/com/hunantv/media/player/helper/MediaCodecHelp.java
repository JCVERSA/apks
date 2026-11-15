package com.hunantv.media.player.helper;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.util.DisplayMetrics;
import android.util.Size;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.RequiresApi;
import com.hunantv.media.config.NetPlayConfig;
import com.hunantv.media.player.MgtvMediaPlayer;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.player.utils.ArrayUtil;
import com.hunantv.media.player.utils.PreferencesUtil;
import com.hunantv.media.player.utils.StringUtil;
import com.hunantv.media.report.c.f;
import com.hunantv.media.report.c.h;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

public class MediaCodecHelp {
    public static String AMIME_AUDIO_AMR_NB = "audio/3gpp";
    public static String AMIME_AUDIO_AMR_WB = "audio/amr-wb";
    public static String AMIME_AUDIO_G711_ALAW = "audio/g711-alaw";
    public static String AMIME_AUDIO_G711_MLAW = "audio/g711-mlaw";
    public static String AMIME_AUDIO_MP3 = "audio/mpeg";
    public static String AMIME_AUDIO_RAW_AAC = "audio/mp4a-latm";
    public static String AMIME_AUDIO_VORBIS = "audio/vorbis";
    public static String AMIME_VIDEO_AV1 = "video/av01";
    public static String AMIME_VIDEO_AVC = "video/avc";
    public static String AMIME_VIDEO_H263 = "video/3gpp";
    public static String AMIME_VIDEO_HEVC = "video/hevc";
    public static String AMIME_VIDEO_MPEG4 = "video/mp4v-es";
    public static String AMIME_VIDEO_VP8 = "video/x-vnd.on2.vp8";
    public static String AMIME_VIDEO_VP9 = "video/x-vnd.on2.vp9";
    public static String FHD = "FHD";
    public static String FHD_100 = "FHD_100";
    public static String FHD_120 = "FHD_120";
    public static String FHD_15 = "FHD_15";
    public static String FHD_20 = "FHD_20";
    public static String FHD_24 = "FHD_24";
    public static String FHD_25 = "FHD_25";
    public static String FHD_30 = "FHD_30";
    public static String FHD_40 = "FHD_40";
    public static String FHD_50 = "FHD_50";
    public static String FHD_60 = "FHD_60";
    public static String FHD_70 = "FHD_70";
    public static String FHD_80 = "FHD_80";
    public static String FHD_90 = "FHD_90";
    public static String FHD_MAX = "FHD_120_OVER";
    public static String FHD_MIN = "FHD_15_BELOW";
    public static String HD = "HD";
    public static String SD = "SD";
    public static String SD_BELOW = "SD_BELOW";
    public static String SHD = "SHD";
    public static String UHD = "UHD";
    public static String UHD_100 = "UHD_100";
    public static String UHD_120 = "UHD_120";
    public static String UHD_15 = "UHD_15";
    public static String UHD_20 = "UHD_20";
    public static String UHD_24 = "UHD_24";
    public static String UHD_25 = "UHD_25";
    public static String UHD_30 = "UHD_30";
    public static String UHD_40 = "UHD_40";
    public static String UHD_50 = "UHD_50";
    public static String UHD_60 = "UHD_60";
    public static String UHD_70 = "UHD_70";
    public static String UHD_80 = "UHD_80";
    public static String UHD_90 = "UHD_90";
    public static String UHD_MAX = "UHD_120_OVER";
    public static String UHD_MIN = "UHD_15_BELOW";
    public static String UNKOWN = "UnKown";
    private static boolean isConvert = true;
    private static boolean isHardware = true;
    private static volatile String sAV1Decoder = null;
    private static volatile String sAVCDecoder = null;
    private static volatile String sHEVCDecoder = null;
    private static ScreenPerformance sScreenPerformance = null;
    public static String tag = "MediaCodecHelp";
    private static Map<String, Boolean> sMediaCodecMap = new HashMap();
    private static final String MEDIA_CODEC_XML_FILE = "/etc/media_codecs.xml";
    private static final String VENDOR_MEDIA_CODEC_XML_FILE = "/vendor/etc/media_codecs.xml";
    private static final String ODM_MEDIA_CODEC_XML_FILE = "/odm/etc/media_codecs.xml";
    private static final String[] sCodecFiles = {MEDIA_CODEC_XML_FILE, VENDOR_MEDIA_CODEC_XML_FILE, ODM_MEDIA_CODEC_XML_FILE};
    private static final String[] sH265BlackListMods = {"OPPO R9s Plus", "OPPO A83t", "V1809A", "ALP-AL00"};
    public static boolean sH265Enable = true;
    public static Set<String> sCreateCodecBlackList = Collections.synchronizedSet(new HashSet());
    public static Set<String> sFlushCodecBlackList = Collections.synchronizedSet(new HashSet());
    public static ArrayList<CodecPerformance> sDecodePerformanceList = new ArrayList<>();

    public static class CodecPerformance {
        public volatile String codecName;
        public volatile String hdr = "";
        public volatile boolean hdr_support;
        public volatile String max_def;
        public volatile String max_def_fps;
        public volatile String max_fps_1080p;
        public volatile String max_fps_4k;
        public volatile String mimeType;
        public volatile String performance;
        public volatile boolean s4k;
        public volatile String shdrt;
    }

    public static class ScreenPerformance {
        public String srpf;
        public String srplh;
        public String srpll;
        public String sshdr;

        public String toString() {
            return "ScreenPerformance{srpf='" + this.srpf + "', srpll='" + this.srpll + "', srplh='" + this.srplh + "', sshdr='" + this.sshdr + "'}";
        }
    }

    public enum performanceLevel {
        SD,
        HD,
        FHD,
        UHD,
        UUHD
    }

    private static File findCodecXmlFile() {
        String[] strArr = sCodecFiles;
        if (strArr != null && strArr.length > 0) {
            try {
                for (String str : strArr) {
                    File file = new File(str);
                    if (file.exists()) {
                        return file;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:56:0x00f2 A[Catch: all -> 0x0019, TRY_LEAVE, TryCatch #2 {, blocks: (B:4:0x0003, B:6:0x000b, B:14:0x0024, B:43:0x00ab, B:54:0x00ee, B:56:0x00f2, B:59:0x00fb, B:60:0x00fe, B:53:0x00ea), top: B:68:0x0003 }] */
    public static synchronized boolean findMediaCodec(String str) {
        boolean z;
        Map<String, Boolean> map;
        String str2;
        String str3;
        String str4;
        String str5;
        if (sMediaCodecMap.containsKey(str)) {
            return sMediaCodecMap.get(str).booleanValue();
        }
        boolean z2 = false;
        FileInputStream fileInputStream = null;
        try {
            try {
                File fileFindCodecXmlFile = findCodecXmlFile();
                if (fileFindCodecXmlFile == null) {
                    f.a(null);
                    return false;
                }
                FileInputStream fileInputStream2 = new FileInputStream(fileFindCodecXmlFile);
                try {
                    try {
                        XmlPullParser xmlPullParserNewPullParser = XmlPullParserFactory.newInstance().newPullParser();
                        xmlPullParserNewPullParser.setInput(fileInputStream2, "UTF-8");
                        z = false;
                        for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
                            try {
                                String name = xmlPullParserNewPullParser.getName();
                                if (eventType == 2 && "MediaCodec".equals(name)) {
                                    String attributeValue = xmlPullParserNewPullParser.getAttributeValue(0);
                                    if (attributeValue.startsWith("c2.")) {
                                        if (attributeValue.startsWith(str)) {
                                            str4 = "ImgoPlayerLibJava";
                                            str5 = "findMediaCodec : " + attributeValue;
                                            DebugLog.i(str4, str5);
                                            z = true;
                                        }
                                    } else if (attributeValue.startsWith("OMX.") && attributeValue.startsWith(str)) {
                                        str4 = "ImgoPlayerLibJava";
                                        str5 = "findMediaCodec : " + attributeValue;
                                        DebugLog.i(str4, str5);
                                        z = true;
                                    }
                                }
                            } catch (Exception unused) {
                                fileInputStream = fileInputStream2;
                                z2 = z;
                            }
                        }
                        f.a(fileInputStream2);
                    } catch (Exception unused2) {
                        fileInputStream = fileInputStream2;
                    }
                    map = sMediaCodecMap;
                    if (map != null) {
                        map.put(str, Boolean.valueOf(z));
                    }
                    return z;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    f.a(fileInputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused3) {
        }
        if (fileInputStream == null) {
            str2 = "ImgoPlayerLibJava";
            str3 = "findMediaCodec : " + str + " openInputStream failed";
        } else {
            str2 = "ImgoPlayerLibJava";
            str3 = "findMediaCodec : " + str + " parser failed";
        }
        DebugLog.i(str2, str3);
        f.a(fileInputStream);
        z = z2;
        map = sMediaCodecMap;
        if (map != null) {
            map.put(str, Boolean.valueOf(z));
        }
        return z;
    }

    public static String getALLAV1Decoder(boolean z) {
        if (sAV1Decoder == null && z && BuildHelper.isApi29_LollipopOrLater()) {
            sAV1Decoder = getSelectALLCodecNameDecoder21orLater(AMIME_VIDEO_AV1);
        }
        return sAV1Decoder;
    }

    public static synchronized ArrayList<CodecPerformance> getCodecPerformanceList(boolean z) {
        ArrayList<CodecPerformance> arrayList;
        MediaCodecInfo[] mediaCodecInfoArr;
        char c;
        int i;
        int i2;
        int i3;
        try {
            arrayList = new ArrayList<>();
            try {
                char c2 = 1;
                MediaCodecInfo[] codecInfos = new MediaCodecList(1).getCodecInfos();
                int length = codecInfos.length;
                int i4 = 0;
                int i5 = 0;
                while (i5 < length) {
                    MediaCodecInfo mediaCodecInfo = codecInfos[i5];
                    if (z == mediaCodecInfo.isEncoder()) {
                        String[] supportedTypes = mediaCodecInfo.getSupportedTypes();
                        int length2 = supportedTypes.length;
                        int i6 = i4;
                        while (i6 < length2) {
                            String str = supportedTypes[i6];
                            if (str.contains("video")) {
                                CodecPerformance codecPerformance = new CodecPerformance();
                                MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr = mediaCodecInfo.getCapabilitiesForType(str).profileLevels;
                                if (codecProfileLevelArr != null) {
                                    char[] cArr = new char[2];
                                    cArr[i4] = '0';
                                    cArr[c2] = '0';
                                    int length3 = codecProfileLevelArr.length;
                                    int i7 = 0;
                                    while (true) {
                                        mediaCodecInfoArr = codecInfos;
                                        if (i7 >= length3) {
                                            break;
                                        }
                                        MediaCodecInfo.CodecProfileLevel codecProfileLevel = codecProfileLevelArr[i7];
                                        int i8 = length;
                                        int i9 = length3;
                                        if (codecPerformance.hdr.contains("_HDR10_") || !((i3 = codecProfileLevel.profile) == 4096 || i3 == 4096)) {
                                            if (!codecPerformance.hdr.contains("_HDR10Plus_") && ((i2 = codecProfileLevel.profile) == 8192 || i2 == 8192)) {
                                                codecPerformance.hdr_support = true;
                                                codecPerformance.hdr += "_HDR10Plus_";
                                                cArr[1] = '1';
                                            }
                                            i7++;
                                            codecInfos = mediaCodecInfoArr;
                                            length = i8;
                                            length3 = i9;
                                        } else {
                                            codecPerformance.hdr_support = true;
                                            codecPerformance.hdr += "_HDR10_";
                                            cArr[0] = '1';
                                        }
                                        i7++;
                                        codecInfos = mediaCodecInfoArr;
                                        length = i8;
                                        length3 = i9;
                                    }
                                    i = length;
                                    c = 1;
                                    codecPerformance.shdrt = String.valueOf(cArr);
                                } else {
                                    mediaCodecInfoArr = codecInfos;
                                    c = c2;
                                    i = length;
                                }
                                MediaCodecInfo.VideoCapabilities videoCapabilities = mediaCodecInfo.getCapabilitiesForType(str).getVideoCapabilities();
                                codecPerformance.codecName = mediaCodecInfo.getName();
                                codecPerformance.mimeType = str;
                                codecPerformance.performance = getPerformance(videoCapabilities);
                                codecPerformance.max_fps_4k = ((int) getPerformanceByFrameRate(videoCapabilities, UHD)) + "";
                                codecPerformance.max_fps_1080p = ((int) getPerformanceByFrameRate(videoCapabilities, FHD)) + "";
                                if (isHardware) {
                                    String lowerCase = codecPerformance.codecName.toLowerCase();
                                    if (lowerCase.startsWith("c2") && !lowerCase.startsWith("c2.android") && !lowerCase.contains("secure")) {
                                        printAllFrameRates(lowerCase, videoCapabilities);
                                        Size maxResolution = getMaxResolution(videoCapabilities);
                                        if (maxResolution != null) {
                                            codecPerformance.max_def = maxResolution.getWidth() + "x" + maxResolution.getHeight();
                                            StringBuilder sb = new StringBuilder();
                                            sb.append(((Double) videoCapabilities.getSupportedFrameRatesFor(maxResolution.getWidth(), maxResolution.getHeight()).getUpper()).intValue());
                                            sb.append("");
                                            codecPerformance.max_def_fps = sb.toString();
                                        }
                                    } else if (lowerCase.startsWith("omx") && !lowerCase.startsWith("omx.google") && !lowerCase.contains("secure") && !lowerCase.startsWith("omx.ffmpeg")) {
                                        printAllFrameRates(lowerCase, videoCapabilities);
                                        Size maxResolution2 = getMaxResolution(videoCapabilities);
                                        if (maxResolution2 != null) {
                                            codecPerformance.max_def = maxResolution2.getWidth() + "x" + maxResolution2.getHeight();
                                            StringBuilder sb2 = new StringBuilder();
                                            sb2.append(((Double) videoCapabilities.getSupportedFrameRatesFor(maxResolution2.getWidth(), maxResolution2.getHeight()).getUpper()).intValue());
                                            sb2.append("");
                                            codecPerformance.max_def_fps = sb2.toString();
                                        }
                                    }
                                    arrayList.add(codecPerformance);
                                } else {
                                    arrayList.add(codecPerformance);
                                }
                            } else {
                                mediaCodecInfoArr = codecInfos;
                                c = c2;
                                i = length;
                            }
                            i6++;
                            c2 = c;
                            codecInfos = mediaCodecInfoArr;
                            length = i;
                            i4 = 0;
                        }
                    }
                    i5++;
                    c2 = c2;
                    codecInfos = codecInfos;
                    length = length;
                    i4 = 0;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    public static synchronized ArrayList<CodecPerformance> getDecoderPerformanceList() {
        try {
            if (sDecodePerformanceList.isEmpty()) {
                sDecodePerformanceList = getCodecPerformanceList(false);
            }
        } catch (Throwable th) {
            throw th;
        }
        return sDecodePerformanceList;
    }

    public static String getH264Decoder() {
        return getH264Decoder(true);
    }

    public static String getH265Decoder() {
        return getH265Decoder(true);
    }

    public static void getHardWareperformance(boolean z) {
        isHardware = z;
    }

    @RequiresApi(api = 21)
    private static int getMaxFps(MediaCodecInfo.VideoCapabilities videoCapabilities, Size size) {
        try {
            return ((Double) videoCapabilities.getSupportedFrameRatesFor(size.getWidth(), size.getHeight()).getUpper()).intValue() / 1000;
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    @RequiresApi(api = 21)
    private static Size getMaxResolution(MediaCodecInfo.VideoCapabilities videoCapabilities) {
        if (NetPlayConfig.is4KOpen() && videoCapabilities.isSizeSupported(7680, 4320)) {
            return new Size(7680, 4320);
        }
        if (NetPlayConfig.is4KOpen() && videoCapabilities.isSizeSupported(3840, 2160)) {
            return new Size(3840, 2160);
        }
        if (videoCapabilities.isSizeSupported(1920, 1080)) {
            return new Size(1920, 1080);
        }
        if (videoCapabilities.isSizeSupported(1280, 720)) {
            return new Size(1280, 720);
        }
        if (videoCapabilities.isSizeSupported(720, 480)) {
            return new Size(720, 480);
        }
        return null;
    }

    @RequiresApi(api = 21)
    private static String getPerformance(MediaCodecInfo.VideoCapabilities videoCapabilities) {
        String str;
        String performanceByResolution = getPerformanceByResolution(videoCapabilities);
        int performanceByFrameRate = (int) getPerformanceByFrameRate(videoCapabilities, performanceByResolution);
        if ("FHD".equalsIgnoreCase(performanceByResolution) || !videoCapabilities.isSizeSupported(1920, 1080)) {
            str = "";
        } else {
            str = "FHD_" + ((int) ((Double) videoCapabilities.getSupportedFrameRatesFor(1920, 1080).getUpper()).doubleValue()) + "_";
        }
        return performanceByResolution + "_" + performanceByFrameRate + "_" + str;
    }

    @RequiresApi(api = 21)
    private static double getPerformanceByFrameRate(MediaCodecInfo.VideoCapabilities videoCapabilities, String str) {
        int i;
        int i2;
        if (videoCapabilities == null || StringUtil.isEmpty(str)) {
            return 0.0d;
        }
        if (str.equals(SHD)) {
            i = 7680;
            i2 = 4320;
        } else if (str.equals(UHD)) {
            i = 3840;
            i2 = 2160;
        } else if (str.equals(FHD)) {
            i = 1920;
            i2 = 1080;
        } else if (str.equals(HD)) {
            i = 1280;
            i2 = 720;
        } else if (str.equals(SD)) {
            i2 = 480;
            i = 720;
        } else {
            i = 0;
            i2 = 0;
        }
        if (i <= 0 || i2 <= 0) {
            return 0.0d;
        }
        try {
            if (videoCapabilities.isSizeSupported(i, i2)) {
                return ((Double) videoCapabilities.getSupportedFrameRatesFor(i, i2).getUpper()).doubleValue();
            }
            return 0.0d;
        } catch (Exception e) {
            e.printStackTrace();
            return 0.0d;
        }
    }

    @RequiresApi(api = 21)
    private static String getPerformanceByResolution(MediaCodecInfo.VideoCapabilities videoCapabilities) {
        if (videoCapabilities.isSizeSupported(7680, 4320)) {
            return SHD;
        }
        if (videoCapabilities.isSizeSupported(3840, 2160)) {
            return UHD;
        }
        if (videoCapabilities.isSizeSupported(1920, 1080)) {
            return FHD;
        }
        if (videoCapabilities.isSizeSupported(1280, 720)) {
            return HD;
        }
        return videoCapabilities.isSizeSupported(720, 480) ? SD : SD_BELOW;
    }

    public static synchronized ScreenPerformance getScreenPerformance(Context context) {
        try {
            if (sScreenPerformance == null) {
                try {
                    sScreenPerformance = new ScreenPerformance();
                    Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    defaultDisplay.getRealMetrics(displayMetrics);
                    int i = displayMetrics.widthPixels;
                    int i2 = displayMetrics.heightPixels;
                    int refreshRate = (int) defaultDisplay.getRefreshRate();
                    char[] cArr = {'0', '0', '0', '0'};
                    sScreenPerformance.srpll = ((int) (defaultDisplay.getHdrCapabilities().getDesiredMinLuminance() * 1000.0f)) + "";
                    sScreenPerformance.srplh = ((int) (defaultDisplay.getHdrCapabilities().getDesiredMaxLuminance() * 1000.0f)) + "";
                    int[] supportedHdrTypes = defaultDisplay.getHdrCapabilities().getSupportedHdrTypes();
                    if (supportedHdrTypes != null) {
                        for (int i3 : supportedHdrTypes) {
                            if (i3 == 1) {
                                cArr[3] = '1';
                            } else if (i3 == 2) {
                                cArr[0] = '1';
                            } else if (i3 == 3) {
                                cArr[2] = '1';
                            } else if (i3 == 4) {
                                cArr[1] = '1';
                            }
                        }
                    }
                    sScreenPerformance.sshdr = String.valueOf(cArr);
                    sScreenPerformance.srpf = i + "x" + i2 + "_" + refreshRate;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return sScreenPerformance;
    }

    @TargetApi(21)
    private static String getSelectALLCodecNameDecoder21orLater(String str) {
        String str2 = null;
        try {
            for (MediaCodecInfo mediaCodecInfo : new MediaCodecList(1).getCodecInfos()) {
                if (!mediaCodecInfo.isEncoder()) {
                    for (String str3 : mediaCodecInfo.getSupportedTypes()) {
                        if (str3.equalsIgnoreCase(str)) {
                            DebugLog.i("ImgoPlayerLibJava", "getSelectALLCodecNameDecoder21orLater : " + mediaCodecInfo.getName() + ",type:" + str3);
                            if (str2 == null) {
                                str2 = "";
                            }
                            str2 = str2 + mediaCodecInfo.getName() + "_";
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str2;
    }

    @TargetApi(16)
    private static MediaCodecInfo getSelectCodec(String str) {
        try {
            int codecCount = MediaCodecList.getCodecCount();
            for (int i = 0; i < codecCount; i++) {
                MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
                if (!codecInfoAt.isEncoder()) {
                    for (String str2 : codecInfoAt.getSupportedTypes()) {
                        if (str2.equalsIgnoreCase(str)) {
                            DebugLog.i("ImgoPlayerLibJava", "SelectCodec : " + codecInfoAt.getName());
                            return codecInfoAt;
                        }
                    }
                }
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @TargetApi(16)
    private static String getSelectCodecDecoder16orLater(String str) {
        try {
            int codecCount = MediaCodecList.getCodecCount();
            for (int i = 0; i < codecCount; i++) {
                MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
                if (!codecInfoAt.isEncoder()) {
                    for (String str2 : codecInfoAt.getSupportedTypes()) {
                        if (str2.equalsIgnoreCase(str) && !codecInfoAt.getName().startsWith("OMX.google.") && !codecInfoAt.getName().startsWith("c2.android.")) {
                            DebugLog.i("ImgoPlayerLibJava", "getSelectCodecDecoder16orLater : " + codecInfoAt.getName());
                            return codecInfoAt.getName();
                        }
                    }
                }
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @TargetApi(21)
    private static String getSelectCodecDecoder21orLater(String str) {
        try {
            for (MediaCodecInfo mediaCodecInfo : new MediaCodecList(1).getCodecInfos()) {
                if (!mediaCodecInfo.isEncoder()) {
                    for (String str2 : mediaCodecInfo.getSupportedTypes()) {
                        if (str2.equalsIgnoreCase(str) && !mediaCodecInfo.getName().startsWith("OMX.google.") && !mediaCodecInfo.getName().startsWith("c2.android.")) {
                            DebugLog.i("ImgoPlayerLibJava", "getSelectCodecDecoder21orLater : " + mediaCodecInfo.getName());
                            return mediaCodecInfo.getName();
                        }
                    }
                }
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getSupportHDST(Context context) {
        StringBuilder sb;
        String str;
        List<String> supportHardDecodeTypes = getSupportHardDecodeTypes(context);
        String string = "";
        for (int i = 0; i < supportHardDecodeTypes.size(); i++) {
            if (i == supportHardDecodeTypes.size() - 1) {
                sb = new StringBuilder();
                sb.append(string);
                str = supportHardDecodeTypes.get(i);
            } else {
                sb = new StringBuilder();
                sb.append(string);
                sb.append(supportHardDecodeTypes.get(i));
                str = StringUtils.COMMA;
            }
            sb.append(str);
            string = sb.toString();
        }
        return string;
    }

    public static List<String> getSupportHardDecodeTypes(Context context) {
        ArrayList arrayList = new ArrayList();
        PreferencesUtil preferencesUtil = new PreferencesUtil(context);
        if (getH264Decoder() != null) {
            arrayList.add(MgtvMediaPlayer.DataSourceInfo.H264);
        }
        String h265Decoder = getH265Decoder();
        if (sH265Enable && BuildHelper.isApi21_LollipopOrLater() && h265Decoder != null && !inCreateCodecBlackList(h265Decoder) && !inH265BlackListMods(h.e()) && preferencesUtil.getBoolean(PreferencesUtil.PREKEY_MEDIACODEC_H265_SUPPORT, true)) {
            arrayList.add(MgtvMediaPlayer.DataSourceInfo.H265);
        }
        return arrayList;
    }

    public static boolean inCreateCodecBlackList(String str) {
        Set<String> set;
        try {
            return (StringUtil.isEmpty(str) || (set = sCreateCodecBlackList) == null || !set.contains(str)) ? false : true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean inH265BlackListMods(String str) {
        return ArrayUtil.inArrayIgnoreCase(sH265BlackListMods, str);
    }

    public static boolean isH265InCreateCodecBlackList() {
        for (String str : sCreateCodecBlackList) {
            if (str != null && (str.toUpperCase().contains("HEVC") || str.toUpperCase().contains("H265"))) {
                return true;
            }
        }
        return false;
    }

    public static boolean isIntelMediaCodec() {
        return findMediaCodec("OMX.Intel.");
    }

    public static boolean isMTKMediaCodec() {
        return findMediaCodec("OMX.MTK.");
    }

    @RequiresApi(api = 21)
    public static void printAllFrameRates(String str, MediaCodecInfo.VideoCapabilities videoCapabilities) {
        DebugLog.i("MediaCodecHelp", "codecName:" + str);
        printFrameRate(videoCapabilities, 7680, 4320);
        printFrameRate(videoCapabilities, 3840, 2160);
        printFrameRate(videoCapabilities, 1920, 1080);
        printFrameRate(videoCapabilities, 1280, 720);
        printFrameRate(videoCapabilities, 720, 480);
        DebugLog.i("MediaCodecHelp", "===================================");
    }

    @RequiresApi(api = 21)
    private static void printFrameRate(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2) {
        try {
            if (videoCapabilities.isSizeSupported(i, i2)) {
                DebugLog.i("MediaCodecHelp", i + "_" + i2 + "max framerate:" + ((Double) videoCapabilities.getSupportedFrameRatesFor(i, i2).getUpper()).doubleValue());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String getH264Decoder(boolean z) {
        String selectCodecDecoder16orLater;
        if (sAVCDecoder == null && z) {
            if (BuildHelper.isApi21_LollipopOrLater()) {
                selectCodecDecoder16orLater = getSelectCodecDecoder21orLater(AMIME_VIDEO_AVC);
            } else {
                selectCodecDecoder16orLater = BuildHelper.isApi16_JellyBeanOrLater() ? getSelectCodecDecoder16orLater(AMIME_VIDEO_AVC) : null;
            }
            sAVCDecoder = selectCodecDecoder16orLater;
        }
        return sAVCDecoder;
    }

    public static String getH265Decoder(boolean z) {
        String selectCodecDecoder16orLater;
        if (sHEVCDecoder == null && z) {
            if (BuildHelper.isApi21_LollipopOrLater()) {
                selectCodecDecoder16orLater = getSelectCodecDecoder21orLater(AMIME_VIDEO_HEVC);
            } else {
                selectCodecDecoder16orLater = BuildHelper.isApi16_JellyBeanOrLater() ? getSelectCodecDecoder16orLater(AMIME_VIDEO_HEVC) : null;
            }
            sHEVCDecoder = selectCodecDecoder16orLater;
        }
        return sHEVCDecoder;
    }
}
