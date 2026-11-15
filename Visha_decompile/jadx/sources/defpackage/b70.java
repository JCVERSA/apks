package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Stream;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandler;
import org.schabi.newpipe.extractor.search.SearchExtractor;

public class b70 extends SearchExtractor {
    public b70(StreamingService streamingService, SearchQueryHandler searchQueryHandler) {
        super(streamingService, searchQueryHandler);
    }

    public static Stream B(Element element) {
        return element.G0("itemtype").stream();
    }

    public static Elements C(Element element) {
        return element.H0("li");
    }

    @Override
    public void q(c23 c23Var) {
    }

    @Override
    public tl5.a r() {
        return t(new Page(p()));
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00fc  */
    /* JADX WARN: Instruction removed from duplicated block: B:38:0x00fc, please report this as an issue */
    @Override
    public tl5.a t(Page page) {
        int i = -1;
        ls6 ls6Var = new ls6(n());
        Document documentA = vc5.a(f().b(page.getUrl()).c());
        Iterator<Element> it = documentA.G0("searchresult").iterator();
        while (true) {
            if (!it.hasNext()) {
                Elements elementsG0 = documentA.G0("pagelist");
                if (elementsG0.isEmpty()) {
                    return new tl5.a(ls6Var, null);
                }
                Elements elements = (Elements) elementsG0.stream().map(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return b70.C((Element) obj);
                    }
                }).findFirst().orElseGet(new Supplier() {
                    @Override
                    public final Object get() {
                        return new Elements();
                    }
                });
                for (int i2 = 0; i2 < elements.size(); i2++) {
                    if (!elements.get(i2).H0(TtmlNode.TAG_SPAN).isEmpty()) {
                        i = i2 + 1;
                        return new tl5.a(ls6Var, new Page(i < elements.size() ? page.getUrl().substring(0, page.getUrl().length() - 1) + (i + 1) : null));
                    }
                }
                if (i < elements.size()) {
                }
                return new tl5.a(ls6Var, new Page(i < elements.size() ? page.getUrl().substring(0, page.getUrl().length() - 1) + (i + 1) : null));
            }
            Element next = it.next();
            String str = (String) next.G0("result-info").stream().flatMap(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return b70.B((Element) obj);
                }
            }).map(new u60()).findFirst().orElse("");
            str.hashCode();
            switch (str) {
                case "ALBUM":
                    ls6Var.d(new o60(next));
                    break;
                case "TRACK":
                    ls6Var.d(new c70(next, null));
                    break;
                case "ARTIST":
                    ls6Var.d(new q50(next));
                    break;
            }
        }
    }

    @Override
    public List v() {
        return Collections.emptyList();
    }

    @Override
    public String x() {
        return "";
    }

    @Override
    public boolean y() {
        return false;
    }
}
