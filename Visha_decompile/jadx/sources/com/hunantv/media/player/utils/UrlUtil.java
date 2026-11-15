package com.hunantv.media.player.utils;

import android.net.Uri;
import com.alibaba.android.arouter.utils.Consts;
import com.just.agentweb.DefaultWebClient;
import com.transsion.videodownloader.model.Video;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.Locale;

public class UrlUtil {
    public static final String STR_FILE = "file";

    public static String addLocalPrefix(String str) {
        if (str == null || isFilePrefix(str)) {
            return str;
        }
        return "file://" + str;
    }

    public static boolean existParams(String str) {
        if (StringUtil.isEmpty(str)) {
            return false;
        }
        try {
            return str.indexOf("?") > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String fromUtf8Bytes(byte[] bArr) {
        return new String(bArr, Charset.forName("UTF-8"));
    }

    public static String getFileName(String str) {
        Uri uri;
        try {
            if (!StringUtil.isEmpty(str) && (uri = Uri.parse(str)) != null && uri.getPath() != null) {
                String[] strArrSplit = uri.getPath().split("/");
                if (strArrSplit.length >= 1) {
                    return strArrSplit[strArrSplit.length - 1];
                }
                return null;
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String getHostName(String str) {
        try {
            if (StringUtil.isEmpty(str)) {
                return null;
            }
            return Uri.parse(str).getHost();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getProtocol(String str) {
        try {
            if (StringUtil.isEmpty(str)) {
                return "file";
            }
            Uri uri = Uri.parse(str);
            return uri.getScheme() != null ? uri.getScheme() : "file";
        } catch (Exception e) {
            e.printStackTrace();
            return "file";
        }
    }

    public static String getSuffix(String str) {
        if (str == null) {
            return null;
        }
        try {
            Locale locale = Locale.US;
            String path = Uri.parse(str.toLowerCase(locale)).getPath();
            int iLastIndexOf = path.lastIndexOf(Consts.DOT);
            if (iLastIndexOf != -1) {
                return path.substring(iLastIndexOf + 1).toLowerCase(locale);
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getUrlParamsValue(String str, String str2) {
        if (!StringUtil.isEmpty(str) && !StringUtil.isEmpty(str2)) {
            String str3 = "&" + str2 + "=";
            try {
                int iIndexOf = str.indexOf(str3);
                if (iIndexOf >= 0) {
                    String strSubstring = str.substring(iIndexOf + str3.length());
                    if (StringUtil.isEmpty(strSubstring)) {
                        return null;
                    }
                    int iIndexOf2 = strSubstring.indexOf("&");
                    return iIndexOf2 >= 0 ? strSubstring.substring(0, iIndexOf2) : strSubstring;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public static String getValidHttpUrl(String str) {
        if (StringUtil.isEmpty(str)) {
            return null;
        }
        int iIndexOf = str.indexOf(DefaultWebClient.HTTP_SCHEME);
        if (iIndexOf == -1 && (iIndexOf = str.indexOf("https://")) == -1) {
            return null;
        }
        return str.substring(iIndexOf);
    }

    public static String getValidUrl(String str) {
        if (StringUtil.isEmpty(str)) {
            return str;
        }
        int iIndexOf = str.indexOf(DefaultWebClient.HTTP_SCHEME);
        return (iIndexOf == -1 && (iIndexOf = str.indexOf("https://")) == -1) ? str : str.substring(iIndexOf);
    }

    public static boolean isFilePrefix(String str) {
        return str != null && str.toLowerCase(Locale.US).startsWith("file://");
    }

    public static boolean isLocal(String str) {
        return str != null && "file".equalsIgnoreCase(getProtocol(str));
    }

    public static boolean isM3u8(String str) {
        return isSuffixUrl(str, Video.SUFFIX.SUFFIX_M3U8) || isSuffixUrl(str, ".m3u");
    }

    public static boolean isSegment(String str) {
        return isSuffixUrl(str, ".ts") || isSuffixUrl(str, ".m4s") || isSuffixUrl(str, Video.SUFFIX.SUFFIX_MP4);
    }

    public static boolean isSuffixUrl(String str, String str2) {
        if (str != null && str2 != null) {
            try {
                Locale locale = Locale.US;
                Uri uri = Uri.parse(str.toLowerCase(locale));
                if (StringUtil.isEmpty(uri.getPath())) {
                    return false;
                }
                return uri.getPath().endsWith(str2.toLowerCase(locale));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public static String urlEncode(String str) {
        if (StringUtil.isEmpty(str)) {
            return str;
        }
        try {
            return URLEncoder.encode(str);
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    public static String[] addLocalPrefix(String[] strArr) {
        if (strArr == null || strArr.length <= 0) {
            return strArr;
        }
        String[] strArr2 = new String[strArr.length];
        int i = 0;
        for (String str : strArr) {
            strArr2[i] = addLocalPrefix(str);
            i++;
        }
        return strArr2;
    }
}
