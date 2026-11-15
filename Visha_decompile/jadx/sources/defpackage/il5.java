package defpackage;

import java.util.Objects;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.utils.a;

public abstract class il5 {
    public boolean a(String str) {
        return i(str);
    }

    public LinkHandler b(String str) {
        Objects.requireNonNull(str, "ID cannot be null");
        String strG = g(str);
        return new LinkHandler(strG, strG, str);
    }

    public LinkHandler c(String str, String str2) {
        Objects.requireNonNull(str, "ID cannot be null");
        String strH = h(str, str2);
        return new LinkHandler(strH, strH, str);
    }

    public LinkHandler d(String str) {
        if (a.m(str)) {
            throw new IllegalArgumentException("The url is null or empty");
        }
        String strF = a.f(str);
        return e(strF, a.g(strF));
    }

    public LinkHandler e(String str, String str2) throws ParsingException {
        Objects.requireNonNull(str, "URL cannot be null");
        if (a(str)) {
            String strF = f(str);
            return new LinkHandler(str, h(strF, str2), strF);
        }
        throw new ParsingException("URL not accepted: " + str);
    }

    public abstract String f(String str);

    public abstract String g(String str);

    public String h(String str, String str2) {
        return g(str);
    }

    public abstract boolean i(String str);
}
