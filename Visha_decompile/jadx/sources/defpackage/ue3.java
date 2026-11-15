package defpackage;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;

public abstract class ue3 {
    public static void a(Throwable th, Throwable th2) throws IllegalAccessException, InvocationTargetException {
        y45.j(th, "<this>");
        y45.j(th2, "exception");
        if (th != th2) {
            z18.a.a(th, th2);
        }
    }

    public static String b(Throwable th) {
        y45.j(th, "<this>");
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.flush();
        String string = stringWriter.toString();
        y45.i(string, "toString(...)");
        return string;
    }
}
