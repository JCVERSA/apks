package defpackage;

import java.io.Writer;
import java.util.Map;

public class xrc implements pga {
    public static final char[] b = "&lt;".toCharArray();
    public static final char[] c = "&gt;".toCharArray();
    public static final char[] d = "&amp;".toCharArray();
    public static final char[] e = "&quot;".toCharArray();
    public static final char[] f = "&apos;".toCharArray();

    @Override
    public Writer h(Writer writer, Map map) {
        return new wrc(this, writer);
    }
}
