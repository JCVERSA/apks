package w1;

import android.text.TextUtils;
import androidx.media3.common.util.u;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class i {

    private static final Pattern f74118a = Pattern.compile("bytes (\\d+)-(\\d+)/(?:\\d+|\\*)");

    private static final Pattern f74119b = Pattern.compile("bytes (?:(?:\\d+-\\d+)|\\*)/(\\d+)");

    public static String a(long j10, long j11) {
        if (j10 == 0 && j11 == -1) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("bytes=");
        sb2.append(j10);
        sb2.append("-");
        if (j11 != -1) {
            sb2.append((j10 + j11) - 1);
        }
        return sb2.toString();
    }

    public static long b(String str, String str2) {
        long j10;
        if (TextUtils.isEmpty(str)) {
            j10 = -1;
        } else {
            try {
                j10 = Long.parseLong(str);
            } catch (NumberFormatException unused) {
                u.c("HttpUtil", "Unexpected Content-Length [" + str + "]");
                j10 = -1;
            }
        }
        if (TextUtils.isEmpty(str2)) {
            return j10;
        }
        Matcher matcher = f74118a.matcher(str2);
        if (!matcher.matches()) {
            return j10;
        }
        try {
            long j11 = (Long.parseLong((String) androidx.media3.common.util.a.e(matcher.group(2))) - Long.parseLong((String) androidx.media3.common.util.a.e(matcher.group(1)))) + 1;
            if (j10 < 0) {
                return j11;
            }
            if (j10 == j11) {
                return j10;
            }
            u.h("HttpUtil", "Inconsistent headers [" + str + "] [" + str2 + "]");
            return Math.max(j10, j11);
        } catch (NumberFormatException unused2) {
            u.c("HttpUtil", "Unexpected Content-Range [" + str2 + "]");
            return j10;
        }
    }

    public static long c(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1L;
        }
        Matcher matcher = f74119b.matcher(str);
        if (matcher.matches()) {
            return Long.parseLong((String) androidx.media3.common.util.a.e(matcher.group(1)));
        }
        return -1L;
    }
}
