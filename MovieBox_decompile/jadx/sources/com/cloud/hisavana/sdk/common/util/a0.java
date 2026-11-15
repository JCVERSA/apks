package com.cloud.hisavana.sdk.common.util;

import android.util.Log;
import com.cloud.hisavana.sdk.b4;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class a0 {

    private static final String[] f21562a = {"0", "1", "2", "3", "4", "5", PrepareException.ERROR_NO_URL, "7", PrepareException.ERROR_MANIFEST_INFO, PrepareException.ERROR_MINI_APP_CLOSE, "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", "f"};

    private static String a(byte b10) {
        int i10 = b10;
        if (b10 < 0) {
            i10 = b10 + 256;
        }
        StringBuilder sb2 = new StringBuilder();
        String[] strArr = f21562a;
        sb2.append(strArr[i10 / 16]);
        sb2.append(strArr[i10 % 16]);
        return sb2.toString();
    }

    private static String b(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b10 : bArr) {
            stringBuffer.append(a(b10));
        }
        return stringBuffer.toString();
    }

    public static String c(String str) {
        try {
            return b(MessageDigest.getInstance("MD5").digest(str.getBytes()));
        } catch (NoSuchAlgorithmException e10) {
            b4.b().e(Log.getStackTraceString(e10));
            return str;
        }
    }
}
