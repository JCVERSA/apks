package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.utils.a;

public abstract class em5 extends il5 {
    @Override
    public String g(String str) {
        return p(str, new ArrayList(0), "");
    }

    @Override
    public String h(String str, String str2) {
        return q(str, new ArrayList(0), "", str2);
    }

    public ListLinkHandler j(String str) {
        return new ListLinkHandler(super.b(str));
    }

    @Override
    public ListLinkHandler c(String str, String str2) {
        return new ListLinkHandler(super.c(str, str2));
    }

    public ListLinkHandler l(String str, List list, String str2) {
        String strP = p(str, list, str2);
        return new ListLinkHandler(strP, strP, str, list, str2);
    }

    public ListLinkHandler m(String str, List list, String str2, String str3) {
        String strQ = q(str, list, str2, str3);
        return new ListLinkHandler(strQ, strQ, str, list, str2);
    }

    @Override
    public ListLinkHandler d(String str) {
        String strF = a.f(str);
        return e(strF, a.g(strF));
    }

    @Override
    public ListLinkHandler e(String str, String str2) {
        Objects.requireNonNull(str, "URL may not be null");
        return new ListLinkHandler(super.e(str, str2));
    }

    public abstract String p(String str, List list, String str2);

    public String q(String str, List list, String str2, String str3) {
        return p(str, list, str2);
    }
}
