package rf;

import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    public static final b f71178a = new b();

    private static String f71179b;

    private static String f71180c;

    private static int f71181d;

    private static boolean f71182e;

    private b() {
    }

    private final String a(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("================");
        stringBuffer.append(f71180c);
        stringBuffer.append("(");
        stringBuffer.append(f71179b);
        stringBuffer.append(":");
        stringBuffer.append(f71181d);
        stringBuffer.append(")================:");
        stringBuffer.append(str);
        return stringBuffer.toString();
    }

    private final void f(StackTraceElement[] stackTraceElementArr) {
        StackTraceElement stackTraceElement;
        StackTraceElement stackTraceElement2;
        f71179b = (stackTraceElementArr == null || (stackTraceElement = stackTraceElementArr[1]) == null) ? null : stackTraceElement.getFileName();
        f71180c = (stackTraceElementArr == null || (stackTraceElement2 = stackTraceElementArr[1]) == null) ? null : stackTraceElement2.getMethodName();
        StackTraceElement stackTraceElement3 = stackTraceElementArr != null ? stackTraceElementArr[1] : null;
        Intrinsics.e(stackTraceElement3);
        f71181d = stackTraceElement3.getLineNumber();
    }

    public final void b(String str) {
        if (f71182e) {
            f(new Throwable().getStackTrace());
            Intrinsics.e(a(str));
        }
    }

    public final void c(String str) {
        f(new Throwable().getStackTrace());
        String str2 = f71179b;
        String strA = a(str);
        Intrinsics.e(strA);
        Log.e(str2, strA);
    }

    public final void d(String tag, String str) {
        Intrinsics.h(tag, "tag");
        Log.e(tag, String.valueOf(str));
    }

    public final void e(Throwable th2) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        if (th2 != null) {
            try {
                th2.printStackTrace(printWriter);
                Unit unit = Unit.f64096a;
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    CloseableKt.a(printWriter, th3);
                    throw th4;
                }
            }
        }
        CloseableKt.a(printWriter, null);
        String string = stringWriter.toString();
        Intrinsics.g(string, "sw.toString()");
        c(string);
    }

    public final void g(String str) {
        if (f71182e) {
            f(new Throwable().getStackTrace());
            Intrinsics.e(a(str));
        }
    }

    public final void h(boolean z10) {
        f71182e = z10;
    }

    public final void i(String str) {
        if (f71182e) {
            f(new Throwable().getStackTrace());
            String str2 = f71179b;
            String strA = a(str);
            Intrinsics.e(strA);
            Log.w(str2, strA);
        }
    }
}
