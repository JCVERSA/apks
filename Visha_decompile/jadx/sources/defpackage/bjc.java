package defpackage;

import com.google.android.exoplayer2.ParserException;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.regex.Pattern;

public abstract class bjc {
    public static final Pattern a = Pattern.compile("^NOTE([ \t].*)?$");

    public static boolean a(qw7 qw7Var) {
        String line = qw7Var.readLine();
        return line != null && line.startsWith("WEBVTT");
    }

    public static float b(String str) {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    public static long c(String str) {
        String[] strArrG0 = blb.G0(str, "\\.");
        long j = 0;
        for (String str2 : blb.F0(strArrG0[0], StringUtils.PROCESS_POSTFIX_DELIMITER)) {
            j = (j * 60) + Long.parseLong(str2);
        }
        long j2 = j * 1000;
        if (strArrG0.length == 2) {
            j2 += Long.parseLong(strArrG0[1]);
        }
        return j2 * 1000;
    }

    public static void d(qw7 qw7Var) throws ParserException {
        int iE = qw7Var.e();
        if (a(qw7Var)) {
            return;
        }
        qw7Var.O(iE);
        throw ParserException.createForMalformedContainer("Expected WEBVTT. Got " + qw7Var.readLine(), null);
    }
}
