package sn;

import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    public static final a f72353a = new a(null);

    private static final String[] f72354b = {"0", "1", "2", "3", "4", "5", PrepareException.ERROR_NO_URL, "7", PrepareException.ERROR_MANIFEST_INFO, PrepareException.ERROR_MINI_APP_CLOSE, "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", "f"};

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(String buf) {
            Intrinsics.h(buf, "buf");
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                Intrinsics.g(messageDigest, "getInstance(...)");
                Charset charsetForName = Charset.forName("UTF-8");
                Intrinsics.g(charsetForName, "forName(...)");
                byte[] bytes = buf.getBytes(charsetForName);
                Intrinsics.g(bytes, "getBytes(...)");
                messageDigest.update(bytes);
                String string = new BigInteger(1, messageDigest.digest()).toString(16);
                if (string.length() >= 32) {
                    Intrinsics.e(string);
                    return string;
                }
                String str = "";
                for (int i10 = 0; i10 < 32 - string.length(); i10++) {
                    str = "0" + str;
                }
                return str + string;
            } catch (Exception e10) {
                e10.printStackTrace();
                return buf;
            }
        }

        private a() {
        }
    }
}
