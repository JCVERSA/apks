package defpackage;

import java.util.List;
import org.jsoup.nodes.Element;

public class q50 implements zt0 {
    public final Element a;
    public final Element b;

    public q50(Element element) {
        this.b = element;
        this.a = element.G0("result-info").first();
    }

    @Override
    public long d() {
        return -1L;
    }

    @Override
    public String getDescription() {
        return this.a.G0("subhead").text();
    }

    @Override
    public String getName() {
        return this.a.G0("heading").text();
    }

    @Override
    public String getUrl() {
        return this.a.G0("itemurl").text();
    }

    @Override
    public List j() {
        return j60.j(this.b);
    }

    @Override
    public boolean n() {
        return false;
    }

    @Override
    public long z() {
        return -1L;
    }
}
