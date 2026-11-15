package com.hunantv.media.utils;

import com.hunantv.media.player.pragma.DebugLog;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.StringReader;
import java.nio.charset.Charset;

public class KeyFrameInfoUtils {
    public static final int OK = 0;
    private static final String TAG = "KeyInfoTools";

    public static int isKeyFrameDataValid(byte[] bArr, String str) throws Throwable {
        DebugLog.i(TAG, "parseKeyFrameData in");
        if (bArr == null) {
            DebugLog.i(TAG, "parseKeyFrameData out");
            return -1;
        }
        BufferedReader bufferedReader = null;
        try {
            try {
                if (bArr.length < 35) {
                    DebugLog.i(TAG, "parseKeyFrameData out");
                    return -2;
                }
                String str2 = new String(bArr, Charset.forName("utf-8"));
                if (com.hunantv.media.player.utils.StringUtil.isHtml(str2)) {
                    DebugLog.i(TAG, "parseKeyFrameData out");
                    return -11;
                }
                if (!str2.contains("ENDLIST")) {
                    DebugLog.i(TAG, "parseKeyFrameData out");
                    return -5;
                }
                BufferedReader bufferedReader2 = new BufferedReader(new StringReader(str2));
                int i = 0;
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null || i >= 10) {
                            break;
                        }
                        i++;
                        if (line.contains("VERSION:")) {
                            i4 = NumericUtil.parseInt(line.split(StringUtils.PROCESS_POSTFIX_DELIMITER)[1], 0);
                        }
                        if (line.contains("WIDTH:")) {
                            i2 = NumericUtil.parseInt(line.split(StringUtils.PROCESS_POSTFIX_DELIMITER)[1], 0);
                        }
                        if (line.contains("HEIGHT:")) {
                            i3 = NumericUtil.parseInt(line.split(StringUtils.PROCESS_POSTFIX_DELIMITER)[1], 0);
                        }
                        if (i4 >= 3 && str != null && str.length() == 32 && line.contains("VIDEO-HASH:")) {
                            String str3 = line.split(StringUtils.PROCESS_POSTFIX_DELIMITER)[1];
                            if (!str3.equals(str)) {
                                DebugLog.e(TAG, "isKeyFrameDataValid keyHash not valid. keyHash:" + str3 + "\nvideoHash:" + str);
                                try {
                                    bufferedReader2.close();
                                } catch (IOException e) {
                                    e.printStackTrace();
                                }
                                DebugLog.i(TAG, "parseKeyFrameData out");
                                return -9;
                            }
                        }
                    } catch (Exception e2) {
                        e = e2;
                        bufferedReader = bufferedReader2;
                        e.printStackTrace();
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                        DebugLog.i(TAG, "parseKeyFrameData out");
                        return -3;
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                    }
                }
                if (i2 <= 0 || i3 <= 0) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                    DebugLog.i(TAG, "parseKeyFrameData out");
                    return -6;
                }
                try {
                    bufferedReader2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
                DebugLog.i(TAG, "parseKeyFrameData out");
                return 0;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e6) {
            e = e6;
        }
        if (bufferedReader != null) {
            try {
                bufferedReader.close();
            } catch (IOException e7) {
                e7.printStackTrace();
            }
        }
        DebugLog.i(TAG, "parseKeyFrameData out");
        throw th;
    }
}
