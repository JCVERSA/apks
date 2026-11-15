package defpackage;

import java.util.List;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.utils.Parser;

public final class gc6 extends em5 {
    public static final gc6 a = new gc6();

    public static gc6 r() {
        return a;
    }

    @Override
    public String f(String str) {
        return Parser.o("(?:(?:(?:api\\.)?media\\.ccc\\.de/public/conferences/)|(?:media\\.ccc\\.de/[bc]/))([^/?&#]*)", str);
    }

    @Override
    public boolean i(String str) {
        try {
            return f(str) != null;
        } catch (ParsingException unused) {
            return false;
        }
    }

    @Override
    public String p(String str, List list, String str2) {
        return "https://media.ccc.de/c/" + str;
    }
}
