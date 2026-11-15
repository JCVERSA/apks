package defpackage;

import java.util.Iterator;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;

public class cvc extends rp3 {
    public Document g;

    public cvc(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler);
    }

    @Override
    public String i() {
        return p().replace("https://www.youtube.com/channel/", "");
    }

    @Override
    public String k() {
        Element elementFirst = this.g.h1("feed > author > name").first();
        return elementFirst == null ? "" : elementFirst.n1();
    }

    @Override
    public String p() {
        Element elementFirst = this.g.h1("feed > author > uri").first();
        if (elementFirst != null) {
            String strN1 = elementFirst.n1();
            if (!strN1.equals("")) {
                return strN1;
            }
        }
        Element elementFirst2 = this.g.h1("feed > link[rel*=alternate]").first();
        return elementFirst2 != null ? elementFirst2.h("href") : "";
    }

    @Override
    public void q(c23 c23Var) throws ContentNotAvailableException {
        fu8 fu8VarB = c23Var.b(cxc.E(s().getId()));
        if (fu8VarB.d() == 404) {
            throw new ContentNotAvailableException("Could not get feed: 404 - not found");
        }
        this.g = vc5.a(fu8VarB.c());
    }

    @Override
    public tl5.a r() {
        Elements elementsH1 = this.g.h1("feed > entry");
        qy9 qy9Var = new qy9(n());
        Iterator<Element> it = elementsH1.iterator();
        while (it.hasNext()) {
            qy9Var.d(new evc(it.next()));
        }
        return new tl5.a(qy9Var, null);
    }
}
