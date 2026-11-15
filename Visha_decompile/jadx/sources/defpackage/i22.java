package defpackage;

import android.text.TextUtils;
import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.UnknownHostException;

public final class i22 implements hv4 {
    public final qp5 a;

    public i22(qp5 qp5Var) {
        this.a = qp5Var;
    }

    @Override
    public void a(String str, int i, String str2) {
        if (d(i)) {
            return;
        }
        if (str2 == null) {
            str2 = "";
        }
        e(str, i, str2);
    }

    @Override
    public void b(String str, int i, String str2, Throwable th) {
        String str3;
        if (d(i)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        if (str2 == null || str2.isEmpty()) {
            str3 = "";
        } else {
            str3 = str2 + System.lineSeparator();
        }
        sb.append(str3);
        sb.append(c(th));
        e(str, i, sb.toString());
    }

    public final String c(Throwable th) {
        if (th == null) {
            return "";
        }
        for (Throwable cause = th; cause != null; cause = cause.getCause()) {
            if (cause instanceof UnknownHostException) {
                return "";
            }
        }
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.flush();
        return stringWriter.toString();
    }

    public final boolean d(int i) {
        qp5 qp5Var = this.a;
        return !qp5Var.a || i < qp5Var.b;
    }

    public final void e(String str, int i, String str2) {
        String str3;
        if (TextUtils.isEmpty(str)) {
            str3 = this.a.c;
        } else {
            str3 = this.a.c + "_" + str;
        }
        Log.println(i, str3, str2);
    }
}
