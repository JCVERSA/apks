package defpackage;

import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public abstract class oe5 {
    public static final String a = System.getProperty("line.separator");
    public static String b = "KLog";
    public static boolean c = false;
    public static boolean d = false;

    public static void a(Object obj) {
        f(2, null, obj);
    }

    public static void b(Object obj) {
        f(5, null, obj);
    }

    public static String c(Object... objArr) {
        if (objArr.length <= 1) {
            Object obj = objArr[0];
            return obj == null ? "null" : obj.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\n");
        for (int i = 0; i < objArr.length; i++) {
            Object obj2 = objArr[i];
            if (obj2 == null) {
                sb.append("Param");
                sb.append("[");
                sb.append(i);
                sb.append("]");
                sb.append(" = ");
                sb.append("null");
                sb.append("\n");
            } else {
                sb.append("Param");
                sb.append("[");
                sb.append(i);
                sb.append("]");
                sb.append(" = ");
                sb.append(obj2.toString());
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    public static void d(Object obj) {
        f(3, null, obj);
    }

    public static void e(String str) {
        f(7, null, str);
    }

    public static void f(int i, String str, Object... objArr) {
        if (d) {
            String[] strArrI = i(5, str, objArr);
            String str2 = strArrI[0];
            String str3 = strArrI[1];
            String str4 = strArrI[2];
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                    fb0.a(i, str2, str4 + str3);
                    break;
                case 7:
                    ya5.a(str2, str3, str4);
                    break;
                case 8:
                    yrc.b(str2, str3, str4);
                    break;
            }
        }
    }

    public static void g(Object obj) {
        f(1, null, obj);
    }

    public static void h(Object obj) {
        f(4, null, obj);
    }

    public static String[] i(int i, String str, Object... objArr) {
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[i];
        String className = stackTraceElement.getClassName();
        String[] strArrSplit = className.split("\\.");
        if (strArrSplit.length > 0) {
            className = strArrSplit[strArrSplit.length - 1] + ".java";
        }
        if (className.contains("$")) {
            className = className.split("\\$")[0] + ".java";
        }
        String methodName = stackTraceElement.getMethodName();
        int lineNumber = stackTraceElement.getLineNumber();
        int i2 = lineNumber >= 0 ? lineNumber : 0;
        if (str == null) {
            str = className;
        }
        if (c && TextUtils.isEmpty(str)) {
            str = "KLog";
        } else if (!c) {
            str = b;
        }
        return new String[]{str, objArr == null ? "Log with null object" : c(objArr), "[ (" + className + StringUtils.PROCESS_POSTFIX_DELIMITER + i2 + ")#" + methodName + " ] "};
    }
}
