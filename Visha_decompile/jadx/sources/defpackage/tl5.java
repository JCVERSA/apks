package defpackage;

import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;

public abstract class tl5 extends mk3 {

    public static class a {
        public static final a d = new a(Collections.emptyList(), null, Collections.emptyList());
        public final List a;
        public final Page b;
        public final List c;

        public a(yz4 yz4Var, Page page) {
            this(yz4Var.f(), page, yz4Var.e());
        }

        public static a a() {
            return d;
        }

        public List b() {
            return this.c;
        }

        public List c() {
            return this.a;
        }

        public Page d() {
            return this.b;
        }

        public a(List list, Page page, List list2) {
            this.a = list;
            this.b = page;
            this.c = list2;
        }
    }

    public tl5(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler);
    }

    public abstract a r();

    public ListLinkHandler s() {
        return (ListLinkHandler) super.j();
    }

    public abstract a t(Page page);
}
