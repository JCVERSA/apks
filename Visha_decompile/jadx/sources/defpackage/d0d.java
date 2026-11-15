package defpackage;

import com.alibaba.android.arouter.utils.Consts;
import freemarker.core.BugException;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public abstract class d0d {
    public static String a(String str) {
        return n0a.O(n0a.O(n0a.O(str, "-", "\\-"), Consts.DOT, "\\."), StringUtils.PROCESS_POSTFIX_DELIMITER, "\\:");
    }

    public static int b(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '_') {
                return 11;
            }
            if (c(cCharAt)) {
                return 12;
            }
        }
        return 10;
    }

    public static boolean c(char c) {
        return c >= 'A' && c <= 'Z';
    }

    public static String d(String str) {
        return a(str);
    }

    public static String e(String str) {
        return a(str);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001f  */
    /* JADX WARN: Code duplicated, block: B:14:0x0023  */
    /* JADX WARN: Code duplicated, block: B:40:0x0037 A[SYNTHETIC] */
    public static String f(String str) {
        char c = 0;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (i == 0) {
                if (n0a.w(cCharAt)) {
                    continue;
                } else if (cCharAt == '@') {
                    if ((c == 0 && c != '\\') || (cCharAt != '-' && cCharAt != '.' && cCharAt != ':')) {
                        c = '\"';
                        break;
                    }
                } else {
                    continue;
                }
            } else if (!n0a.v(cCharAt)) {
                if (cCharAt == '@') {
                    c = c == 0 ? '\\' : '\\';
                    c = '\"';
                    break;
                }
                continue;
            } else {
                continue;
            }
        }
        if (c == 0) {
            return str;
        }
        if (c == '\"') {
            return n0a.t(str);
        }
        if (c == '\\') {
            return a(str);
        }
        throw new BugException();
    }
}
