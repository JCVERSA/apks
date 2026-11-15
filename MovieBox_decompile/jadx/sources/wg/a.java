package wg;

import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

public final class a {

    public static final C0924a f74277a = new C0924a(null);

    private static final String[] f74278b = {"0", "1", "2", "3", "4", "5", PrepareException.ERROR_NO_URL, "7", PrepareException.ERROR_MANIFEST_INFO, PrepareException.ERROR_MINI_APP_CLOSE, "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", "f"};

    public static final class C0924a {
        public C0924a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final String b(byte[] bArr) {
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b10 : bArr) {
                stringBuffer.append(c(b10));
            }
            String string = stringBuffer.toString();
            Intrinsics.g(string, "toString(...)");
            return string;
        }

        private final String c(byte b10) {
            int i10 = b10;
            if (b10 < 0) {
                i10 = b10 + 256;
            }
            return a.f74278b[i10 / 16] + a.f74278b[i10 % 16];
        }

        public final String a(String data) {
            Intrinsics.h(data, "data");
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                byte[] bytes = data.getBytes(Charsets.UTF_8);
                Intrinsics.g(bytes, "getBytes(...)");
                byte[] bArrDigest = messageDigest.digest(bytes);
                Intrinsics.g(bArrDigest, "digest(...)");
                return b(bArrDigest);
            } catch (Exception e10) {
                e10.printStackTrace();
                return data;
            }
        }

        public final String d(String buf) {
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
                    str = '0' + str;
                }
                return str + string;
            } catch (Exception e10) {
                e10.printStackTrace();
                return buf;
            }
        }

        private C0924a() {
        }
    }
}
