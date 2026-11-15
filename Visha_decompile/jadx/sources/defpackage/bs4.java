package defpackage;

import java.io.Writer;
import java.util.Map;

public class bs4 implements pga {
    public static final char[] b = "&lt;".toCharArray();
    public static final char[] c = "&gt;".toCharArray();
    public static final char[] d = "&amp;".toCharArray();
    public static final char[] e = "&quot;".toCharArray();

    @Override
    public Writer h(Writer writer, Map map) {
        return new as4(this, writer);
    }
}
