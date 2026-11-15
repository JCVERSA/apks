package com.mgtv.downloader.p2p.yunfan;

import com.mgtv.downloader.p2p.utils.ImgoP2pConstants;
import com.mgtv.downloader.p2p.utils.ImgoP2pUrlUtils;
import com.transsion.videodownloader.model.Video;
import java.net.MalformedURLException;
import java.net.URL;

public class YFUrlUtils {
    private static String analyzeOtherCdn(String str, String str2, String str3) {
        try {
            URL url = new URL(str);
            String path = url.getPath();
            String protocol = url.getProtocol();
            String host = url.getHost();
            String[] strArrSplit = path.split("/");
            if (isM3u8(str)) {
                return protocol + "://" + ImgoP2pConstants.MANGO_FIXED_HOST + "/" + host + "/" + str2 + "_" + str3 + Video.SUFFIX.SUFFIX_M3U8;
            }
            String str4 = "";
            for (int i = 3; i < strArrSplit.length; i++) {
                str4 = str4 + "/" + strArrSplit[i];
            }
            return protocol + "://" + ImgoP2pConstants.MANGO_FIXED_HOST + str4;
        } catch (MalformedURLException e) {
            e.printStackTrace();
            return str;
        } catch (Exception e2) {
            e2.printStackTrace();
            return str;
        }
    }

    private static String analyzePrivateCdn(String str, String str2, String str3) {
        try {
            URL url = new URL(str);
            String path = url.getPath();
            String protocol = url.getProtocol();
            if (!isM3u8(str)) {
                return protocol + "://" + ImgoP2pConstants.MANGO_FIXED_HOST + path;
            }
            return protocol + "://" + ImgoP2pConstants.MANGO_FIXED_HOST + "/" + ImgoP2pConstants.PRIVATE_CDN_HOST + "/" + str2 + "_" + str3 + Video.SUFFIX.SUFFIX_M3U8;
        } catch (MalformedURLException e) {
            e.printStackTrace();
            return str;
        } catch (Exception e2) {
            e2.printStackTrace();
            return str;
        }
    }

    public static String getKeyUrl(String str, String str2, String str3, String str4) {
        if (str == null) {
            return null;
        }
        return "1".equals(str2) ? analyzeOtherCdn(str, str3, str4) : analyzePrivateCdn(str, str3, str4);
    }

    public static boolean isM3u8(String str) {
        return ImgoP2pUrlUtils.isSuffixFile(str, Video.SUFFIX.SUFFIX_M3U8);
    }

    public static boolean notSupport(String str) {
        return str == null;
    }
}
