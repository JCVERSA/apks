package com.transsion.sniffer_load.sniffservice;

import defpackage.hk3;
import defpackage.r0a;
import java.util.Locale;

public class SniffDownloadUtil {
    public static final String TAG = "visha_SniffDownloadUtil";

    public static boolean canDownload(String str) {
        return isVideo(str) || isAudio(str) || isImage(str) || isSubtitle(str);
    }

    public static String getFileTypeFromMineType(String str) {
        int iIndexOf;
        return (r0a.g(str) || (iIndexOf = str.indexOf("/")) == -1) ? str : str.substring(iIndexOf + 1);
    }

    public static boolean isAudio(String str) {
        if (r0a.g(str)) {
            return false;
        }
        for (String str2 : SniffDownloadHelper.EXTENSION_AUDIO_ALL) {
            Locale locale = Locale.ROOT;
            if (str2.toLowerCase(locale).contains(str.toLowerCase(locale))) {
                return true;
            }
        }
        return false;
    }

    public static boolean isImage(String str) {
        if (r0a.g(str)) {
            return false;
        }
        for (String str2 : hk3.g) {
            Locale locale = Locale.ROOT;
            if (str2.toLowerCase(locale).contains(str.toLowerCase(locale))) {
                return true;
            }
        }
        return false;
    }

    public static boolean isSubtitle(String str) {
        if (r0a.g(str)) {
            return false;
        }
        for (String str2 : hk3.e) {
            Locale locale = Locale.ROOT;
            if (str2.toLowerCase(locale).contains(str.toLowerCase(locale))) {
                return true;
            }
        }
        return false;
    }

    public static boolean isVideo(String str) {
        if (r0a.g(str)) {
            return false;
        }
        for (String str2 : SniffDownloadHelper.EXTENSION_VIDEO_ALL) {
            Locale locale = Locale.ROOT;
            if (str2.toLowerCase(locale).contains(str.toLowerCase(locale))) {
                return true;
            }
        }
        return false;
    }
}
