package com.hunantv.media.config;

import android.content.Context;
import com.google.gson.Gson;
import com.hunantv.media.drm.cbcs.CbcsCoreDrmSession;
import com.hunantv.media.player.helper.BuildHelper;
import com.hunantv.media.player.helper.MediaCodecHelp;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.player.utils.ArrayUtil;
import com.hunantv.media.player.utils.StringUtil;
import com.hunantv.media.player.utils.SystemUtil;
import com.hunantv.media.report.c.d;
import com.hunantv.media.report.c.h;
import com.hunantv.media.utils.NumericUtil;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public class NetPlayConfig {
    public static final int CONFIG_CLOSE = 9;
    public static final int CONFIG_DEFAULT = 0;
    public static final int DRM_TYPE_AUDIO_MAES = 20;
    public static final int DRM_TYPE_CBCS_HLS = 6;
    public static final int DRM_TYPE_CENC_HLS = 4;
    public static final int DRM_TYPE_MARLIN_BBTS = 0;
    public static final int DRM_TYPE_SM4_HLS = 5;
    private static final String TAG = "NetPlayConfig";
    private static boolean sAACExAudioEnable = false;
    private static boolean sAlphaPlayEnable = false;
    private static boolean sAudioTimestampEnable = false;
    public static int sConfig4K = 0;
    public static int sConfigAIQEDef = 0;
    public static int sConfigCodecSWRender = 0;
    public static int sConfigDRMRootOK = 0;
    public static int sConfigDnsCache = 0;
    public static int sConfigDnsType = 0;
    public static int sConfigFastMode = 0;
    public static int sConfigH265 = 0;
    public static int sConfigHUAWEILatency = 1;
    public static int sConfigHdr = 0;
    public static int sConfigMgtvMediaCodec = 0;
    public static int sConfigMultiDrmOrder = 0;
    public static int sConfigOppoSr = 0;
    public static int sConfigP2pHttpDns = 0;
    public static int sConfigPlayCheckVsrVulkan = 0;
    public static int sConfigPlayMaxSpeedType = 0;
    public static int sConfigPreferDrmType = 0;
    public static int sConfigPrivateHDR = 0;
    public static int sConfigRenderOpengl = 9;
    public static int sConfigSWRenderType = 0;
    public static int sConfigWanosV2Enable = 0;
    public static int sConfigWanosVersion = 0;
    private static boolean sCtxModifyErrEnable = false;
    private static boolean sDefaultAIQEEnable = false;
    private static boolean sDrmProxyEnable = false;
    private static boolean sExDefEnable = false;
    private static volatile NetPlayConfig sGlobalNetPlayConfig = null;
    private static volatile String sGlobalNetPlayConfigStr = null;
    private static boolean sHightSpeedEnable = false;
    private static boolean sImgoVsrEnable = false;
    private static boolean sNativeOpenglEnable = false;
    public static int sPlayercoreVersion = 2;
    private static boolean sReportModeBatchEnable = false;
    private static boolean sReportModeSingleEnable = false;
    private static boolean sSmoothSwitchEnable = true;
    private static boolean sSpatializerEnable = false;
    private static boolean sWanosAudioEnable = false;
    public String addrinfo_type;
    public String player_support;
    private static final String[] sCodecSWRenderBlackList = {"BND-AL00", "M2011K2C"};
    private static final String[] sHeadsetBlackList = {"PEEM00"};
    private static String[] sCodecBgStopWhiteList = {"sdm710", "sm8350", "sm4350"};
    private static String sNetworkType = "None";
    public int mp_type = -1;
    public int is_soft = -1;
    public int render_type = -1;
    public int decodetype = -1;
    public int accurate_seek = -1;
    public int open_timeout = -1;
    public int rw_timeout = -1;
    public int addrinfo_timeout = -1;
    public int buffer_timeout = -1;
    public int ts_not_skip = -1;
    public int load_retry_time = -1;
    public int datasource_async = -1;
    public int weak_net_speed = -1;
    public int dns_family_type = -1;
    public int http_persistent = -1;
    public int http_multiple = -1;
    public int m3u8_gzip = -1;

    public static int getConfigAIQEDef() {
        return sConfigAIQEDef;
    }

    public static int getConfigDRMRootOK() {
        return sConfigDRMRootOK;
    }

    public static boolean getConfigWanosV2Enable() {
        return sConfigWanosV2Enable == 1;
    }

    public static int getConfigWanosVersion() {
        return sConfigWanosVersion;
    }

    public static int getFlowReportMode() {
        boolean z = sReportModeSingleEnable;
        if ((z && sReportModeBatchEnable) || (!z && !sReportModeBatchEnable)) {
            return 0;
        }
        if (z) {
            return 2;
        }
        return sReportModeBatchEnable ? 1 : 0;
    }

    public static synchronized String getGlobalNetPlayConfigStr() {
        return sGlobalNetPlayConfigStr;
    }

    public static synchronized String getNetworkType() {
        return sNetworkType;
    }

    public static int getPlayCheckVsrVulkan() {
        return sConfigPlayCheckVsrVulkan;
    }

    public static int getPlayMaxSpeedType() {
        return sConfigPlayMaxSpeedType;
    }

    public static int getPlayercoreVersion() {
        return sPlayercoreVersion;
    }

    public static int getPreferDrmType() {
        return sConfigPreferDrmType;
    }

    public static synchronized String getPrst() {
        if (sGlobalNetPlayConfig == null) {
            return "";
        }
        return sGlobalNetPlayConfig.player_support;
    }

    public static NetPlayConfig getsGlobalNetPlayConfig() {
        return sGlobalNetPlayConfig;
    }

    private static boolean inBlackList(String str) {
        return ArrayUtil.inArrayIgnoreCase(sCodecSWRenderBlackList, str);
    }

    public static boolean inHeadsetBlackList(String str) {
        return ArrayUtil.inArrayIgnoreCase(sHeadsetBlackList, str);
    }

    public static boolean is4KOpen() {
        return sConfig4K == 1;
    }

    public static boolean isAACExAudioEnable() {
        return sAACExAudioEnable;
    }

    public static boolean isAlphaPlayEnable() {
        return sAlphaPlayEnable;
    }

    public static boolean isAudioTimestampEnable() {
        if (!BuildHelper.isApi26_AndroidOOrLater()) {
            return false;
        }
        if (h.b()) {
            return SystemUtil.getHwEmuiAPILevel() >= 25 && isHUAWEILatencyOpen();
        }
        if (h.c()) {
            return isHONORLatencyOpen();
        }
        return sAudioTimestampEnable;
    }

    public static boolean isCodecSWRenderMark() {
        return sConfigCodecSWRender == 6 || inBlackList(NetPlayConfigHelper.getMod());
    }

    public static boolean isCodecSWRenderOpen() {
        int i = sConfigCodecSWRender;
        return i == 5 || i == 6;
    }

    public static boolean isCtxModifyErrEnable() {
        return sCtxModifyErrEnable;
    }

    public static boolean isDefaultEnableImgoAIQE() {
        return sDefaultAIQEEnable;
    }

    public static boolean isDrmProxyEnable() {
        return false;
    }

    public static boolean isEnableSWOpengl() {
        return sConfigSWRenderType == 1;
    }

    public static boolean isExDefEnable() {
        return sExDefEnable;
    }

    public static boolean isHONORLatencyOpen() {
        return sConfigHUAWEILatency == 2;
    }

    public static boolean isHUAWEILatencyOpen() {
        return sConfigHUAWEILatency != 1;
    }

    public static boolean isHdrOpen() {
        if (sConfigHdr != 1) {
            return sConfigPrivateHDR == 1 && h.i();
        }
        return true;
    }

    public static boolean isHightSpeedEnable() {
        return sHightSpeedEnable;
    }

    public static boolean isImgoVsrEnable() {
        return sImgoVsrEnable;
    }

    public static boolean isNativeOpenglEnable() {
        return sNativeOpenglEnable;
    }

    public static boolean isOppoSrOpen() {
        return sConfigOppoSr == 1;
    }

    public static boolean isRenderOpenglOpen() {
        return sConfigRenderOpengl != 9;
    }

    public static boolean isSmoothSwitchEnable() {
        return sSmoothSwitchEnable;
    }

    public static boolean isSpatializerEnable() {
        return sSpatializerEnable;
    }

    public static boolean isWanosAudioEnable() {
        return sWanosAudioEnable || sAACExAudioEnable;
    }

    public static boolean isWanosAudioInnerEnable() {
        return sWanosAudioEnable;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0032. Please report as an issue. */
    public static synchronized void mapPlayerSupportS2Value(char c, int i) {
        String str;
        String str2;
        String str3;
        String str4;
        if (!validBooleanChar(c)) {
            DebugLog.i(TAG, "mapPlayerSupportS2Value invalid." + c + "-" + i);
            return;
        }
        switch (i) {
            case 2:
                if ('0' == c) {
                    sDrmProxyEnable = false;
                    str3 = TAG;
                    str4 = "sDrmProxyEnable = false";
                } else if ('1' != c) {
                    str = TAG;
                    str2 = "invalid sDrmProxyEnable value:" + c + StringUtils.PROCESS_POSTFIX_DELIMITER + sDrmProxyEnable;
                    DebugLog.i(str, str2);
                } else {
                    sDrmProxyEnable = true;
                    str3 = TAG;
                    str4 = "sDrmProxyEnable = true";
                }
                DebugLog.i(str3, str4);
                break;
            case 3:
                if ('0' == c) {
                    sNativeOpenglEnable = false;
                    str3 = TAG;
                    str4 = "sNativeOpenglEnable = false";
                } else if ('1' != c) {
                    str = TAG;
                    str2 = "invalid sNativeOpenglEnable value:" + c + StringUtils.PROCESS_POSTFIX_DELIMITER + sNativeOpenglEnable;
                    DebugLog.i(str, str2);
                } else {
                    sNativeOpenglEnable = true;
                    str3 = TAG;
                    str4 = "sNativeOpenglEnable = true";
                }
                DebugLog.i(str3, str4);
                break;
            case 4:
                if ('0' == c) {
                    sAudioTimestampEnable = false;
                    str3 = TAG;
                    str4 = "sAudioTimestampEnable = false";
                } else if ('1' != c) {
                    str = TAG;
                    str2 = "invalid sAudioTimestampEnable value:" + c + StringUtils.PROCESS_POSTFIX_DELIMITER + sAudioTimestampEnable;
                    DebugLog.i(str, str2);
                } else {
                    sAudioTimestampEnable = true;
                    str3 = TAG;
                    str4 = "sAudioTimestampEnable = true";
                }
                DebugLog.i(str3, str4);
                break;
            case 5:
                if ('0' == c) {
                    sSmoothSwitchEnable = false;
                    str3 = TAG;
                    str4 = "sSmoothSwitchEnable = false";
                } else if ('1' != c) {
                    str = TAG;
                    str2 = "invalid sSmoothSwitchEnable value:" + c + StringUtils.PROCESS_POSTFIX_DELIMITER + sSmoothSwitchEnable;
                    DebugLog.i(str, str2);
                } else {
                    sSmoothSwitchEnable = true;
                    str3 = TAG;
                    str4 = "sSmoothSwitchEnable = true";
                }
                DebugLog.i(str3, str4);
                break;
            case 6:
                if ('0' == c) {
                    sExDefEnable = false;
                    str3 = TAG;
                    str4 = "sExDefEnable = false";
                } else if ('1' != c) {
                    str = TAG;
                    str2 = "invalid sExDefEnable value:" + c + StringUtils.PROCESS_POSTFIX_DELIMITER + sExDefEnable;
                    DebugLog.i(str, str2);
                } else {
                    sExDefEnable = true;
                    str3 = TAG;
                    str4 = "sExDefEnable = true";
                }
                DebugLog.i(str3, str4);
                break;
            case 7:
                if ('0' == c) {
                    sAlphaPlayEnable = false;
                    str3 = TAG;
                    str4 = "sAlphaPlayEnable = false";
                } else if ('1' != c) {
                    str = TAG;
                    str2 = "invalid sAlphaPlayEnable value:" + c + StringUtils.PROCESS_POSTFIX_DELIMITER + sAlphaPlayEnable;
                    DebugLog.i(str, str2);
                } else {
                    sAlphaPlayEnable = true;
                    str3 = TAG;
                    str4 = "sAlphaPlayEnable = true";
                }
                DebugLog.i(str3, str4);
                break;
            case 8:
                if ('0' == c) {
                    sReportModeSingleEnable = false;
                    str3 = TAG;
                    str4 = "sReportModeSingleEnable = false";
                } else if ('1' != c) {
                    str = TAG;
                    str2 = "invalid sReportModeSingleEnable value:" + c + StringUtils.PROCESS_POSTFIX_DELIMITER + sReportModeSingleEnable;
                    DebugLog.i(str, str2);
                } else {
                    sReportModeSingleEnable = true;
                    str3 = TAG;
                    str4 = "sReportModeSingleEnable = true";
                }
                DebugLog.i(str3, str4);
                break;
            case 9:
                if ('0' == c) {
                    sReportModeBatchEnable = false;
                    str3 = TAG;
                    str4 = "sReportModeBatchEnable = false";
                } else if ('1' != c) {
                    str = TAG;
                    str2 = "invalid sReportModeBatchEnable value:" + c + StringUtils.PROCESS_POSTFIX_DELIMITER + sReportModeBatchEnable;
                    DebugLog.i(str, str2);
                } else {
                    sReportModeBatchEnable = true;
                    str3 = TAG;
                    str4 = "sReportModeBatchEnable = true";
                }
                DebugLog.i(str3, str4);
                break;
            case 10:
                if ('0' == c) {
                    sWanosAudioEnable = false;
                    str3 = TAG;
                    str4 = "sWanosAudioEnable = false";
                } else if ('1' != c) {
                    str = TAG;
                    str2 = "invalid sWanosAudioEnable value:" + c + StringUtils.PROCESS_POSTFIX_DELIMITER + sWanosAudioEnable;
                    DebugLog.i(str, str2);
                } else {
                    sWanosAudioEnable = true;
                    str3 = TAG;
                    str4 = "sWanosAudioEnable = true";
                }
                DebugLog.i(str3, str4);
                break;
            case 11:
                if ('0' == c) {
                    sAACExAudioEnable = false;
                    str3 = TAG;
                    str4 = "sAACExAudioEnable = false";
                } else if ('1' != c) {
                    str = TAG;
                    str2 = "invalid sAACExAudioEnable value:" + c + StringUtils.PROCESS_POSTFIX_DELIMITER + sAACExAudioEnable;
                    DebugLog.i(str, str2);
                } else {
                    sAACExAudioEnable = true;
                    str3 = TAG;
                    str4 = "sAACExAudioEnable = true";
                }
                DebugLog.i(str3, str4);
                break;
            case 12:
                if ('0' == c) {
                    sImgoVsrEnable = false;
                    str3 = TAG;
                    str4 = "sImgoVsrEnable = false";
                } else if ('1' != c) {
                    str = TAG;
                    str2 = "invalid sImgoVsrEnable value:" + c + StringUtils.PROCESS_POSTFIX_DELIMITER + sImgoVsrEnable;
                    DebugLog.i(str, str2);
                } else {
                    sImgoVsrEnable = true;
                    str3 = TAG;
                    str4 = "sImgoVsrEnable = true";
                }
                DebugLog.i(str3, str4);
                break;
            case 13:
                if ('0' == c) {
                    sCtxModifyErrEnable = false;
                    str3 = TAG;
                    str4 = "sCtxModifyErrEnable = false";
                } else if ('1' != c) {
                    str = TAG;
                    str2 = "invalid sCtxModifyErrEnable value:" + c + StringUtils.PROCESS_POSTFIX_DELIMITER + sAACExAudioEnable;
                    DebugLog.i(str, str2);
                } else {
                    sCtxModifyErrEnable = true;
                    str3 = TAG;
                    str4 = "sCtxModifyErrEnable = true";
                }
                DebugLog.i(str3, str4);
                break;
            case 14:
                if ('0' == c) {
                    sHightSpeedEnable = false;
                    str3 = TAG;
                    str4 = "sHightSpeedEnable = false";
                } else if ('1' != c) {
                    str = TAG;
                    str2 = "invalid sHightSpeedEnable value:" + c + StringUtils.PROCESS_POSTFIX_DELIMITER + sHightSpeedEnable;
                    DebugLog.i(str, str2);
                } else {
                    sHightSpeedEnable = true;
                    str3 = TAG;
                    str4 = "sHightSpeedEnable = true";
                }
                DebugLog.i(str3, str4);
                break;
            case 15:
                if ('0' == c) {
                    sSpatializerEnable = false;
                    str3 = TAG;
                    str4 = "sSpatializerEnable = false";
                } else if ('1' != c) {
                    str = TAG;
                    str2 = "invalid sSpatializerEnable value:" + c + StringUtils.PROCESS_POSTFIX_DELIMITER + sSpatializerEnable;
                    DebugLog.i(str, str2);
                } else {
                    sSpatializerEnable = true;
                    str3 = TAG;
                    str4 = "sSpatializerEnable = true";
                }
                DebugLog.i(str3, str4);
                break;
        }
    }

    public static synchronized void parseAddrInfoType(String str) {
        try {
            if (StringUtil.isEmpty(str)) {
                return;
            }
            char[] charArray = str.toCharArray();
            if (charArray != null && charArray.length > 0) {
                DebugLog.i(TAG, "parseAddrInfoType:" + str);
                int length = charArray.length;
                int i = 1;
                for (int i2 = 0; i2 < length; i2++) {
                    char c = charArray[i2];
                    switch (i) {
                        case 1:
                            sConfigH265 = NumericUtil.parseInt(String.valueOf(c), 0);
                            if ('9' == c) {
                                DebugLog.i(TAG, "sH265Enable = false");
                                MediaCodecHelp.sH265Enable = false;
                            } else {
                                DebugLog.i(TAG, "sH265Enable = true");
                                MediaCodecHelp.sH265Enable = true;
                            }
                            break;
                        case 2:
                            sConfigDnsType = NumericUtil.parseInt(String.valueOf(c), 0);
                            break;
                        case 3:
                            sConfigDnsCache = NumericUtil.parseInt(String.valueOf(c), 0);
                            break;
                        case 4:
                            sConfigFastMode = NumericUtil.parseInt(String.valueOf(c), 0);
                            break;
                        case 5:
                            sConfigP2pHttpDns = NumericUtil.parseInt(String.valueOf(c), 0);
                            break;
                        case 6:
                            sConfigMgtvMediaCodec = NumericUtil.parseInt(String.valueOf(c), 0);
                            break;
                        case 7:
                            sConfigRenderOpengl = NumericUtil.parseInt(String.valueOf(c), 0);
                            break;
                        case 8:
                            sConfigHUAWEILatency = NumericUtil.parseInt(String.valueOf(c), 0);
                            break;
                        case 9:
                            sConfigHdr = NumericUtil.parseInt(String.valueOf(c), 0);
                            break;
                        case 10:
                            sConfig4K = NumericUtil.parseInt(String.valueOf(c), 0);
                            break;
                        case 11:
                            sConfigCodecSWRender = NumericUtil.parseInt(String.valueOf(c), 0);
                            break;
                        case 12:
                            sConfigOppoSr = NumericUtil.parseInt(String.valueOf(c), 0);
                            break;
                        case 13:
                            sConfigPreferDrmType = NumericUtil.parseInt(String.valueOf(c), 0);
                            break;
                        case 14:
                            sConfigPrivateHDR = NumericUtil.parseInt(String.valueOf(c), 0);
                            break;
                        case 15:
                            int i3 = NumericUtil.parseInt(String.valueOf(c), 0);
                            sConfigMultiDrmOrder = i3;
                            CbcsCoreDrmSession.setMultiDrmOrder(i3);
                            break;
                        case 16:
                            sConfigSWRenderType = NumericUtil.parseInt(String.valueOf(c), 0);
                            break;
                        case 17:
                            sConfigPlayMaxSpeedType = NumericUtil.parseInt(String.valueOf(c), 0);
                            break;
                        case 18:
                            sConfigPlayCheckVsrVulkan = NumericUtil.parseInt(String.valueOf(c), 0);
                            break;
                        case 19:
                            sConfigDRMRootOK = NumericUtil.parseInt(String.valueOf(c), 0);
                            break;
                        case 20:
                            sConfigAIQEDef = NumericUtil.parseInt(String.valueOf(c), 0);
                            break;
                        case 21:
                            sConfigWanosV2Enable = NumericUtil.parseInt(String.valueOf(c), 0);
                            break;
                        case 22:
                            sConfigWanosVersion = NumericUtil.parseInt(String.valueOf(c), 0);
                            break;
                    }
                    i++;
                }
                DebugLog.i(TAG, "parseAddrInfoType sConfigH265:" + sConfigH265 + ",sConfigDnsType:" + sConfigDnsType + ",sConfigDnsCache:" + sConfigDnsCache + ",sConfigFastMode:" + sConfigFastMode + ",sConfigP2pHttpDns:" + sConfigP2pHttpDns + ",sConfigMgtvMediaCodec:" + sConfigMgtvMediaCodec + ",sConfigPreferDrmType:" + sConfigPreferDrmType + ",sConfigSWRenderType:" + sConfigSWRenderType + ",sConfigPlayMaxSpeedType:" + sConfigPlayMaxSpeedType + ",sConfigHdr:" + sConfigHdr + ",sConfigPrivateHDR:" + sConfigPrivateHDR + ",sConfigPlayCheckVsrVulkan:" + sConfigPlayCheckVsrVulkan + ",sConfigDRMRootOK:" + sConfigDRMRootOK + ",sConfigRenderOpengl:" + sConfigRenderOpengl + ",sConfigAIQEDef:" + sConfigAIQEDef);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized void parsePlayerSupport(String str) {
        if (StringUtil.isEmpty(str)) {
            return;
        }
        try {
            String[] strArrSplit = str.split("-");
            if (strArrSplit != null && strArrSplit.length >= 2) {
                String str2 = strArrSplit[0];
                int i = 1;
                String str3 = strArrSplit[1];
                if (validBooleanStr(str2) && !StringUtil.isEmpty(str3)) {
                    char[] charArray = str3.toCharArray();
                    if (charArray != null && charArray.length > 0) {
                        for (char c : charArray) {
                            mapPlayerSupportS2Value(c, i);
                            i++;
                        }
                        return;
                    }
                    return;
                }
                DebugLog.i(TAG, "player_support invalid s1 or s2");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static synchronized void setGlobalNetPlayConfig(NetPlayConfig netPlayConfig) {
        DebugLog.i(TAG, "setGlobalNetPlayConfig " + netPlayConfig);
        sGlobalNetPlayConfig = netPlayConfig;
        if (sGlobalNetPlayConfig != null) {
            parseAddrInfoType(netPlayConfig.addrinfo_type);
            parsePlayerSupport(sGlobalNetPlayConfig.player_support);
        }
    }

    public static synchronized void setGlobalNetPlayConfigStr(String str) {
        String str2 = TAG;
        DebugLog.i(str2, "setGlobalNetPlayConfigStr :" + str);
        sGlobalNetPlayConfigStr = str;
        NetPlayConfigWrapper netPlayConfigWrapper = (NetPlayConfigWrapper) new Gson().fromJson(str, NetPlayConfigWrapper.class);
        sGlobalNetPlayConfig = netPlayConfigWrapper.data;
        setGlobalNetPlayConfig(sGlobalNetPlayConfig);
        DebugLog.i(str2, "setGlobalNetPlayConfigStr wrapper.data :" + netPlayConfigWrapper.data);
    }

    public static synchronized void setNetworkType(String str) {
        sNetworkType = str;
    }

    public static void setPlayercoreVersion(int i) {
        DebugLog.i(TAG, "setPlayercoreVersion : " + i);
        sPlayercoreVersion = i;
    }

    public static synchronized void updateNetworkType(Context context) {
        sNetworkType = d.a(context);
    }

    public static boolean validBooleanChar(char c) {
        return c == '0' || c == '1';
    }

    public static boolean validBooleanStr(String str) {
        if (StringUtil.isEmpty(str)) {
            return false;
        }
        return "0".equalsIgnoreCase(str) || "1".equalsIgnoreCase(str);
    }

    public int getAccurate_seek() {
        return this.accurate_seek;
    }

    public int getAddrinfo_timeout() {
        return this.addrinfo_timeout;
    }

    public String getAddrinfo_type() {
        return this.addrinfo_type;
    }

    public int getBuffer_timeout() {
        return this.buffer_timeout;
    }

    public int getDatasource_async() {
        return this.datasource_async;
    }

    public int getDecodetype() {
        return this.decodetype;
    }

    public int getDns_family_type() {
        return this.dns_family_type;
    }

    public int getHttp_multiple() {
        return this.http_multiple;
    }

    public int getHttp_persistent() {
        return this.http_persistent;
    }

    public int getIs_soft() {
        return this.is_soft;
    }

    public int getLoad_retry_time() {
        return this.load_retry_time;
    }

    public int getM3u8_gzip() {
        return this.m3u8_gzip;
    }

    public int getMp_type() {
        return this.mp_type;
    }

    public int getOpen_timeout() {
        return this.open_timeout;
    }

    public String getPlayer_support() {
        return this.player_support;
    }

    public int getRender_type() {
        return this.render_type;
    }

    public int getRw_timeout() {
        return this.rw_timeout;
    }

    public int getTs_not_skip() {
        return this.ts_not_skip;
    }

    public int getWeak_net_speed() {
        return this.weak_net_speed;
    }

    public NetPlayConfig setAccurate_seek(int i) {
        this.accurate_seek = i;
        return this;
    }

    public NetPlayConfig setAddrinfo_timeout(int i) {
        this.addrinfo_timeout = i;
        return this;
    }

    @Deprecated
    public NetPlayConfig setAddrinfo_type(int i) {
        return this;
    }

    public NetPlayConfig setBuffer_timeout(int i) {
        this.buffer_timeout = i;
        return this;
    }

    public NetPlayConfig setDatasource_async(int i) {
        this.datasource_async = i;
        return this;
    }

    public NetPlayConfig setDecodetype(int i) {
        this.decodetype = i;
        return this;
    }

    public NetPlayConfig setDns_family_type(int i) {
        this.dns_family_type = i;
        return this;
    }

    public NetPlayConfig setHttp_multiple(int i) {
        this.http_multiple = i;
        return this;
    }

    public NetPlayConfig setHttp_persistent(int i) {
        this.http_persistent = i;
        return this;
    }

    public NetPlayConfig setIs_soft(int i) {
        this.is_soft = i;
        return this;
    }

    public NetPlayConfig setLoad_retry_time(int i) {
        this.load_retry_time = i;
        return this;
    }

    public NetPlayConfig setM3u8_gzip(int i) {
        this.m3u8_gzip = i;
        return this;
    }

    public NetPlayConfig setMp_type(int i) {
        this.mp_type = i;
        return this;
    }

    public NetPlayConfig setOpen_timeout(int i) {
        this.open_timeout = i;
        return this;
    }

    public NetPlayConfig setPlayer_support(String str) {
        this.player_support = str;
        return this;
    }

    public NetPlayConfig setRender_type(int i) {
        this.render_type = i;
        return this;
    }

    public NetPlayConfig setRw_timeout(int i) {
        this.rw_timeout = i;
        return this;
    }

    public NetPlayConfig setTs_not_skip(int i) {
        this.ts_not_skip = i;
        return this;
    }

    public NetPlayConfig setWeak_net_speed(int i) {
        this.weak_net_speed = i;
        return this;
    }

    public String toString() {
        return "NetPlayConfig{mp_type=" + this.mp_type + ", is_soft=" + this.is_soft + ", render_type=" + this.render_type + ", decodetype=" + this.decodetype + ", accurate_seek=" + this.accurate_seek + ", open_timeout=" + this.open_timeout + ", rw_timeout=" + this.rw_timeout + ", addrinfo_type=" + this.addrinfo_type + ", addrinfo_timeout=" + this.addrinfo_timeout + ", buffer_timeout=" + this.buffer_timeout + ", ts_not_skip=" + this.ts_not_skip + ", load_retry_time=" + this.load_retry_time + ", datasource_async=" + this.datasource_async + ", weak_net_speed=" + this.weak_net_speed + ", dns_family_type=" + this.dns_family_type + ", http_persistent=" + this.http_persistent + ", http_multiple=" + this.http_multiple + ", m3u8_gzip=" + this.m3u8_gzip + ", player_support=" + this.player_support + '}';
    }

    public NetPlayConfig setAddrinfo_type(String str) {
        this.addrinfo_type = str;
        return this;
    }
}
