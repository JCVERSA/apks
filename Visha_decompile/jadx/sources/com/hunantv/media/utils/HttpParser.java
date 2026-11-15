package com.hunantv.media.utils;

import org.apache.commons.lang3.StringUtils;

public class HttpParser {
    public static int parseContentLength(String str) {
        int iMin;
        if (StringUtil.isSpace(str)) {
            return -1;
        }
        try {
            String strSubstring = str.substring(str.indexOf("Content-Length"));
            if (!StringUtil.isSpace(strSubstring) && (iMin = Math.min(strSubstring.indexOf(StringUtils.CR), strSubstring.indexOf("\n"))) >= 0) {
                String strTrim = strSubstring.substring(14, iMin).replace(io.appmetrica.analytics.coreutils.internal.StringUtils.PROCESS_POSTFIX_DELIMITER, "").trim();
                if (!StringUtil.isSpace(strTrim)) {
                    return NumericUtil.parseInt(strTrim, -1);
                }
            }
        } catch (Exception unused) {
        }
        return -1;
    }
}
