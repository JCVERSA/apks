package defpackage;

import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.utils.Parser;

public final class md6 extends il5 {
    public static final md6 a = new md6();

    public static md6 j() {
        return a;
    }

    @Override
    public String f(String str) {
        String strO;
        try {
            strO = Parser.o("streaming\\.media\\.ccc\\.de\\/(\\w+\\/\\w+)", str);
        } catch (Parser.RegexException unused) {
            strO = null;
        }
        return strO == null ? Parser.o("(?:(?:(?:api\\.)?media\\.ccc\\.de/public/events/)|(?:media\\.ccc\\.de/v/))([^/?&#]*)", str) : strO;
    }

    @Override
    public String g(String str) {
        if (wc6.f(str)) {
            return "https://streaming.media.ccc.de/" + str;
        }
        return "https://media.ccc.de/v/" + str;
    }

    @Override
    public boolean i(String str) {
        try {
            return f(str) != null;
        } catch (ParsingException unused) {
            return false;
        }
    }
}
