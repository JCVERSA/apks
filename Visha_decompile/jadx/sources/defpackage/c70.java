package defpackage;

import java.util.List;
import org.jsoup.nodes.Element;

public class c70 extends l70 {
    public final Element b;
    public final Element c;

    public c70(Element element, String str) {
        super(str);
        this.c = element;
        this.b = element.G0("result-info").first();
    }

    @Override
    public String b() {
        String[] strArrSplit = this.b.G0("subhead").text().split("by ");
        return strArrSplit.length > 1 ? strArrSplit[1] : strArrSplit[0];
    }

    @Override
    public long getDuration() {
        return -1L;
    }

    @Override
    public String getName() {
        return this.b.G0("heading").text();
    }

    @Override
    public String getUrl() {
        return this.b.G0("itemurl").text();
    }

    @Override
    public List j() {
        return j60.j(this.c);
    }
}
