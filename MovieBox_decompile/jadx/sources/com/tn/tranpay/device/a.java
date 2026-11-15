package com.tn.tranpay.device;

import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final C0562a f40539a = new C0562a(null);

    private static final String[] f40540b = {"0", "1", "2", "3", "4", "5", PrepareException.ERROR_NO_URL, "7", PrepareException.ERROR_MANIFEST_INFO, PrepareException.ERROR_MINI_APP_CLOSE, "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", "f"};

    public static final class C0562a {
        public C0562a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(String buf) {
            Intrinsics.h(buf, "buf");
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                Intrinsics.g(messageDigest, "getInstance(\"MD5\")");
                Charset charsetForName = Charset.forName("UTF-8");
                Intrinsics.g(charsetForName, "forName(...)");
                byte[] bytes = buf.getBytes(charsetForName);
                Intrinsics.g(bytes, "getBytes(...)");
                messageDigest.update(bytes);
                String tempString = new BigInteger(1, messageDigest.digest()).toString(16);
                if (tempString.length() >= 32) {
                    Intrinsics.g(tempString, "tempString");
                    return tempString;
                }
                String str = "";
                for (int i10 = 0; i10 < 32 - tempString.length(); i10++) {
                    str = "0" + str;
                }
                return str + tempString;
            } catch (Exception e10) {
                e10.printStackTrace();
                return buf;
            }
        }

        private C0562a() {
        }
    }
}
