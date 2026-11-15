package com.hunantv.media.utils;

import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.report.c.f;
import java.io.File;
import java.io.FileInputStream;

public class LocalHelper {
    private static final String TAG = "LocalHelper";

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$hunantv$media$utils$LocalHelper$MediaType;

        static {
            int[] iArr = new int[MediaType.values().length];
            $SwitchMap$com$hunantv$media$utils$LocalHelper$MediaType = iArr;
            try {
                iArr[MediaType.MP4.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$hunantv$media$utils$LocalHelper$MediaType[MediaType.HLS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum MediaType {
        MP4,
        HLS
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v7 */
    private static boolean checkHLS(File file) throws Throwable {
        if (file.length() < 25) {
            return false;
        }
        byte[] bArr = new byte[200];
        ?? r2 = 0;
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(file);
                int i = 0;
                while (true) {
                    int i2 = 200 - i;
                    if (i2 <= 0) {
                        break;
                    }
                    try {
                        int i3 = fileInputStream2.read(bArr, i, i2);
                        if (i3 < 0) {
                            break;
                        }
                        i += i3;
                    } catch (Exception e) {
                        e = e;
                        fileInputStream = fileInputStream2;
                        e.printStackTrace();
                        f.a(fileInputStream);
                        r2 = fileInputStream;
                    } catch (Throwable th) {
                        th = th;
                        r2 = fileInputStream2;
                        f.a(r2);
                        throw th;
                    }
                }
                if (i < 25) {
                    f.a(fileInputStream2);
                    return false;
                }
                String str = new String(bArr, 0, i);
                if (!com.hunantv.media.player.utils.StringUtil.isEmpty(str) && str.contains("#EXTM3U") && (str.contains("#EXT-X-STREAM-INF:") || str.contains("#EXT-X-TARGETDURATION:") || str.contains("#EXT-X-MEDIA-SEQUENCE:"))) {
                    f.a(fileInputStream2);
                    return true;
                }
                f.a(fileInputStream2);
                r2 = str;
                return false;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    private static boolean checkMP4(File file) {
        return file.length() > 8;
    }

    private static String filterLocalProtocol(String str) {
        try {
            if (str.startsWith("file:")) {
                int i = 5;
                while (i < str.length() && str.charAt(i) == '/') {
                    i++;
                }
                return str.substring(i - 1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

    public static boolean validLocalPath(String str, MediaType mediaType) {
        boolean zValidLocalPathImpl = validLocalPathImpl(str, mediaType);
        DebugLog.i(TAG, "validLocalPath: " + zValidLocalPathImpl);
        return zValidLocalPathImpl;
    }

    private static boolean validLocalPathImpl(String str, MediaType mediaType) {
        if (com.hunantv.media.player.utils.StringUtil.isEmpty(str)) {
            return false;
        }
        try {
            File file = new File(filterLocalProtocol(str));
            if (file.exists() && !file.isDirectory()) {
                int i = AnonymousClass1.$SwitchMap$com$hunantv$media$utils$LocalHelper$MediaType[mediaType.ordinal()];
                if (i == 1) {
                    return checkMP4(file);
                }
                if (i != 2) {
                    return true;
                }
                return checkHLS(file);
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
