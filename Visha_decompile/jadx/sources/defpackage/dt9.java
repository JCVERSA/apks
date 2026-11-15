package defpackage;

import java.io.IOException;
import java.util.List;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;

public final class dt9 extends em5 {
    public static final dt9 a = new dt9();

    public static dt9 r() {
        return a;
    }

    @Override
    public String f(String str) {
        return wt9.j().f(str);
    }

    @Override
    public boolean i(String str) {
        try {
            f(str);
            return true;
        } catch (ParsingException unused) {
            return false;
        }
    }

    @Override
    public String p(String str, List list, String str2) throws ParsingException {
        try {
            return "https://api-v2.soundcloud.com/tracks/" + str + "/comments?client_id=" + jt9.c() + "&threaded=0&filter_replies=1";
        } catch (IOException | ExtractionException unused) {
            throw new ParsingException("Could not get comments");
        }
    }
}
