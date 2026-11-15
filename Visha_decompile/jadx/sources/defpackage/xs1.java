package defpackage;

import java.nio.charset.Charset;
import java.util.regex.Pattern;

public abstract class xs1 {
    public static final Pattern a = Pattern.compile("(?i)\\bcharset=\\s*(?:[\"'])?([^\\s,;\"']*)");
    public static final Charset b;
    public static final String c;
    public static final char[] d;

    static {
        Charset charsetForName = Charset.forName("UTF-8");
        b = charsetForName;
        c = charsetForName.name();
        d = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
    }
}
