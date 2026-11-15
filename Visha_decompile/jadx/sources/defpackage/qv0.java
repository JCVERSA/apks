package defpackage;

import java.nio.charset.Charset;
import org.apache.commons.lang3.CharEncoding;

public final class qv0 {
    public static final qv0 a = new qv0();
    public static final Charset b;
    public static final Charset c;
    public static final Charset d;
    public static final Charset e;
    public static final Charset f;
    public static final Charset g;
    public static volatile Charset h;
    public static volatile Charset i;

    static {
        Charset charsetForName = Charset.forName("UTF-8");
        y45.i(charsetForName, "forName(...)");
        b = charsetForName;
        Charset charsetForName2 = Charset.forName(CharEncoding.UTF_16);
        y45.i(charsetForName2, "forName(...)");
        c = charsetForName2;
        Charset charsetForName3 = Charset.forName(CharEncoding.UTF_16BE);
        y45.i(charsetForName3, "forName(...)");
        d = charsetForName3;
        Charset charsetForName4 = Charset.forName(CharEncoding.UTF_16LE);
        y45.i(charsetForName4, "forName(...)");
        e = charsetForName4;
        Charset charsetForName5 = Charset.forName(CharEncoding.US_ASCII);
        y45.i(charsetForName5, "forName(...)");
        f = charsetForName5;
        Charset charsetForName6 = Charset.forName(CharEncoding.ISO_8859_1);
        y45.i(charsetForName6, "forName(...)");
        g = charsetForName6;
    }

    public final Charset a() {
        Charset charset = i;
        if (charset != null) {
            return charset;
        }
        Charset charsetForName = Charset.forName("UTF-32BE");
        y45.i(charsetForName, "forName(...)");
        i = charsetForName;
        return charsetForName;
    }

    public final Charset b() {
        Charset charset = h;
        if (charset != null) {
            return charset;
        }
        Charset charsetForName = Charset.forName("UTF-32LE");
        y45.i(charsetForName, "forName(...)");
        h = charsetForName;
        return charsetForName;
    }
}
