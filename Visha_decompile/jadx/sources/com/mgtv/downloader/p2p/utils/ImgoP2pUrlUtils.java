package com.mgtv.downloader.p2p.utils;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.Locale;

public class ImgoP2pUrlUtils {
    public static boolean isSuffixFile(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        try {
            Locale locale = Locale.US;
            return new URL(str.toLowerCase(locale)).getPath().endsWith(str2.toLowerCase(locale));
        } catch (MalformedURLException e) {
            e.printStackTrace();
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
