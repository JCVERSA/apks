package defpackage;

import java.io.UnsupportedEncodingException;
import org.slf4j.Marker;

public abstract class tud {
    public static void a(String str) {
        char cCharAt = Marker.ANY_NON_NULL_MARKER.charAt(0);
        char cCharAt2 = "/".charAt(0);
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i = 0;
        while (i < length) {
            int i2 = i - 1;
            char c = i2 >= 0 ? charArray[i2] : (char) 0;
            int i3 = i + 1;
            char c2 = i3 < length ? charArray[i3] : (char) 0;
            if (charArray[i] == cCharAt && ((c != cCharAt2 && c != 0) || (c2 != cCharAt2 && c2 != 0))) {
                throw new IllegalArgumentException(String.format("Invalid usage of single-level wildcard in topic string '%s'!", str));
            }
            i = i3;
        }
    }

    public static void b(String str, boolean z) {
        try {
            int length = str.getBytes("UTF-8").length;
            if (length <= 0 || length > 65535) {
                throw new IllegalArgumentException(String.format("Invalid topic length, should be in range[%d, %d]!", 1, 65535));
            }
            if (!z) {
                if (i6d.b(str, "#+")) {
                    throw new IllegalArgumentException("The topic name MUST NOT contain any wildcard characters (#+)");
                }
            } else {
                if (i6d.d(str, new String[]{"#", Marker.ANY_NON_NULL_MARKER})) {
                    return;
                }
                if (i6d.f(str, "#") > 1 || (str.contains("#") && !str.endsWith("/#"))) {
                    throw new IllegalArgumentException("Invalid usage of multi-level wildcard in topic string: ".concat(str));
                }
                a(str);
            }
        } catch (UnsupportedEncodingException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }
}
