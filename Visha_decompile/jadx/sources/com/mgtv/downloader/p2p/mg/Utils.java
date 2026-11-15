package com.mgtv.downloader.p2p.mg;

import android.content.Context;
import android.text.TextUtils;
import com.hunantv.imgo.util.n;
import com.mgtv.downloader.util.c;
import java.io.File;

public class Utils {
    private static final String TAG = "DownloadSDK_1.8.0";

    public static String byteArrayToString(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        try {
            return new String(bArr, "UTF-8");
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static File getExternalCacheDirectory(Context context) {
        return context.getExternalCacheDir();
    }

    public static void printTag(String str, int i, String str2, String str3) {
        try {
            String str4 = TextUtils.isEmpty(str2) ? String.format("[%s]%s", str, str3) : String.format("[%s][%s]%s", str2, str, str3);
            if (i == 3) {
                n.a(TAG, str4);
                return;
            }
            if (i == 4) {
                c.a(str4);
                return;
            }
            if (i == 5) {
                c.a(str4);
            } else if (i != 6) {
                c.a(str4);
            } else {
                c.a(str4);
                n.b(TAG, str4);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
