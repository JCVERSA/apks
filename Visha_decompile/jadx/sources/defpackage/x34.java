package defpackage;

import org.jsoup.nodes.Element;
import org.jsoup.nodes.b;
import org.jsoup.nodes.g;
import org.jsoup.select.Elements;

public class x34 extends Element {
    public final Elements l;

    public x34(tda tdaVar, String str, b bVar) {
        super(tdaVar, str, bVar);
        this.l = new Elements();
    }

    @Override
    public void R(g gVar) {
        super.R(gVar);
        this.l.remove(gVar);
    }

    public x34 u1(Element element) {
        this.l.add(element);
        return this;
    }

    @Override
    public x34 x0() {
        return (x34) super.x0();
    }
}
