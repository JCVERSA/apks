package defpackage;

import java.util.List;
import org.schabi.newpipe.extractor.exceptions.FoundAdException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;

public final class quc extends em5 {
    public static final quc a = new quc();

    public static quc r() {
        return a;
    }

    @Override
    public String f(String str) {
        return dzc.m().f(str);
    }

    @Override
    public String g(String str) {
        return "https://www.youtube.com/watch?v=" + str;
    }

    @Override
    public boolean i(String str) throws FoundAdException {
        try {
            f(str);
            return true;
        } catch (FoundAdException e) {
            throw e;
        } catch (ParsingException unused) {
            return false;
        }
    }

    @Override
    public String p(String str, List list, String str2) {
        return g(str);
    }
}
